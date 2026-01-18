# ------------------------------------------------------------
# 02_summary_statistics.R
# Purpose: Generate summary statistics for key variables
# ------------------------------------------------------------

library(dplyr)

# Load processed data
analysis_data <- read_csv("data/analysis_data.csv")

# Summary statistics: sterilization
summary_is_sterilized <- analysis_data |>
  summarize(
    mean = mean(is_sterilized),
    sd = sd(is_sterilized),
    var = var(is_sterilized),
    min = min(is_sterilized),
    max = max(is_sterilized),
    median = median(is_sterilized)
  )

# Summary statistics: size
summary_size <- analysis_data |>
  summarize(
    mean = mean(size),
    sd = sd(size),
    var = var(size),
    min = min(size),
    max = max(size),
    median = median(size)
  )

# Summary statistics: days in shelter
summary_days <- analysis_data |>
  summarize(
    mean = mean(days_in_shelter),
    sd = sd(days_in_shelter),
    var = var(days_in_shelter),
    min = min(days_in_shelter),
    max = max(days_in_shelter),
    median = median(days_in_shelter)
  )

# Summary statistics: health condition
summary_health <- analysis_data |>
  summarize(
    mean = mean(outcome_condition),
    sd = sd(outcome_condition),
    var = var(outcome_condition),
    min = min(outcome_condition),
    max = max(outcome_condition),
    median = median(outcome_condition)
  )

# Summary statistics: adoption outcome
summary_outcome <- analysis_data |>
  summarize(
    mean = mean(outcome),
    sd = sd(outcome),
    var = var(outcome),
    min = min(outcome),
    max = max(outcome),
    median = median(outcome)
  )

