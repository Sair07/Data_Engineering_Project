# Data_Engineering_Project
Processing the Adventure works data: Performing ETL and all DE concept using Azure Cloud service, including databricks

# Azure Data Engineering Project – AdventureWorks Pipeline

## Overview

This project demonstrates an end-to-end Data Engineering pipeline built on Microsoft Azure using the AdventureWorks dataset. It showcases how raw data can be ingested, transformed, and prepared for analytics using modern cloud-native tools.

The pipeline leverages Azure Data Factory for orchestration and ingestion, Azure Data Lake for storage, and Azure Databricks for scalable data transformation.

---

## Architecture

```text
        AdventureWorks Dataset
                  │
                  ▼
     Azure Data Factory (ADF)
     (Data Ingestion & Orchestration)
                  │
                  ▼
   Azure Data Lake Storage Gen2
        (Raw / Bronze Layer)
                  │
                  ▼
       Azure Databricks (PySpark)
       (Data Transformation)
                  │
                  ▼
   Processed Data (Silver / Gold Layer)
                  │
                  ▼
      Analytics / Reporting Layer
```

---

## Technologies Used

- Microsoft Azure
- Azure Data Factory (ADF)
- Azure Data Lake Storage Gen2 (ADLS)
- Azure Databricks
- Apache Spark / PySpark
- Python
- Jupyter Notebooks
- Git & GitHub

---

## Project Structure

```text
Data_Engineering_Project/
│
├── Data/
│   ├── Raw Data
│   └── Processed Data
│
├── Scripts/
│   ├── Ingestion (ADF pipelines)
│   ├── Transformation (Databricks / PySpark)
│   └── ETL Logic
│
├── README.md
└── .gitignore
```

---

## Data Source

The project uses the AdventureWorks dataset, a widely used sample database that simulates a real-world retail and manufacturing business.

It includes:

- Customers
- Calendar
- Products
- Products Sub Category
- Sales Orders
- Territories
- Categories
  

---

## Pipeline Workflow

### 1. Data Ingestion (ADF)

- Azure Data Factory pipelines are used to ingest raw data.
- Data is extracted from source files and loaded into Azure Data Lake Storage.
- Pipelines can be scheduled and monitored for automation.

---

### 2. Data Storage (ADLS Gen2)

- Raw data is stored in the **Bronze layer**.
- Organized for scalability and efficient access.

---

### 3. Data Transformation (Azure Databricks)

- PySpark is used for data cleaning and transformation.
- Key operations include:
  - Handling null values
  - Data type standardization
  - Filtering invalid records
  - Business logic transformations

- Output is written to:
  - **Silver Layer** (cleaned data)
  - **Gold Layer** (analytics-ready datasets)

---

### 4. Data Consumption

- Transformed datasets are ready for:
  - BI tools (Power BI)
  - Reporting
  - Analytics use cases

---

## Key Features

- End-to-end ETL pipeline on Azure
- Scalable data processing using Spark
- Layered Data Lake architecture (Bronze, Silver, Gold)
- Orchestrated ingestion using ADF
- Modular and extensible design

---

## Learning Outcomes

This project demonstrates:

- Building cloud-based ETL pipelines
- Using Azure Data Factory for orchestration
- Distributed data processing with Spark
- Data Lake design patterns
- Real-world data engineering workflow

---

## Future Enhancements

- Incremental data loading using ADF
- Delta Lake integration
- Pipeline monitoring & alerting
- Power BI dashboards for visualization

---

## Getting Started

### Clone the repository

```bash
git clone https://github.com/Sair07/Data_Engineering_Project.git
cd Data_Engineering_Project
```

### Run locally

```bash
jupyter notebook
```

Or import notebooks into Azure Databricks workspace.

---

## Author

Saira 

GitHub: https://github.com/Sair07
