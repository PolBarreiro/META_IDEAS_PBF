[CmdletBinding()]
param(
    [ValidateSet("Audit", "Install", "Verify")]
    [string]$Mode = "Audit",
    [string]$InstallRoot = "$env:LOCALAPPDATA\PolJarvis"
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

$Upstream = "https://github.com/FatihMakes/Mark-LV.git"
$PinnedCommit = "c3e795af71bff38bb406c62a2e7a63869cdc8eb2"
$AppDir = Join-Path $InstallRoot "Mark-LV"
$VenvPython = Join-Path $AppDir ".venv\Scripts\python.exe"

function Invoke-Checked {
    param([string]$File, [string[]]$Arguments)
    & $File @Arguments
    if ($LASTEXITCODE -ne 0) {
        throw "Command failed ($LASTEXITCODE): $File $($Arguments -join ' ')"
    }
}

function Find-SupportedPython {
    $launcher = Get-Command py -ErrorAction SilentlyContinue
    if (-not $launcher) {
        throw "Python launcher 'py' not found. Install Python 3.11, 3.12, or 3.13 first."
    }

    foreach ($version in @("3.13", "3.12", "3.11")) {
        & py "-$version" -c "import sys; print(sys.version)" 2>$null
        if ($LASTEXITCODE -eq 0) {
            return $version
        }
    }
    throw "No supported Python found. Mark LV requires Python 3.11-3.13."
}

function Write-Audit {
    $os = Get-CimInstance Win32_OperatingSystem
    $git = Get-Command git -ErrorAction SilentlyContinue
    $pythonVersion = $null
    try { $pythonVersion = Find-SupportedPython } catch { }

    $result = [ordered]@{
        Timestamp = (Get-Date).ToString("o")
        Windows = $os.Caption
        WindowsBuild = $os.BuildNumber
        Git = if ($git) { (& git --version) } else { $null }
        Python = $pythonVersion
        InstallRoot = $InstallRoot
        MarkLVPresent = Test-Path (Join-Path $AppDir "main.py")
        VenvPresent = Test-Path $VenvPython
        PinnedCommit = $PinnedCommit
    }
    $result | ConvertTo-Json
    if (-not $git -or -not $pythonVersion) { exit 2 }
}

if ($Mode -eq "Audit") {
    Write-Audit
    exit 0
}

if ($Mode -eq "Install") {
    $pythonVersion = Find-SupportedPython
    if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
        throw "Git not found. Install Git for Windows first."
    }

    New-Item -ItemType Directory -Force -Path $InstallRoot | Out-Null

    if (-not (Test-Path $AppDir)) {
        Invoke-Checked "git" @("clone", $Upstream, $AppDir)
    }

    Push-Location $AppDir
    try {
        Invoke-Checked "git" @("fetch", "--tags", "origin")
        Invoke-Checked "git" @("checkout", "--detach", $PinnedCommit)

        if (-not (Test-Path $VenvPython)) {
            Invoke-Checked "py" @("-$pythonVersion", "-m", "venv", ".venv")
        }

        Invoke-Checked $VenvPython @("-m", "pip", "install", "--upgrade", "pip")
        Invoke-Checked $VenvPython @("setup.py")
        Invoke-Checked $VenvPython @("-m", "pip", "check")
        Invoke-Checked $VenvPython @("-m", "compileall", "-q", ".")

        [ordered]@{
            InstalledAt = (Get-Date).ToString("o")
            Upstream = $Upstream
            Commit = $PinnedCommit
            Python = (& $VenvPython --version)
            Status = "Prepared; interactive launch and API-key onboarding remain."
        } | ConvertTo-Json | Set-Content -Encoding UTF8 (Join-Path $InstallRoot "install-state.json")
    }
    finally {
        Pop-Location
    }

    Write-Host "Prepared successfully. Run Verify next; do not call it operational until the UI launches and a real task succeeds."
}

if ($Mode -eq "Verify") {
    if (-not (Test-Path $VenvPython)) { throw "Virtual environment not found at $VenvPython" }
    Push-Location $AppDir
    try {
        $head = (& git rev-parse HEAD).Trim()
        if ($head -ne $PinnedCommit) {
            throw "Unexpected Mark LV commit: $head (expected $PinnedCommit)"
        }
        Invoke-Checked $VenvPython @("-m", "pip", "check")
        Invoke-Checked $VenvPython @("-m", "compileall", "-q", ".")
        if (-not (Test-Path "main.py")) { throw "main.py is missing." }
    }
    finally {
        Pop-Location
    }
    Write-Host "Static verification passed. Functional verification still requires launching .venv\Scripts\python.exe main.py on Pol's PC."
}
