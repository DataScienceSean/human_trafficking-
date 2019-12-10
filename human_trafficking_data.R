library("readxl")
library("dplyr")
library("tidyr")
install.packages("breakDown")

# Human Trafficking files were loaded from the FBI Uniform Crime Report Crimes in the United States data site.
# 2014 data was derived from the following site https://ucr.fbi.gov/crime-in-the-u.s/2014/crime-in-the-u.s.-2014/additional-reports/human-trafficking-report/human-trafficking.pdf
# The PDF contains links to the data sets.
# 2015 data was derived from the following site https://ucr.fbi.gov/crime-in-the-u.s/2015/crime-in-the-u.s.-2015/additional-reports/human-trafficking/humantrafficking_-2015-_final
# 2016 data was derived from the follwoing site https://ucr.fbi.gov/crime-in-the-u.s/2016/crime-in-the-u.s.-2016/additional-publications/human-trafficking
# 2017 data was derived from the follwoing site https://ucr.fbi.gov/crime-in-the-u.s/2017/crime-in-the-u.s.-2017/additional-data-collections/human-trafficking
# 2018 data is not available at this time

# The follwoing Tables are the Offense and Clearnace using the FBI's Summary Reporting System (SRS)
# When more than one crime was committed by the same person or group of persons and the time and space intervals
# separating the crimes were insignificant, then the crime highest in the hierarchy is the only offense reported.

# An Offense is reported and under investigation by a participating organization.
# A Clearance is an offense where a perpetrator has been arrested or convicted.

# Reading table 2 Human Traficing excle file 2014
ht_offenses_clearing_2014 <- read_excel("Table_2_Human_Trafficking_Offenses_and_Clearances_by_State_2014.xlsx")
ht_offenses_clearing_2014

# Writing data to a csv file
write.csv(ht_offenses_clearing_2014, file = "Human_Trafficking_Offenses_and_Clearances_by_State_2014.csv")

# I like working with dataframs so I am turning my data into a data frame.
ht_offenses_clearing_2014_df <- data.frame(ht_offenses_clearing_2014)

# There are no column names, so I am adding the column names.
colnames(ht_offenses_clearing_2014_df) <- c("state", "commercial_sex_act_offense", "commercial_sex_act_cleared", "commercial_sex_act_cleared_under_18", "involuntary_servitude_offense", "involuntary_servitude_cleared", "involuntary_servitude_cleared_under_18","total_offenses", "total_cleared","total_under_18")

# There are 4 rows in the file that were used a data information in the excel file that are not needed.  I am deleting these rows.
ht_offenses_clearing_2014_df <- ht_offenses_clearing_2014_df[-c(1, 2, 3, 4),]

# Creating a new column for the year and move that column to the front.
ht_offenses_clearing_2014_df <- mutate(ht_offenses_clearing_2014_df,"year" = 2014)
ht_offenses_clearing_2014_df <- select(ht_offenses_clearing_2014_df, year, everything())

ht_offenses_4_years_clean_df

# Writing data to a csv file
write.csv(ht_offenses_clearing_2014_df, file = "Human_Trafficking_Offenses_and_Clearances_by_State_2014.csv")

# Reading table 1 Human Traficing excle file 2015
ht_offenses_clearing_2015 <- read_excel("table-1_Human_Trafficking_Offenses_and_Clearances_by_State_2015.xls")
ht_offenses_clearing_2015

# I like working with dataframs so I am turning my data into a data frame.
ht_offenses_clearing_2015_df <- data.frame(ht_offenses_clearing_2015)

# There are no column names, so I am adding the column names.
colnames(ht_offenses_clearing_2015_df) <- c("state", "commercial_sex_act_offense", "commercial_sex_act_cleared", "commercial_sex_act_cleared_under_18", "involuntary_servitude_offense", "involuntary_servitude_cleared", "involuntary_servitude_cleared_under_18","total_offenses", "total_cleared","total_under_18")

# There are 4 rows in the file that were used a data information in the excel file that are not needed.  I am deleting these rows.
ht_offenses_clearing_2015_df <- ht_offenses_clearing_2015_df[-c(1, 2, 3, 4),]
ht_offenses_clearing_2015_df

