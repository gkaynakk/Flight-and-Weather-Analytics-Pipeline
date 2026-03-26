from google.cloud import bigquery
import pandas as pd

# BigQuery client
client = bigquery.Client()

# parquet oku
df = pd.read_parquet("data/processed/flights_2022.parquet")


table_id = "zoomcampcapstoneproject.flight_data.flights_2022"

# load job
job = client.load_table_from_dataframe(df, table_id)

job.result()

print("Data loaded to BigQuery successfully.")