# Flight & Weather Analytics Pipeline
## 📌 Problem Description

Air travel is highly influenced by external factors such as weather conditions, which can significantly impact flight delays, cancellations, and ticket pricing. However, these relationships are often not clearly visible to travelers or analysts due to fragmented data sources and lack of integrated analysis.

This project aims to build an end-to-end data pipeline that combines flight data with weather data to analyze how weather conditions affect flight performance and pricing trends. By integrating these datasets, the project provides insights into patterns such as delays related to weather conditions, route-based trends, and temporal variations in flight behavior.

The pipeline ingests raw data from external sources, processes and transforms it using modern data engineering tools, and stores it in a cloud-based data warehouse for analytical querying. The final output is an interactive dashboard that enables users to explore key metrics such as average delays, price trends, and route performance.

This project demonstrates how data engineering workflows can be used to transform raw, unstructured data into actionable insights for travel analysis.

## 🧱 Tech Stack

- **Cloud**: Google Cloud Platform (GCP)
- **Infrastructure as Code (IaC)**: Terraform 
- **Workflow orchestration**: GitHub Actions
- **Data Warehouse**: BigQuery
- **Batch processing**: Python (Pandas, PyArrow)
- **Data transformation**: dbt
- **Visualization / Dashboard**: Looker Studio
- **Storage format**: Parquet
- **Version control**: GitHub
- **Environment management**: Python venv

## 🏗️ Architecture

The project follows a modern data engineering architecture:

1. **Data Ingestion**  
   Flight and weather data are collected from external sources using Python scripts.

2. **Data Lake (Storage Layer)**  
   Raw data is stored locally (or in cloud storage) in Parquet format for efficient processing.

3. **Data Warehouse**  
   Processed data is loaded into BigQuery for analytical querying.

4. **Data Transformation**  
   dbt is used to transform raw data into structured models (staging and marts).

5. **Orchestration**  
   GitHub Actions is used to automate the pipeline execution, including ingestion and transformation steps.

6. **Visualization**  
   Looker Studio connects to BigQuery to create interactive dashboards for analysis.

## 🔄 Pipeline Flow

```text
Data Source → Python Ingestion → Parquet → BigQuery → dbt → Dashboard
   


