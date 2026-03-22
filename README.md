# 📊 Superstore Sales — Exploratory Data Analysis (EDA) in R

> Exploring retail sales data to uncover revenue patterns, regional performance, product trends, and seasonal behavior — using R and ggplot2.

![R](https://img.shields.io/badge/R-276DC3?style=flat-square&logo=r&logoColor=white)
![tidyverse](https://img.shields.io/badge/tidyverse-1A162D?style=flat-square&logo=r&logoColor=white)
![ggplot2](https://img.shields.io/badge/ggplot2-FC6767?style=flat-square&logo=r&logoColor=white)
![RStudio](https://img.shields.io/badge/RStudio-75AADB?style=flat-square&logo=rstudio&logoColor=white)
![Status](https://img.shields.io/badge/Status-Complete-brightgreen?style=flat-square)

---

## 📌 Project Overview

This project applies **Exploratory Data Analysis (EDA)** to the Superstore Sales dataset to answer real business questions about what drives revenue, which regions and products perform best, and where seasonal demand peaks occur.

**Workflow:** Data Loading → Cleaning → Exploration → Visualization → Insights

---

## ❓ Business Questions Answered

1. 📦 Which product categories generate the most revenue?
2. 🌎 Which regions and states are the strongest markets?
3. 🏆 Which products contribute the most to total sales?
4. 📈 Are there seasonal trends in monthly sales?
5. 🎯 Where is revenue most concentrated geographically?

---

## 📂 Dataset

**Source:** [Kaggle — Superstore Dataset](https://www.kaggle.com/datasets/vivek468/superstore-dataset-final)

A widely-used retail dataset ideal for learning business intelligence and data analysis techniques.

| Column | Description |
|--------|-------------|
| `Order Date` | Date the order was placed |
| `Product Category` | Category of the product sold |
| `Product Name` | Name of the product |
| `Sales` | Revenue from the transaction |
| `Region` | Geographic sales region |
| `State` | State where the order was placed |
| `City` | City where the order was placed |
| `Quantity` | Number of items ordered |
| `Discount` | Discount applied to the order |

---

## 📁 Project Structure

```
superstore-sales-eda/
│
├── data/
│   └── train.csv                      # Raw dataset
│
├── scripts/
│   └── eda_superstore.R               # Full analysis script
│
├── plots/
│   ├── sales_by_category.png
│   ├── sales_by_region.png
│   ├── monthly_sales_trend.png
│   └── top_10_states_by_revenue.png
│
└── README.md
```

---

## 🛠️ Tools & Libraries

| Tool | Purpose |
|------|---------|
| **R** | Core analysis language |
| **RStudio** | Development environment |
| **tidyverse** | Data manipulation & transformation |
| **ggplot2** | Data visualization |
| **janitor** | Column name cleaning & standardization |
| **lubridate** | Date parsing and time-based aggregations |

---

## ▶️ How to Run

**1. Clone the repository**
```bash
git clone https://github.com/poojachalla-dev/superstore-sales-eda.git
cd superstore-sales-eda
```

**2. Install required R packages**
```r
install.packages(c("tidyverse", "janitor", "lubridate", "ggplot2"))
```

**3. Run the analysis**
```r
source("scripts/eda_superstore.R")
```

Charts will be saved automatically to the `plots/` folder.

---

## 🔍 Analysis Steps

**1. Data Loading** — Imported CSV using `read.csv()` into an R data frame

**2. Data Exploration** — Reviewed structure, dimensions, column types, and summary statistics

**3. Data Cleaning** — Standardized column names with `janitor::clean_names()`, corrected data types, parsed dates with `lubridate`

**4. Missing Value Check**
```r
colSums(is.na(data))
```

**5. EDA** — Grouped aggregations and visualizations across categories, regions, states, and time

---

## 📊 Visualizations

### 📦 Sales by Category
> Technology leads revenue, followed by Furniture and Office Supplies.

![Sales by Category](plots/sales_by_category.png)

---

### 🌎 Sales by Region
> The West and East regions dominate — the South and Central lag behind.

![Sales by Region](plots/sales_by_region.png)

---

### 📈 Monthly Sales Trend
> Sales peak toward Q4, reflecting seasonal holiday demand patterns.

![Monthly Sales Trend](plots/monthly_sales_trend.png)

---

### 🏆 Top 10 States by Revenue
> California and New York lead by a wide margin — revenue is highly concentrated.

![Top 10 States by Revenue](plots/top_10_states_by_revenue.png)

---

## 💡 Key Findings

| Finding | Detail |
|---------|--------|
| 📦 **Category dominance** | A single category drives a disproportionate share of total revenue |
| 🌍 **Regional concentration** | The West region outperforms others significantly |
| 🏆 **State-level Pareto** | A handful of states generate the majority of revenue |
| 📅 **Q4 seasonality** | Sales spike in the final quarter — consistent with retail holiday trends |
| 🛒 **Product skew** | A small number of products account for a large portion of sales |

---

## 📌 Business Recommendations

- 🎯 **Double down on the West** — prioritize marketing and inventory in top-performing regions
- 📦 **Invest in top categories** — Technology products show the strongest revenue potential
- 📅 **Plan for Q4** — increase stock and promotional campaigns ahead of seasonal demand peaks
- 🌱 **Grow underperforming regions** — targeted campaigns in the South and Central could unlock growth
- 🔍 **Discount analysis** — investigate whether heavy discounting is eroding margins

---

## 🚀 Future Improvements

- [ ] Customer segmentation analysis
- [ ] Profitability vs. discount impact analysis
- [ ] Sales forecasting with time series models (ARIMA / Prophet)
- [ ] Interactive dashboard in Shiny or Tableau

---

## 👩‍💻 Author

**Pooja Challa** — Data Analyst · R · SQL · Tableau

[![GitHub](https://img.shields.io/badge/GitHub-poojachalla--dev-181717?style=flat-square&logo=github)](https://github.com/poojachalla-dev)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-poojachalla-0A66C2?style=flat-square&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/poojachalla)
