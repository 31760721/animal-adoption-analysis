# Animal Adoption Analysis

## Project Overview
This project analyzes animal shelter intake and outcome data to study the factors associated with animal adoption outcomes. Using regression analysis, the project examines how sterilization status, animal size, health condition, and length of stay in the shelter relate to the probability of adoption.

The goal of this project is to apply econometric methods to a real-world dataset and demonstrate a clean, reproducible, and modular data analysis workflow.

---

## Data
The raw dataset contains **28,958 observations** from an animal shelter intake and outcome database. After data cleaning and variable construction, **20,961 observations** were retained for analysis.

### Key variables include:
- Adoption outcome (binary indicator: adoption vs. non-adoption)
- Sterilization status
- Animal size (ordinal scale)
- Days in shelter
- Health condition at outcome

Raw data files are not tracked in this repository due to file size considerations.

---

## Methodology
The analysis follows a modular workflow consisting of four main steps:

1. Data cleaning and variable construction  
2. Descriptive statistics  
3. Regression modeling  
4. Robustness checks and diagnostics  

A linear probability model is used as the baseline specification. Additional model specifications include log transformations, interaction terms, and robustness checks to assess the stability of results.

---

## Repository Structure
animal-adoption-analysis/
├── code/
│ ├── 01_data_cleaning.R
│ ├── 02_summary_statistics.R
│ ├── 03_regression_models.R
│ └── 04_robustness_checks.R
├── data/
│ ├── raw/
│ └── processed/
│ └── analysis_data.csv
└── README.md
