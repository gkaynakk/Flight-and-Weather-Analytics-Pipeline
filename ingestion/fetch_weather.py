import pandas as pd
from pathlib import Path
import re

BASE_DIR = Path(__file__).resolve().parent.parent
raw_path = BASE_DIR / "data" / "raw" / "WeatherEvents_Jan2016-Dec2022.csv"
processed_path = BASE_DIR / "data" / "processed" / "WeatherEvents_Jan2016-Dec2022.parquet"

df = pd.read_csv(raw_path)

def clean_column_name(col: str) -> str:
    col = col.strip()
    col = col.lower()
    col = col.replace("(utc)", "_utc")
    col = col.replace("%", "pct")
    col = re.sub(r"[^a-z0-9_]", "_", col)
    col = re.sub(r"_+", "_", col)
    col = col.strip("_")
    return col

df.columns = [clean_column_name(c) for c in df.columns]

processed_path.parent.mkdir(parents=True, exist_ok=True)
df.to_parquet(processed_path, index=False)

print("Weather data processed")
print(df.columns.tolist())