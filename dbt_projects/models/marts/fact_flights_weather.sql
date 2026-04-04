SELECT
    f.*,
    w.event_type,
    w.severity,
    w.precipitation_in

FROM {{ ref('fact_flights') }} f
LEFT JOIN {{ ref('stg_weather') }} w
  ON f.flight_date = w.weather_date
 AND LOWER(f.origin_state) = LOWER(w.state)
 AND LOWER(f.origin_city) LIKE CONCAT('%', LOWER(w.city), '%')