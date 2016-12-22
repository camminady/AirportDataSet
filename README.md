Thomas Camminady, 2016/12/21
camminady@mathcces.rwth.aachen.de

===========================

This README explains the content of 
FlightData.mat. FlightData.mat contains five 
different variables. It is a summary of 
"On-Flight Market Passengers Enplaned"
arriving or leaving the US in the year 2010.

    Names is a cell array of three letter airport 
        identifiers, e.g. 'ATL' for Hartsfield-
        Jackson Atlanta International Airport.
    Latitude is a double array that contains the 
        latitude of the airports listed in Names.
    Longitude is a double array that contains 
        the longitude of the airports listed in 
        Names.
    Traffic is a matrix that contains in row i,
        column j the number of "On-Flight 
        Market Passengers Enplaned" from 
        airport Names(i) to airport Names(j).
    FullAirportDetails is a cell matrix that 
        contains detailed information about the
        airports. The order is the same as in 
        Names. The information provided are:
        "Name", "City", "Country", "IATA/FAA", 
        "ICAO", "Latitude", "Longitude", 
        "Altitude", "Timezone", "DST".

Note, that the data is arranged in such a way,
that the entries in Names are sorted 
according to the number of passengers 
leaving an Airport, meaning that sum(Traffic) 
is decreasing.

===========================

Sources:
For flight data:
    https://toreopsahl.com/datasets/#usairports
    http://www.transtats.bts.gov
For Airport data:
    http://openflights.org/data.html
  