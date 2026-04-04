from google.cloud import bigquery
import pandas as pd

# BigQuery client
client = bigquery.Client()

# # parquet oku
# df = pd.read_parquet("data/processed/flights_2022.parquet")


# table_id = "zoomcampcapstoneproject.flight_data.flights_2022"

# # load job
# job = client.load_table_from_dataframe(df, table_id)

# job.result()

# Weather yükleme 
df_weather = pd.read_parquet("../data/processed/WeatherEvents_Jan2016-Dec2022.parquet")

table_id_weather = "zoomcampcapstoneproject.flight_data.weather_raw"

job = client.load_table_from_dataframe(df_weather, table_id_weather)
job.result()

print("Weather loaded")