# ------------------------------------------------------------
# 01_data_cleaning.R
# Purpose: Clean raw animal shelter data and construct variables
# used in regression analysis
# ------------------------------------------------------------

# Load packages
library(dplyr)
library(janitor)
library(tidyverse)


# Load raw data
animal_shelter_data <- read_csv(
  "data/Animal_Shelter_Intake_and_Outcome_20241006.csv"
)

# Basic cleaning and variable selection
clean_animal_shelter_data <- animal_shelter_data |>
  clean_names(case = "snake") |>
  select(
    name,
    type,
    breed,
    sex,
    size,
    days_in_shelter,
    outcome_type,
    outcome_condition) |>
  drop_na()

# Create sterilization dummy
clean_animal_shelter_data <- clean_animal_shelter_data |>
  mutate(
    is_sterilized = case_when(
      sex %in% c("Neutered", "Spayed") ~ 1,
      sex %in% c("Male", "Female", "Unknown") ~ 0)) |>
  select(-sex)

# Create adoption outcome dummy
clean_animal_shelter_data <- clean_animal_shelter_data |>
  mutate(
    outcome = case_when(
      outcome_type == "ADOPTION" ~ 1,
      TRUE ~ 0)) |>
  select(-outcome_type)

# Create ordinal size variable
clean_animal_shelter_data <- clean_animal_shelter_data |>
  mutate(
    size = case_when(
      size %in% c("KITTN", "PUPPY", "TOY") ~ 1,
      size == "SMALL" ~ 2,
      size == "MED" ~ 3,
      size == "LARGE" ~ 4,
      size == "X-LRG" ~ 5))

# Create health condition dummy
clean_animal_shelter_data <- clean_animal_shelter_data |>
  mutate(
    outcome_condition = case_when(
      outcome_condition == "HEALTHY" ~ 1,
      TRUE ~ 0))

# Save processed dataset
write_csv(
  clean_animal_shelter_data,
  "data/analysis_data.csv"
)