# Creating a new column for the year and move that column to the front.
ht_offenses_clearing_2015_df <- mutate(ht_offenses_clearing_2015_df,"year" = 2015)
ht_offenses_clearing_2015_df <- select(ht_offenses_clearing_2015_df, year, everything())

# Writing data to a csv file
write.csv(ht_offenses_clearing_2015_df, file = "Human_Trafficking_Offenses_and_Clearances_by_State_2015.csv")

# Reading table 1 Human Traficing excle file 2016
ht_offenses_clearing_2016 <- read_excel("table-1_Human_Trafficking_Offenses_and_Clearances_by_State_2016.xls")
ht_offenses_clearing_2016


# I like working with dataframs so I am turning my data into a data frame.
ht_offenses_clearing_2016_df <- data.frame(ht_offenses_clearing_2016)

# There are no column names, so I am adding the column names.
colnames(ht_offenses_clearing_2016_df) <- c("state", "commercial_sex_act_offense", "commercial_sex_act_cleared", "commercial_sex_act_cleared_under_18", "involuntary_servitude_offense", "involuntary_servitude_cleared", "involuntary_servitude_cleared_under_18","total_offenses", "total_cleared","total_under_18")

# There are 4 rows in the file that were used a data information in the excel file that are not needed.  I am deleting these rows.
ht_offenses_clearing_2016_df <- ht_offenses_clearing_2016_df[-c(1, 2, 3, 4),]

# Creating a new column for the year and move that column to the front.
ht_offenses_clearing_2016_df <- mutate(ht_offenses_clearing_2016_df,"year" = 2016)
ht_offenses_clearing_2016_df <- select(ht_offenses_clearing_2016_df, year, everything())

# Writing data to a csv file
write.csv(ht_offenses_clearing_2016_df, file = "Human_Trafficking_Offenses_and_Clearances_by_State_2016.csv")


# Reading table 1 Human Traficing excle file 2017
ht_offenses_clearing_2017 <- read_excel("table-1_Human_Trafficking_Offenses_and_Clearances_by_State_2017.xls")
ht_offenses_clearing_2017

# I like working with dataframs so I am turning my data into a data frame.
ht_offenses_clearing_2017_df <- data.frame(ht_offenses_clearing_2017)

# There are no column names, so I am adding the column names.
colnames(ht_offenses_clearing_2017_df) <- c("state", "commercial_sex_act_offense", "commercial_sex_act_cleared", "commercial_sex_act_cleared_under_18", "involuntary_servitude_offense", "involuntary_servitude_cleared", "involuntary_servitude_cleared_under_18","total_offenses", "total_cleared","total_under_18")

# There are 4 rows in the file that were used a data information in the excel file that are not needed.  I am deleting these rows.
ht_offenses_clearing_2017_df <- ht_offenses_clearing_2017_df[-c(1, 2, 3, 4),]

# Creating a new column for the year and move that column to the front.
ht_offenses_clearing_2017_df <- mutate(ht_offenses_clearing_2017_df,"year" = 2017)
ht_offenses_clearing_2017_df <- select(ht_offenses_clearing_2017_df, year, everything())

# Writing data to a csv file
write.csv(ht_offenses_clearing_2017_df, file = "Human_Trafficking_Offenses_and_Clearances_by_State_2017.csv")

# This will combine all three data frames into a single dataframe to use with analysis 
ht_offenses_clearing_4_years_df <- bind_rows(ht_offenses_clearing_2014_df, ht_offenses_clearing_2015_df, ht_offenses_clearing_2016_df, ht_offenses_clearing_2017_df)
ht_offenses_clearing_4_years_df

# Writing data to a csv file
write.csv(ht_offenses_clearing_4_years_df, file = "Human_Trafficking_Offenses_and_Clearances_by_State_2014_to_2017.csv")

# Now that the data is organized and combined and after reading the FBI website on the process of compiling the data,
# I've leanred that data is generally broken down by adult and juvenile.  If an individual is over 18 they are adults
# and under 18 they are juveniles.  The commercial_sex_act_cleared is the total and includes the data from the
# commercial_sex_act_cleared_under_18 column.
# A column should be created for age and offence to separate these out.

# Separating out Commercial Sex Offense From Involuntary servitude, so that a column for offense and Age and be created.
# Then these two groups will be re-combined.
comm_sex_offense_df <- select(ht_offenses_clearing_4_years_df, "year", "state", "commercial_sex_act_offense", "commercial_sex_act_cleared", "commercial_sex_act_cleared_under_18")

