# 🛡️ SAS Anti-Money Laundering (AML) Risk Detection

## 📌 Project Overview
This SAS project identifies potentially suspicious transactions by applying AML rules such as high-value transfers, transactions near thresholds, and interactions with high-risk countries.

---

## 🧩 Files Included

- `aml_detection_macro.sas`: Macro to flag high-risk transactions.
- `aml_sample_data.sas`: Sample transaction dataset.
- `run_aml_etl.sas`: Script to run the macro and generate results.
- `output/`: Placeholder for sample output from the report.

---

## 🚀 How to Run

1. Open all `.sas` files in your SAS environment.
2. Run `run_aml_etl.sas` to generate flagged results.
3. Review printed output for transactions with high risk score.

---

## 🔎 Logic Highlights

- High transaction detection (e.g., > $10,000)
- Structuring (multiple near-threshold transactions)
- Flags for high-risk countries

---

## 🧠 Author
Parthiban Kandavel  
[LinkedIn](https://www.linkedin.com/in/parthi261728) | [GitHub](https://github.com/ParthibanKandavel)
