SELECT
    DATE(starttime_utc) AS weather_date,
    airportcode AS airport_code,
    type AS event_type,
    severity,
    precipitation_in,
    city,
    state
FROM `zoomcampcapstoneproject.flight_data.weather_raw`