#Removing the invalid row at the bottom
comm_sex_offense_df <- comm_sex_offense_df[-c(149),]

# Creating a New column for offense
comm_sex_offense_df <- mutate(comm_sex_offense_df,"offense" = "commercial sex act")
comm_sex_offense_df

# I discovered the my values are characters and not numeric.  Changing the columns to numeric in value.

comm_sex_offense_df$year <- as.numeric(comm_sex_offense_df$year)
comm_sex_offense_df$commercial_sex_act_offense <- as.numeric(comm_sex_offense_df$commercial_sex_act_offense)
comm_sex_offense_df$commercial_sex_act_cleared <- as.numeric(comm_sex_offense_df$commercial_sex_act_cleared)
comm_sex_offense_df$commercial_sex_act_cleared_under_18 <- as.numeric(comm_sex_offense_df$commercial_sex_act_cleared_under_18)

comm_sex_offense_df
# Creating a New Column for adult cleared offenses
comm_sex_offense_df <- mutate(comm_sex_offense_df, commercial_sex_act_cleared_adults = (commercial_sex_act_cleared - commercial_sex_act_cleared_under_18))

# Reordering the columns
comm_sex_offense_df <- select(comm_sex_offense_df, year, state, Offense, commercial_sex_act_offense, commercial_sex_act_cleared, commercial_sex_act_cleared_adults, commercial_sex_act_cleared_under_18, everything())

# With commercial_sex_act_cleared_adults separted out from commercial_sex_act_cleared, commercial_sex_act_cleared is no longer needed.
comm_sex_offense_df$commercial_sex_act_cleared <- NULL

# Renaming columns to prepar to gather.
colnames(comm_sex_offense_df) <- c("year", "state", "offense", "occurrence", "adult", "juvenile")

# This will create and column for age and gather Adult and Juvenile.
comm_sex_offense_df <- gather(comm_sex_offense_df, age, cleared, adult, juvenile)

# Separating out  Involuntary servitude from Commercial Sex Offense, so that a column for offense and Age and be created.
invol_serv_df <- select(ht_offenses_clearing_4_years_df, "year", "state", "involuntary_servitude_offense", "involuntary_servitude_cleared", "involuntary_servitude_cleared_under_18")
invol_serv_df

#Removing the invalid row at the bottom
invol_serv_df <- invol_serv_df[-c(149),]

# Creating a New column for offense
invol_serv_df <- mutate(invol_serv_df,"offense" = "involuntary servitude")

# Change certain columns to numeric values.
invol_serv_df$year <- as.numeric(invol_serv_df$year)
invol_serv_df$involuntary_servitude_offense <- as.numeric(invol_serv_df$involuntary_servitude_offense)
invol_serv_df$involuntary_servitude_cleared <- as.numeric(invol_serv_df$involuntary_servitude_cleared)
invol_serv_df$involuntary_servitude_cleared_under_18 <- as.numeric(invol_serv_df$involuntary_servitude_cleared_under_18)

# Creating a New Column for adult cleared offenses.
invol_serv_df <- mutate(invol_serv_df, involuntary_servitude_cleared_adult = (involuntary_servitude_cleared - involuntary_servitude_cleared_under_18))

# With involuntary_servitude_cleared_adult separted out from involuntary_servitude_cleared, involuntary_servitude_cleared is no longer needed.
invol_serv_df$involuntary_servitude_cleared <- NULL

# Reordering the columns
invol_serv_df <- select(invol_serv_df, year, state, offense, involuntary_servitude_offense, involuntary_servitude_cleared_adult, involuntary_servitude_cleared_under_18, everything())

# Renaming columns to prepar to gather.
colnames(invol_serv_df) <- c("year", "state", "offense", "occurrence", "adult", "juvenile")

# This will create and column for age and gather Adult and Juvenile.
invol_serv_df <- gather(invol_serv_df, age, cleared, adult, juvenile)

#now to combine the two dataframes into one final data frame.
ht_offenses_4_years_clean_df <- bind_rows(comm_sex_offense_df, invol_serv_df)
ht_offenses_4_years_clean_df

ht_offenses_4_years_clean_df$state <- gsub("\\*", "", ht_offenses_4_years_clean_df$state)

