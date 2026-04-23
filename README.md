
```markdown id="readme_v2_banking"```
# 🏦 FinanceCore – Banking Data Analytics Project

## 📌 Overview

This project is a **data analytics pipeline for banking data**, built using **SQL, Python, and PostgreSQL**.  
It transforms raw cleaned banking data into a **structured analytical database** optimized for reporting and decision-making.

The project simulates a real-world **Data Engineering & Analytics workflow**, from data modeling to performance optimization and exploratory analysis.

---

## 🎯 Objectives

- Design a **relational analytical database**
- Implement a **normalized SQL schema**
- Optimize queries using **indexes**
- Build **analytical SQL views**
- Perform **data exploration with Python**
- Prepare the foundation for a **Data Warehouse / BI dashboard**

---

## 🧱 Architecture

```

Raw Data (CSV)
↓
Data Cleaning (FinanceCore dataset)
↓
PostgreSQL Database (SQL Schema)
↓
Optimization Layer (Indexes)
↓
Analytical Layer (SQL Views)
↓
Python Analysis (Jupyter Notebook)
↓
Future: Dashboard (Streamlit / Power BI)

```

---

## 📂 Project Structure

```

STOCKAGE-DONNEES-BANCAIRES/
│
├── data/
│   └── financecore_clean.csv
│
├── env/
│   └── (virtual environment)
│
├── sql/
│   ├── schema.sql        # Database structure (tables + relations)
│   ├── index.sql         # Performance optimization indexes
│   └── views.sql         # Analytical SQL views
│
├── src/
│   └── banking-sql-analytics.ipynb
│
├── .env                  # Database credentials (hidden)
└── .gitignore

````

---

## 🗄️ Database Design

### 📌 Core Tables

- **clients** → customer information  
- **comptes** → bank accounts  
- **transactions** → financial operations  
- **agences** → bank branches  
- **produits** → banking products  
- **segments** → customer segmentation  
- **temps** → time dimension  

---

## 🧠 SQL Layer

### 📄 Schema Layer (`schema.sql`)
Defines:
- Primary Keys
- Foreign Keys
- Relationships between entities
- Normalized structure

---

### ⚡ Performance Layer (`index.sql`)
Improves query speed using indexing:

- transaction date index
- client-based indexing
- account-based optimization

---

### 📊 Analytical Layer (`views.sql`)
Pre-built SQL views for business analysis:

- Monthly transaction trends
- Client segmentation analysis
- Agency performance metrics
- Product usage insights

---

## 🐍 Python Analysis Layer

### 📄 Notebook: `banking-sql-analytics.ipynb`

Capabilities:
- Database connection (SQLAlchemy)
- SQL query execution
- Data aggregation & joins
- Analytical insights
- Visualization (Matplotlib / Pandas)

---

## 🔐 Environment Configuration

Sensitive credentials are stored in `.env`:

```env id="env_config"
DB_HOST=localhost
DB_NAME=financecore_db
DB_USER=postgres
DB_PASSWORD=********
DB_PORT=5432
````

---

## ⚙️ Technologies Used

* 🐍 Python (Pandas, SQLAlchemy)
* 🗄️ PostgreSQL
* 📊 SQL (DDL + DML + Views)
* 📓 Jupyter Notebook
* 📈 Matplotlib
* 🔐 dotenv

---

## 📈 Key Features

✔ Relational database design
✔ SQL optimization (indexes)
✔ Analytical SQL views
✔ Data exploration pipeline
✔ Reproducible notebook analysis
✔ BI-ready structure

---



## 👨‍💻 Author
Manal Bessar

---

