# Customer_behaviour_analysis
End-to-end customer shopping behavior analysis using Python, PostgreSQL, and Power BI, covering data cleaning, feature engineering, database storage and an interactive dashboard.

## Project Overview

The goal of this project is to understand who the customers are, how much they spend, and how satisfied they are with their purchases. The data was prepared in a Jupyter Notebook, stored in a PostgreSQL database, and visualized in Power BI.

## Key Metrics

| Metric | Value |
|---|---|
| Total customers | 3.9K |
| Average purchase amount | 59.76 |
| Average review rating | 3.75 |

## Tools and Technologies

| Category | Tool / Technology | Purpose |
|---|---|---|
| Programming language | Python 3.13 | Data processing and analysis |
| Data analysis | pandas | Loading, cleaning, and transforming data |
| Excel support | openpyxl | Reading Excel files with pandas |
| Development environment | Jupyter Notebook | Writing and running the analysis |
| Database | PostgreSQL | Storing the cleaned data |
| Database management | pgAdmin | Creating and managing the database |
| Database connection | SQLAlchemy | Connecting Python to PostgreSQL |
| Database driver | psycopg2-binary | PostgreSQL adapter for Python |
| Visualization | Power BI | Building the interactive dashboard |
| Version control | Git and GitHub | Hosting and sharing the project |

## Workflow

1. **Load data:** read the customer shopping CSV file into a pandas DataFrame.
2. **Clean and prepare:** standardize column names and check for data quality issues.
3. **Feature engineering:** create an `age_group` column (Young Adult, Adult, Middle-aged, Senior) using quartile-based binning with `pd.qcut`.
4. **Store in PostgreSQL:** write the DataFrame to a `customer` table using SQLAlchemy and psycopg2.
5. **Visualize:** connect Power BI to the PostgreSQL database and build the dashboard with KPI cards and charts.

## Repository Structure

```
├── customer_shopping_behavior(2).csv   # Raw dataset
├── sales.ipynb                    # Jupyter Notebook with the analysis
├── customer_behaviour.pbix                   # Power BI dashboard
├── images/                          # Dashboard screenshots
└── README.md
```

## Getting Started

### Prerequisites

- Python 3.13 (or any version supported by the packages below)
- PostgreSQL and pgAdmin
- Power BI Desktop

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/<Shrey-chauhan>/<customer-behaviour-analysis>.git
   cd <customer-behaviour-analysis>
   ```

2. Install the required packages:
   ```bash
   pip install pandas openpyxl sqlalchemy psycopg2-binary notebook
   ```

3. Create a PostgreSQL database named `customer_behaviour` using pgAdmin.

4. Open the notebook:
   ```bash
   jupyter notebook
   ```

5. In the notebook, update the connection details with your own PostgreSQL username and password. If your password contains special characters such as `@`, encode it first:
   ```python
   from urllib.parse import quote_plus
   password = quote_plus("your_password")
   ```

6. Run all cells to load the data into the `customer` table.

### Connecting Power BI

1. In Power BI Desktop, choose **Get Data → PostgreSQL database**.
2. Enter `localhost:5432` as the server and `customer_behaviour` as the database.
3. Use your PostgreSQL username and password. If the connection fails, untick **Use encrypted connection**, since a local database usually does not use SSL.
4. Select the `customer` table and click **Load**.

## Dashboard

![Dashboard](File is Provided)

## Skills Demonstrated

- Data cleaning and preparation with pandas
- Feature engineering (age grouping)
- Connecting Python to a relational database
- Data storage and management in PostgreSQL
- Dashboard design and data visualization in Power BI

## Author

**Shrey Chauhan**
[LinkedIn](https://www.linkedin.com/in/shrey-chauhan-4541b3259/?isSelfProfile=true) | [GitHub](https://github.com/Shrey-chauhan)
