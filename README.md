# Adoption Outcomes in Animal Shelters  
## A Regression Analysis of Key Animal Traits

### Project Overview
This project studies how animal characteristics affect adoption outcomes in public animal shelters. Using over 20,000 records from Sonoma County, the analysis examines whether factors such as sterilization status, animal size, health condition, and time spent in the shelter influence the likelihood of adoption.

This project was completed for ECON 326 (Applied Econometrics) at the University of British Columbia.

---

### Data
- Source: Sonoma County Open Data Portal
- Observations: 20,961 records (18,010 after data cleaning)
- Outcome variable: Adoption status (binary)

Key explanatory variables include:
- Sterilization status
- Animal size (ordinal scale)
- Days in shelter (log transformed)
- Health condition

---

### Methodology
- Linear Probability Models (LPM)
- Log transformation for skewed variables
- Interaction terms
- Robust standard errors (White HC1)
- Model diagnostics including VIF and RESET tests

---

### Key Findings
- Sterilized animals have a significantly higher probability of being adopted
- Larger animals are less likely to be adopted
- Health condition strongly affects adoption outcomes
- Time in shelter shows non linear effects on adoption likelihood

---

### Tools
- R for data cleaning and regression analysis
- GitHub for version control and project hosting

---

### Report
The full econometric analysis and interpretation are available in the final report:
- Econ 326 project final report PDF
