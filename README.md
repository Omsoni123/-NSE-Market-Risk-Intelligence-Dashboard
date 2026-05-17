# 📊 NSE Market Risk Intelligence Dashboard

An end-to-end **Financial Market Risk Analysis** project analyzing 5 years (2020–2024) of NSE stock data across 10 major Indian stocks and 5 sectors — built using Python, MySQL, and Power BI.

---

## 🎯 Project Objective

To analyze stock market risk and performance patterns across NSE-listed companies using real financial data — identifying the riskiest sectors, best-performing stocks, and market trends including the COVID-19 crash and recovery.

---

## 📁 Project Structure

```
Financial-Market-Risk-Analysis/
│
├── data/
│   ├── financial_risk.csv        # Main cleaned dataset (12,370 records)
│   ├── stock_growth.csv          # Stock & Sector wise growth %
│   └── stock_risk.csv            # Risk category classification
│
├── notebooks/
│   └── NSE_Risk_Analysis.ipynb   # Full Python EDA notebook
│
├── sql/
│   └── analysis_queries.sql      # All SQL queries used
│
├── dashboard/
│   └── NSE_Dashboard.pbix        # Power BI dashboard file
│
└── README.md
```

---

## 🛠️ Tech Stack

| Tool | Usage |
|------|-------|
| **Python (Pandas, NumPy)** | Data collection, cleaning, EDA |
| **yfinance** | Real NSE stock data extraction |
| **MySQL** | ETL queries, Window Functions, CTEs |
| **Power BI + DAX** | Interactive dashboard & KPI reporting |
| **Excel** | Stakeholder reporting |

---

## 📈 Stocks & Sectors Covered

| Sector | Stocks |
|--------|--------|
| IT | TCS, Infosys |
| Banking | HDFC Bank, ICICI Bank |
| Energy | Reliance, ONGC |
| FMCG | HUL, ITC |
| Pharma | Sun Pharma, Dr Reddy's |

---

## 🔍 Key Insights Discovered

### 📊 Stock Performance (2020–2024)
- 🏆 **Sun Pharma** — highest growth at **356%** (COVID pharma boom)
- 📉 **HUL** — lowest growth at **31%** (FMCG sector slowdown)
- **TCS** grew 111% despite being India's largest IT company

### ⚠️ Risk Analysis
- 🔴 **ONGC** — highest volatility **(2.19%)** → High Risk
- 🟢 **HUL** — lowest volatility **(1.34%)** → Low Risk
- **Energy sector** most volatile; **FMCG** most stable

### 📅 COVID-19 Impact
- **March 2020** — worst month with **-0.52%** average daily return
- **April 2020** — fastest recovery at **+0.90%** daily return
- **2022** — worst year due to Russia-Ukraine war & RBI rate hikes

### 🔗 Correlation Findings
- **TCS + Infosys** = 0.71 (strong) — not ideal for diversification
- **HDFC + ICICI** = 0.64 (strong) — same banking exposure
- **ONGC + HUL** = 0.11 (near zero) — best diversification pair

---

## 🗄️ SQL Queries Used

- Sector wise average volatility
- Year wise average daily return
- Top 3 best performing days
- 30-Day Moving Average (Window Function)
- Risk Category Classification (CTE + CASE WHEN)

---

## 📊 Power BI Dashboard Features

- Stock wise Growth % (Bar Chart)
- Sector wise Growth % (Bar Chart)
- Volatility by Sector (Bar Chart)
- Year wise Daily Return Trend (Line Chart)
- Risk Category Distribution (Donut Chart)
- KPI Cards — Avg Volatility, Avg Return, Total Stocks

---
## 📸 Dashboard Preview
<img width="1306" height="733" alt="image" src="https://github.com/user-attachments/assets/b2ad502c-eebb-4516-b037-5390fa32dfa4" />
<img width="1075" height="457" alt="image" src="https://github.com/user-attachments/assets/268eebc5-f97a-4419-82c3-fbf4f70b2a0f" />
<img width="210" height="342" alt="image" src="https://github.com/user-attachments/assets/79ec4a79-e2cd-4006-b2e4-7028c0505792" />




## 🚀 How to Run

1. Clone the repo
2. Run `NSE_Risk_Analysis.ipynb` in Jupyter
3. Import CSVs into MySQL
4. Open `NSE_Dashboard.pbix` in Power BI Desktop

---

## 👨‍💻 Author

**Om Vinod Soni**  
M.Sc. Artificial Intelligence | Data Analyst  
[LinkedIn](https://linkedin.com/in/om-soni-8b0643231/) | [GitHub](https://github.com/Omsoni123)
