# Taxi Sharing for existing taxi apps

**A paid pilot proposal by Pol Barreiro Font, independent application developer, Osaka, Japan.**

A passenger who finds a private taxi too expensive could select **Shared taxi** next to the app’s existing ride options. Before booking, they would see their own fare, a pickup window and the latest promised arrival. Other passengers could board or leave along the way. I offer to design the matching engine, build the prototype and work directly with an operator’s product team on integration.

## One taxi, several overlapping journeys

Suppose Ana requests a ride from the station to the hospital. Ben, travelling from the library to the market, wants to join partway. The dispatcher tests the additional pickup and drop-off against available seats and the arrival windows already promised. If the market stop would make Ana late, it tries a different stop order or vehicle. At booking the app explains what happens if no match is found and offers the passenger a choice before changing the fare or service.

## A shared fare pool across the city

Each passenger receives a quote based on the expected costs of **all pooled trips in the service area**, grouped by time of day and season. A passenger’s quote does not depend on whether another passenger happens to join their particular cab. This lets the operator offer a predictable price even when individual rides have different occupancy.

One pilot calculation is to divide the projected total cost of serving a time band (including driver compensation, pickups and empty running) by projected total passenger-kilometres, then multiply that rate by each rider’s direct trip distance. For illustration, €12,000 of service cost over 8,000 direct passenger-km gives €1.50 per passenger-km. A 4 km trip contributes €6 toward cost before any applicable fees, taxes or margin. A detour for someone else would not raise the rider’s quote. Local tariff rules and operator agreements determine the fare options available for a live pilot.

Start with explicit assumptions about demand, occupancy, travel times and driver pay. Use citywide averages where samples are small. Compare actual costs and passenger-kilometres with forecasts and revise future quotes, distinguishing daytime, nighttime and seasonal patterns as data accumulates. During low demand, the operator must budget for unmatched seats or limit where pooling is offered.

## Dispatch and pilot evaluation

Match incoming requests against active and available vehicles across the service area. Recompute feasible pickup and drop-off sequences when a request arrives or a trip changes. Respect seat capacity, pickup windows and accepted detour limits. Among feasible options, prefer routes that add fewer vehicle minutes. Over time, observed flows between neighbourhoods can improve travel-time estimates and vehicle positioning.

I propose starting with one district and comparing simulated dispatch against ordinary bookings in the same hours. A limited live pilot could then measure passenger savings, driver earnings per online hour after costs, operator margin, wait and detour times, and the share of bookings left unmatched. To test the traffic benefit, measure total vehicle-kilometres including empty travel, and ask riders what transport they would otherwise have used.

**Commercial enquiries:** I am available to scope a paid simulation, integration or pilot with your product and dispatch teams.

© 2026 Pol Barreiro Font. This document is licensed under [Creative Commons Attribution–NonCommercial–NoDerivatives 4.0 International](https://creativecommons.org/licenses/by-nc-nd/4.0/). For separate permission to use or adapt this document commercially, contact the author.
