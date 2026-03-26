SELECT
    DATE(FlightDate) AS flight_date,
    Airline AS airline,
    Origin AS origin_airport,
    Dest AS destination_airport,

    OriginCityName AS origin_city,
    DestCityName AS destination_city,
    OriginState AS origin_state,
    DestState AS destination_state,

    DepDelayMinutes AS departure_delay_minutes,
    ArrDelayMinutes AS arrival_delay_minutes,

    DepTime AS departure_time,
    ArrTime AS arrival_time,

    AirTime AS air_time,
    TaxiOut AS taxi_out,
    TaxiIn AS taxi_in,

    Cancelled AS cancelled,
    Diverted AS diverted,

    Distance AS distance

FROM `zoomcampcapstoneproject.flight_data.flights_2022`