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

The repository is organized as follows:

- **code/**
  - '01_data_cleaning.R' – data cleaning and variable construction  
  - '02_summary_statistics.R' – descriptive statistics  
  - '03_regression_models.R' – regression model estimation  
  - '04_robustness_checks.R' – robustness checks and diagnostics  

- **data/**
  - 'Animal_Shelter_Intake_and_Outcome_20241006.csv' - raw input data (not tracked on GitHub)  
  - 'analysis_data.csv' – cleaned dataset used for analysis  

- **README.md** – project documentation

---

## Reproducibility
To reproduce the analysis, run the scripts in the following order:

1. '01_data_cleaning.R'  
2. '02_summary_statistics.R'  
3. '03_regression_models.R' 
4. '04_robustness_checks.R' 

Each script performs a single, well-defined task, making the workflow easy to understand and extend.

---

## Notes
This project was originally completed as a group assignment. With additional time available, I rewrote and reorganized the full analysis codebase, modularized the workflow, and improved clarity and reproducibility. I also migrated the project to GitHub as a structured repository to document and showcase this work as part of my academic and technical portfolio.


