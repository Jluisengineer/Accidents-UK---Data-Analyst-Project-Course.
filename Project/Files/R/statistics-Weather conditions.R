# Importing the datasets

df_conditions = read.table(file = "../Desktop/Data Science/R/datasets/Accidents 5 years/Accident_conditions_clean.csv", 
                          sep = ",", 
                          header = TRUE)

df_conditions

# Frequencies and proportions

# speed limit
Frequency_speedlimit <- table(df_conditions$speed_limit)
Frequency_speedlimit
Proportion_speedlimit <- prop.table(Frequency_speedlimit)*100
Proportion_speedlimit

# Road type
Frequency_roadtype <- table(df_conditions$road_type)
Frequency_roadtype
Proportion_roadtype <- prop.table(Frequency_roadtype)*100
Proportion_roadtype

# Road conditions
Frequency_roadcondition <- table(df_conditions$road_surface_conditions)
Frequency_roadcondition
Proportion_roadcondition <- prop.table(Frequency_roadcondition)*100
Proportion_roadcondition

# light conditions
Frequency_lightconditions <- table(df_conditions$light_conditions)
Frequency_lightconditions
Proportion_lightconditions <- prop.table(Frequency_lightconditions)*100
Proportion_lightconditions

# Weather conditions
Frequency_weathercondition <- table(df_conditions$weather_conditions)
Frequency_weathercondition
Proportion_weathercondition <- prop.table(Frequency_weathercondition)*100
Proportion_weathercondition
