library("readxl")
library("dplyr")
library("tidyr")

#Human Trafficing file was loaded from https://data.world/datasets/human-trafficking

# Reading table 2 Human Traficing excle file

ht_offenses_clearing_2014 <- read_excel("Table_2_Human_Trafficking_Offenses_and_Clearances_by_State_2014.xlsx")
ht_offenses_clearing_2014
# Writing data to a csv file

write.csv(ht_offenses_clearing_2014, file = "Human_Trafficking_Offenses_and_Clearances_by_State_2014.csv")

# I like working with dataframs so I am turning my data into a data frame.
ht_offenses_clearing_2014_df <- data.frame(ht_offenses_clearing_2014)

# There are no column names, so I am adding the column names.
colnames(ht_offenses_clearing_2014_df) <- c("State", "commercial_sex_act_offense", "commercial_sex_act_cleared", "commercial_sex_act_under_18", "involuntary_servitude_offense", "involuntary_servitude_cleared", "involuntary_servitude_under_18","total_offenses", "total_cleared","total_under_18")

# There are 4 rows in the file that were used a data information in the excel file that are not needed.  I am deleting these rows.
ht_offenses_clearing_2014_df <- ht_offenses_clearing_2014_df[-c(1, 2, 3, 4),]

# Creating a new column for the year.
ht_offenses_clearing_2014_df <- mutate(ht_offenses_clearing_2014_df,"year" = 2014)


ht_offenses_clearing_2014_df
