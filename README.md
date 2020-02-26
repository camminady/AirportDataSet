# AirportDataSet
Thomas Camminady, 2016/12/21
camminady@mathcces.rwth.aachen.de


## Content 
This README explains the content of 
FlightData.mat. FlightData.mat contains six
different variables. It is a summary of 
"On-Flight Market Passengers Enplaned"
arriving or leaving the US in the year 2010.
Note, that the data is arranged in such a way,
that the entries in Names are sorted 
according to the number of passengers 
leaving an Airport, meaning that sum(Traffic) 
is decreasing.


## Names
Names is a cell array of three letter airport 
identifiers, e.g. 'ATL' for Hartsfield-
Jackson Atlanta International Airport.

## Latitude
Latitude is a double array that contains the 
latitude of the airports listed in Names.

## Longitude
Longitude is a double array that contains 
the longitude of the airports listed in 
Names.

## Traffic
Traffic is a matrix that contains in row i,
column j the number of "On-Flight 
Market Passengers Enplaned" from 
airport Names(i) to airport Names(j).

## Distance
Distance is a matrix that contains in row i,
column j the degree (in deg) of the 
angle that is spanned by the shortest
connection of the airport Names(i) 
and Names(j). The distance in meters
is then given by the expression 
2 pi R Distance(i,j) / 360, where R 
is the radius of the earth.

## FullAirportDetails
FullAirportDetails is a cell matrix that 
contains detailed information about the
airports. The order is the same as in 
Names. The information provided are:
"Name", "City", "Country", "IATA/FAA", 
"ICAO", "Latitude", "Longitude", 
"Altitude", "Timezone", "DST".


## Sources:
For flight data:
https://toreopsahl.com/datasets/#usairports
http://www.transtats.bts.gov

For airport data:
    http://openflights.org/data.html
  
## License:
The AirportDataSet is made available under the Open Database License. Any rights in individual contents of the database are licensed under the Database Contents License. In short, these mean that you are welcome to use the data as you wish, if and only if you both acknowledge the source and and license any derived works made available to the public with a free license as well.

