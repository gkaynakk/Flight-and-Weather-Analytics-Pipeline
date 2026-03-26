{{ config(
    materialized='table',
    partition_by={
      "field": "flight_date",
      "data_type": "date"
    },
    cluster_by=["origin_airport", "destination_airport"]
) }}

SELECT
    flight_date,
    origin_airport,
    destination_airport,
    origin_city,
    destination_city,
    origin_state,
    destination_state,

    COUNT(*) AS total_flights,
    AVG(departure_delay_minutes) AS avg_departure_delay_minutes,
    AVG(arrival_delay_minutes) AS avg_arrival_delay_minutes,
    SUM(CASE WHEN cancelled THEN 1 ELSE 0 END) AS total_cancelled_flights,
    SUM(CASE WHEN diverted THEN 1 ELSE 0 END) AS total_diverted_flights,
    AVG(distance) AS avg_distance,
    AVG(air_time) AS avg_air_time,
    AVG(taxi_out) AS avg_taxi_out,
    AVG(taxi_in) AS avg_taxi_in

FROM {{ ref('stg_flights') }}
GROUP BY
    flight_date,
    origin_airport,
    destination_airport,
    origin_city,
    destination_city,
    origin_state,
    destination_state