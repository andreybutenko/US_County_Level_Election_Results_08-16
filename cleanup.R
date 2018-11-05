library(dplyr)

read.csv('./2016_US_County_Level_Presidential_Results.csv', stringsAsFactors = FALSE) %>% 
  select(-X) %>% 
  select(state_abbr, county_name, combined_fips, everything()) %>% 
  write.csv('./2016_Election_Results_Export.csv', row.names = FALSE)
