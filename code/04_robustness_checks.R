# ------------------------------------------------------------
# 04_robustness_checks.R
# Purpose: Perform robustness checks and diagnostic tests
# ------------------------------------------------------------

library(dplyr)
library(car)

# Load processed data
analysis_data <- read_csv("data/analysis_data.csv")

# Re-estimate baseline model
baseline_model <- lm(
  outcome ~ is_sterilized + size + days_in_shelter + outcome_condition,
  data = analysis_data
)

# Variance Inflation Factor (VIF)
vif(baseline_model)

# Robust standard errors (HC1)
library(sandwich)
library(lmtest)

coeftest(
  baseline_model,
  vcov = vcovHC(baseline_model, type = "HC1")
)

# Subgroup analysis: Dogs vs Cats
dogs_data <- analysis_data |> filter(type == "DOG")
cats_data <- analysis_data |> filter(type == "CAT")

model_dogs <- lm(
  outcome ~ is_sterilized + size + days_in_shelter + outcome_condition,
  data = dogs_data
)

model_cats <- lm(
  outcome ~ is_sterilized + size + days_in_shelter + outcome_condition,
  data = cats_data
)

summary(model_dogs)
summary(model_cats)
