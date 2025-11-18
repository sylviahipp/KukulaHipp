# Purpose: explore time series data from USGS NWIS 
# Sylvia Hipp
# Nov 13, 2025

# USGS data availability: 
# https://waterdata.usgs.gov/nwis/inventory?agency_code=USGS&site_no=12045500


# Set Up Environment ------------------------------------------------------

library(tidyverse)
library(rvest)
library(dataRetrieval)
library(tidycensus)

# Set Parameters ----------------------------------------------------------

site_number <- "USGS-12045500"
stat_code <- "00003"  # mean
p_code_discharge <- "00060"
p_code_gage_height <- "00065"

start_date <- "2010-01-01"
end_date <- "2020-01-01"


# Pull Data via API ----------------------------------------------------------

# discharge data
daily_discharge <- read_waterdata_daily(
  monitoring_location_id = site_number, 
  parameter_code = p_code_discharge, 
  statistic_id = stat_code, 
  time = c(start_date, end_date), 
  skipGeometry = TRUE) %>% 
  select("monitoring_location_id", "time", "unit_of_measure", 
         "value", "parameter_code")

# gage height data
daily_gage_height <- read_waterdata_daily(
  monitoring_location_id = site_number, 
  parameter_code = p_code_gage_height,
  statistic_id = stat_code,
  time = c("2000-01-01", end_date), 
  skipGeometry = TRUE) %>% 
  select("monitoring_location_id", "time", "unit_of_measure", 
         "value", "parameter_code")

# field measurements
gage_height_field <- read_waterdata_field_measurements(
  monitoring_location_id = site_number, 
  parameter_code = p_code_gage_height, 
  time = c(start_date, end_date), 
  skipGeometry = TRUE) %>% 
  select("monitoring_location_id", "time", "unit_of_measure", 
         "value", "parameter_code")

discharge_field <- read_waterdata_field_measurements(
  monitoring_location_id = site_number, 
  parameter_code = p_code_discharge, 
  time = c(start_date, end_date), 
  skipGeometry = TRUE) %>% 
  select("monitoring_location_id", "time", "unit_of_measure", 
         "value", "parameter_code")

gage_height_continuous <- read_waterdata_latest_continuous(
  monitoring_location_id = site_number, 
  parameter_code = p_code_gage_height,
  #statistic_id = stat_code,
  time = "P1M", 
  skipGeometry = TRUE)


## Plot data
read_waterdata_latest_continuous(monitoring_location_id = site_number, 
                                 parameter_code = p_code_gage_height)