# Add Columns for Region and Region Description
ht_offenses_4_years_clean_df <- mutate(ht_offenses_4_years_clean_df, region = state)
ht_offenses_4_years_clean_df <- mutate(ht_offenses_4_years_clean_df, region_description = state)

state_regions <- read.csv(file ="state_regions.csv", header = TRUE, sep =",")
state_regions


#Replace State Name with Region number and Region Description
ht_offenses_4_years_clean_df$region <- gsub("Maine", "1", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Maine", "New England", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("New Hampshire", "1", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("New Hampshire", "New England", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Rhode Island", "1", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Rhode Island", "New England", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Massachusetts", "1", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Massachusetts", "New England", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("New York", "2", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("New York", "Mideast North", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Vermont", "2", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Vermont", "Mideast North", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Connecticut", "2", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Connecticut", "Mideast North", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Pennsylvania", "3", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Pennsylvania", "Mideast South", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("New Jersey", "3", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("New Jersey", "Mideast South", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Delaware", "3", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Delaware", "Mideast South", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("West Virginia", "4", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("West Virginia", "Mid-Atlantic", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Maryland", "4", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Maryland", "Mid-Atlantic", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Virginia", "4", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Virginia", "Mid-Atlantic", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("North Carolina", "4", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("North Carolina", "Mid-Atlantic", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("South Carolina", "4", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("South Carolina", "Mid-Atlantic", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Alabama", "5", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Alabama", "Gulf Coast East", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Mississippi", "5", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Mississippi", "Gulf Coast East", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Georgia", "5", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Georgia", "Gulf Coast East", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Florida", "5", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Florida", "Gulf Coast East", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Puerto Rico", "5", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Puerto Rico", "Gulf Coast East", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("U.S. Virgin Islands", "5", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("U.S. Virgin Islands", "Gulf Coast East", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Michigan", "6", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Michigan", "Central", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Ohio", "6", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Ohio", "Central", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Kentucky", "6", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Kentucky", "Central", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Tennessee", "6", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Tennessee", "Central", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Wisconsin", "7", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Wisconsin", "North Central", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Indiana", "7", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Indiana", "North Central", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Illinois", "7", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Illinois", "North Central", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("North Dakota", "8", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("North Dakota", "Plains", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("South Dakota", "8", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("South Dakota", "Plains", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Nebraska", "8", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Nebraska", "Plains", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Iowa", "8", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Iowa", "Plains", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Missouri", "8", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Missouri", "Plains", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Arkansas", "8", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Arkansas", "Plains", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("California", "9", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("California", "Southwest/Pacific", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Nevada", "9", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Nevada", "Southwest/Pacific", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Arizona", "9", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Arizona", "Southwest/Pacific", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Hawaii", "9", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Hawaii", "Southwest/Pacific", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Alaska", "9", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Alaska", "Southwest/Pacific", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Wyoming", "10", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Wyoming", "Rockies/Mid-West", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Utah", "10", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Utah", "Rockies/Mid-West", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Colorado", "10", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Colorado", "Rockies/Mid-West", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Kansas", "10", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Kansas", "Rockies/Mid-West", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("New Mexico", "10", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("New Mexico", "Rockies/Mid-West", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Oklahoma", "10", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Oklahoma", "Rockies/Mid-West", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Texas", "11", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Texas", "Gulf Coast West", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Louisiana", "11", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Louisiana", "Gulf Coast West", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Washington", "12", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Washington", "Northeast", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Oregon", "12", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Oregon", "Northeast", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Idaho", "12", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Idaho", "Northeast", ht_offenses_4_years_clean_df$region_description)
ht_offenses_4_years_clean_df$region <- gsub("Montana", "12", ht_offenses_4_years_clean_df$region)
ht_offenses_4_years_clean_df$region_description <- gsub("Montana", "Northeast", ht_offenses_4_years_clean_df$region_description)

help("gather")

# Reorders the Column Names
head(ht_offenses_4_years_clean_df) <- select(ht_offenses_4_years_clean_df, year, region, region_description, state, offense, occurrence, age, cleared,everything())

# Writing data to a csv file
write.csv(ht_offenses_4_years_clean_df, file = "Human_Trafficking_Offenses_and_Clearances_by_State_2014_to_2017_clean.csv")

install.packages("reshape2")

ht_offenses_4_years_clean_df