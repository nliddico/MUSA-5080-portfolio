library(tidyverse)
library(tidycensus)

#I'm going to load some data now
pa_income <- get_acs(
  geography = "county",
  variables = "B19013_001",
  state = "PA",
  year = 2023,
  survey = "acs5"
)

#dim=dimensions; rows, variables
dim(pa_income)
glimpse(pa_income)
head(pa_income)
#67 rows for sorting 67 PA counties

as.numeric("01001")
#the leading 0 went away

filter(pa_income, estimate > 60000)
#Predict that there will be less than 67 rows as not all average income by county will be over 60,000
#There is indeed only 56 counties that meet this filter



