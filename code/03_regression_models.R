# ------------------------------------------------------------
# 03_regression_models.R
# Purpose: Estimate regression models for adoption outcomes
# ------------------------------------------------------------

library(dplyr)

# Load processed data
analysis_data <- read_csv("data/analysis_data.csv")

# Model 1: Baseline linear probability model
model_1 <- lm(
  outcome ~ is_sterilized + size + days_in_shelter + outcome_condition,
  data = analysis_data
)

summary(model_1)

# Model 2: Log transformation of days in shelter
analysis_data <- analysis_data |>
  mutate(log_days_in_shelter = log(days_in_shelter + 1))

model_2 <- lm(
  outcome ~ is_sterilized + size + log_days_in_shelter + outcome_condition,
  data = analysis_data
)

summary(model_2)

# Model 3: Interaction between shelter duration and health
model_3 <- lm(
  outcome ~ is_sterilized + size +
    log_days_in_shelter * outcome_condition,
  data = analysis_data
)

summary(model_3)

# Model 4: Quadratic term for shelter duration
model_4 <- lm(
  outcome ~ is_sterilized + size +
    log_days_in_shelter + I(log_days_in_shelter^2) +
    outcome_condition,
  data = analysis_data
)

summary(model_4)
