#Divvy Bike Data Case Study
#Installing and loading required packages
install.packages("tidyverse")
install.packages("lubridate")
install.packages("ggplot2")
install.packages("readxl")
install.packages("RColorBrewer")
library(RColorBrewer)
library(tidyverse)
library(lubridate)
library(ggplot2)
library(readxl)

getwd()
#Upload Divvy Datasets 
#We'll go in chronological order, and use the full code for may2022 to review later
may2022 <- read_xlsx("2022_05-Divvy-TripData.xlsx",
                      range = NULL,
                     col_names = TRUE,
                     col_types = "text",
                     na = " ",
                     trim_ws = TRUE,
                     skip = 0,
                      n_max = Inf,
                      guess_max = min(),
                      progress = readxl_progress(),
                      .name_repair = "unique")
#We did it! Now let's do it for the rest of them :)
june2022 <- read_xlsx("2022_06-Divvy_TripData.xlsx")
july2022 <- read_xlsx("2022_07-Divvy-TripData.xlsx")
august2022 <-read_xlsx("2022_08-Divvy-TripData.xlsx")
september2022 <-read_xlsx("2022_09-Divvy-TripData.xlsx")
october2022 <-read_xlsx("2022_10-Divvy-TripData.xlsx")
november2022 <-read_xlsx("2022_11-Divvy-TripData.xlsx")
december2022 <-read_xlsx("2022_12-Divvy-TripData.xlsx")
january2023 <-read_xlsx("2023_01-Divvy-TripData.xlsx")
february2023 <-read_xlsx("2023_02-Divvy-TripData.xlsx")
march2023 <-read_xlsx("2023_03-Divvy-TripData.xlsx")
april2023 <-read_xlsx("2023_04-Divvy_TripData.xlsx")
may2023 <-read_xlsx("2023_05-Divvy-TripData.xlsx")
#Now we'll get some info about each dataset
#Confirming that column names are the same 
colnames(may2022)
colnames(june2022)
colnames(july2022)
colnames(august2022)
colnames(september2022)
colnames(october2022)
colnames(november2022)
colnames(december2022)
colnames(january2023)
colnames(february2023)
colnames(march2023)
colnames(april2023)
colnames(may2023)
#Ensuring we have the right formatting before combining data
View(may2023)
View(june2022)

#making sure that all data is formatted the same so that they can stack correctly
may2022 <- mutate(may2022,started_at = as.POSIXct(started_at, format="%Y-%M-%D %H:%M:%S")
                  ,ended_at = as.POSIXct(ended_at, format="%Y-%M-%D %H:%M:%S")
                  ,start_lat = as.double(start_lat)
                  ,end_lat = as.double(end_lat)
                  ,end_station_id = as.character(end_station_id)
                  ,start_station_id = as.character(start_station_id)
                  ,start_lng = as.double(start_lng)
                  ,end_lng = as.double(end_lng)
                  ,ride_length = as.POSIXct(ride_length, format="%Y-%M-%D %H:%M:%S")
                  ,day_of_week = as.integer(day_of_week)
                  ,mode_day_of_week = as.integer(mode_day_of_week)
                  ,mean_ride_length = as.double.difftime(mean_ride_length, units = "auto"))
june2022<- mutate(june2022,started_at = as.POSIXct(started_at, format="%Y-%M-%D %H:%M:%S")
                  ,ended_at = as.POSIXct(ended_at, format="%Y-%M-%D %H:%M:%S")
                  ,start_lat = as.double(start_lat)
                  ,end_lat = as.double(end_lat)
                  ,end_station_id = as.character(end_station_id)
                  ,start_station_id = as.character(start_station_id)
                  ,start_lng = as.double(start_lng)
                  ,end_lng = as.double(end_lng)
                  ,ride_length = as.POSIXct(ride_length, format="%Y-%M-%D %H:%M:%S")
                  ,day_of_week = as.integer(day_of_week)
                  ,mode_day_of_week = as.integer(mode_day_of_week)
                  ,mean_ride_length = as.double.difftime(mean_ride_length, units = "auto"))
july2022 <- mutate(july2022,started_at = as.POSIXct(started_at, format="%Y-%M-%D %H:%M:%S")
                   ,ended_at = as.POSIXct(ended_at, format="%Y-%M-%D %H:%M:%S")
                   ,start_lat = as.double(start_lat)
                   ,end_lat = as.double(end_lat)
                   ,end_station_id = as.character(end_station_id)
                   ,start_station_id = as.character(start_station_id)
                   ,start_lng = as.double(start_lng)
                   ,end_lng = as.double(end_lng)
                   ,ride_length = as.POSIXct(ride_length, format="%Y-%M-%D %H:%M:%S")
                   ,day_of_week = as.integer(day_of_week)
                   ,mode_day_of_week = as.integer(mode_day_of_week)
                   ,mean_ride_length = as.double.difftime(mean_ride_length, units = "auto"))
august2022 <- mutate(august2022,started_at = as.POSIXct(started_at, format="%Y-%M-%D %H:%M:%S")
                     ,ended_at = as.POSIXct(ended_at, format="%Y-%M-%D %H:%M:%S")
                     ,start_lat = as.double(start_lat)
                     ,end_lat = as.double(end_lat)
                     ,end_station_id = as.character(end_station_id)
                     ,start_station_id = as.character(start_station_id)
                     ,start_lng = as.double(start_lng)
                     ,end_lng = as.double(end_lng)
                     ,ride_length = as.POSIXct(ride_length, format="%Y-%M-%D %H:%M:%S")
                     ,day_of_week = as.integer(day_of_week)
                     ,mode_day_of_week = as.integer(mode_day_of_week)
                     ,mean_ride_length = as.double.difftime(mean_ride_length, units = "auto"))
september2022 <- mutate(september2022,started_at= as.POSIXct(started_at, format="%Y-%M-%D %H:%M:%S")
                        ,ended_at = as.POSIXct(ended_at, format="%Y-%M-%D %H:%M:%S")
                     ,start_lat = as.double(start_lat)
                     ,end_lat = as.double(end_lat)
                     ,end_station_id = as.character(end_station_id)
                     ,start_station_id = as.character(start_station_id)
                     ,start_lng = as.double(start_lng)
                     ,end_lng = as.double(end_lng)
                     ,ride_length = as.POSIXct(ride_length, format="%Y-%M-%D %H:%M:%S")
                     ,day_of_week = as.integer(day_of_week)
                     ,mode_day_of_week = as.integer(mode_day_of_week)
                     ,mean_ride_length = as.double.difftime(mean_ride_length, units = "auto"))
october2022 <- mutate(october2022,started_at = as.POSIXct(started_at, format="%Y-%M-%D %H:%M:%S")
                      ,ended_at = as.POSIXct(ended_at, format="%Y-%M-%D %H:%M:%S")
                        ,start_lat = as.double(start_lat)
                        ,end_lat = as.double(end_lat)
                        ,end_station_id = as.character(end_station_id)
                        ,start_station_id = as.character(start_station_id)
                        ,start_lng = as.double(start_lng)
                        ,end_lng = as.double(end_lng)
                       ,ride_length = as.POSIXct(ride_length, format="%Y-%M-%D %H:%M:%S")
                        ,day_of_week = as.integer(day_of_week)
                        ,mode_day_of_week = as.integer(mode_day_of_week)
                        ,mean_ride_length = as.double.difftime(mean_ride_length, units = "auto"))
november2022 <- mutate(november2022,started_at = as.POSIXct(started_at, format="%Y-%M-%D %H:%M:%S")
                       ,ended_at = as.POSIXct(ended_at, format="%Y-%M-%D %H:%M:%S")
                       ,start_lat = as.double(start_lat)
                       ,end_lat = as.double(end_lat)
                       ,end_station_id = as.character(end_station_id)
                       ,start_station_id = as.character(start_station_id)
                       ,start_lng = as.double(start_lng)
                       ,end_lng = as.double(end_lng)
                       ,ride_length = as.POSIXct(ride_length, format="%Y-%M-%D %H:%M:%S")
                       ,day_of_week = as.integer(day_of_week)
                       ,mode_day_of_week = as.integer(mode_day_of_week)
                       ,mean_ride_length = as.double.difftime(mean_ride_length, units = "auto"))
december2022 <- mutate(december2022,started_at = as.POSIXct(started_at, format="%Y-%M-%D %H:%M:%S")
                       ,ended_at = as.POSIXct(ended_at, format="%Y-%M-%D %H:%M:%S")
                       ,start_lat = as.double(start_lat)
                       ,end_lat = as.double(end_lat)
                       ,end_station_id = as.character(end_station_id)
                       ,start_station_id = as.character(start_station_id)
                       ,start_lng = as.double(start_lng)
                       ,end_lng = as.double(end_lng)
                       ,ride_length = as.POSIXct(ride_length, format="%Y-%M-%D %H:%M:%S")
                       ,day_of_week = as.integer(day_of_week)
                       ,mode_day_of_week = as.integer(mode_day_of_week)
                       ,mean_ride_length = as.double.difftime(mean_ride_length, units = "auto"))
january2023 <- mutate(january2023,started_at = as.POSIXct(started_at, format="%Y-%M-%D %H:%M:%S")
                      ,ended_at = as.POSIXct(ended_at, format="%Y-%M-%D %H:%M:%S")
                      ,start_lat = as.double(start_lat)
                      ,end_lat = as.double(end_lat)
                      ,end_station_id = as.character(end_station_id)
                      ,start_station_id = as.character(start_station_id)
                      ,start_lng = as.double(start_lng)
                      ,end_lng = as.double(end_lng)
                      ,ride_length = as.POSIXct(ride_length, format="%Y-%M-%D %H:%M:%S")
                      ,day_of_week = as.integer(day_of_week)
                      ,mode_day_of_week = as.integer(mode_day_of_week)
                      ,mean_ride_length = as.double.difftime(mean_ride_length, units = "auto"))
february2023 <- mutate(february2023,started_at = as.POSIXct(started_at, format="%Y-%M-%D %H:%M:%S")
                       ,ended_at = as.POSIXct(ended_at, format="%Y-%M-%D %H:%M:%S")
                       ,start_lat = as.double(start_lat)
                       ,end_lat = as.double(end_lat)
                       ,end_station_id = as.character(end_station_id)
                       ,start_station_id = as.character(start_station_id)
                       ,start_lng = as.double(start_lng)
                       ,end_lng = as.double(end_lng)
                       ,ride_length = as.POSIXct(ride_length, format="%Y-%M-%D %H:%M:%S")
                       ,day_of_week = as.integer(day_of_week)
                       ,mode_day_of_week = as.integer(mode_day_of_week)
                       ,mean_ride_length = as.double.difftime(mean_ride_length, units = "auto"))
march2023 <- mutate (march2023,started_at = as.POSIXct(started_at, format="%Y-%M-%D %H:%M:%S")
                     ,ended_at = as.POSIXct(ended_at, format="%Y-%M-%D %H:%M:%S")
                  ,start_lat = as.double(start_lat)
                  ,end_lat = as.double(end_lat)
                  ,end_station_id = as.character(end_station_id)
                  ,start_station_id = as.character(start_station_id)
                  ,start_lng = as.double(start_lng)
                  ,end_lng = as.double(end_lng)
                  ,ride_length = as.POSIXct(ride_length, format="%Y-%M-%D %H:%M:%S")
                  ,day_of_week = as.integer(day_of_week)
                  ,mode_day_of_week = as.integer(mode_day_of_week)
                  ,mean_ride_length = as.double.difftime(mean_ride_length, units = "auto"))
april2023 <- mutate(april2023,started_at = as.POSIXct(started_at, format="%Y-%M-%D %H:%M:%S")
                    ,ended_at = as.POSIXct(ended_at, format="%Y-%M-%D %H:%M:%S")
                    ,start_lat = as.double(start_lat)
                    ,end_lat = as.double(end_lat)
                    ,end_station_id = as.character(end_station_id)
                    ,start_station_id = as.character(start_station_id)
                    ,start_lng = as.double(start_lng)
                    ,end_lng = as.double(end_lng)
                    ,ride_length = as.POSIXct(ride_length, format="%Y-%M-%D %H:%M:%S")
                    ,day_of_week = as.integer(day_of_week)
                    ,mode_day_of_week = as.integer(mode_day_of_week)
                    ,mean_ride_length = as.double.difftime(mean_ride_length, units = "auto"))
may2023 <- mutate(may2023,started_at = as.character(started_at)
                  ,ended_at = as.character(ended_at)
                  ,start_lat = as.double(start_lat)
                  ,end_lat = as.double(end_lat)
                  ,end_station_id = as.character(end_station_id)
                  ,start_station_id = as.character(start_station_id)
                  ,start_lng = as.double(start_lng)
                  ,end_lng = as.double(end_lng)
                  ,ride_length = as.POSIXct(ride_length, format="%Y-%M-%D %H:%M:%S")
                  ,day_of_week = as.integer(day_of_week)
                  ,mode_day_of_week = as.integer(mode_day_of_week)
                  ,max_ride_length = as.character(max_ride_length)
                  ,mean_ride_length = as.double.difftime(mean_ride_length, units = "auto"))

View(may2023)
View(april2023)

#It looks like the ride_length column is combining both the date and time in each column
#Here's an example of what's going on
example_ride_length <- c("1899-12-31 00:04:09")
example_ride_length
str_sub(example_ride_length,12,19)

#Now let's apply that to the data
str_sub(april2023$ride_length,12)
View(april2023)

#Stack individual monthly data into a big data frame
all_trips <- bind_rows(may2022,june2022,july2022,august2022,september2022,october2022
                       ,november2022,december2022,january2023,february2023,march2023
                      ,april2023,may2023)

#Inspecting new table
View(all_trips)
dim(all_trips) #565,6916 rows, 26 columns
head(all_trips)
tail(all_trips)
table(all_trips$member_casual)

#Add columns to list month, day, and year of each ride
all_trips$date <- as.Date(all_trips$started_at, tryFormats = c("%Y-%m-%d", "%Y/%M%D"))
all_trips$month <- format(as.Date(all_trips$date), "%m")
all_trips$day <- format(as.Date(all_trips$date), "%d")
all_trips$year <- format(as.Date(all_trips$date), "%Y")
all_trips$day_of_week <- format(as.Date(all_trips$date), "%A")

#Checking our work for errors
head(all_trips$date)
all_trips[c("date", "month")]
all_trips[c("date","month","year","day_of_week")]

#The ride length column includes a simple calculation of ended_at - started_at
#however, the day, month, and year are included, which leads to confusing metrics
#lets change that column based on ride length in seconds 
all_trips$ride_length <- difftime(all_trips$ended_at,all_trips$started_at)

#Inspect column structure
str(all_trips)

#convert 'ride_length_seconds' from factor to numeric so we can run calculations
is.numeric(all_trips$ride_length)
all_trips$ride_length<-as.numeric(as.character(all_trips$ride_length))
is.numeric(all_trips$ride_length)

#removing misleading/"bad" data
#we will create Version2 (v2) since data is being removed
#now trying to figure out how to delete/drop rows in R with conditions
#removing ride_length with negative values, and ride_length with over 24 hours (86400 seconds)
all_trips_v2 <- all_trips[!(all_trips$start_station_name == "HQ QR" | all_trips$ride_length<0),]
is.numeric(all_trips_v2$ride_length)



#this is where we're at now, trying to make sure that extraneous ride_lengths are not included in summary statistics
all_trips_v1 <- all_trips[!(all_trips$start_station_name == "HQ QR" | all_trips$ride_length<1),]
all_trips_v2 <- subset(all_trips_v1, ride_length<86400)


all_trips_v2[c("ride_length")]
#Conducting descriptive analysis on ride_length in seconds
#mean doesn't work on data.frames, so we will need to convert to matrices
summary(all_trips_v1$ride_length, na.rm = TRUE)

#Results: 
#  Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
#      1     373     670    1274    1224 2175468 5400140 
#Compare members and casual users
aggregate(all_trips_v2$ride_length~all_trips_v2$member_casual, FUN = mean)
#mean for casual: 1529, mean for member: 776
aggregate(all_trips_v2$ride_length~all_trips_v2$member_casual,FUN = median)
#median for casual: 889, median for member: 557
aggregate(all_trips_v2$ride_length~all_trips_v2$member_casual,FUN = max)
#max for casual: 86,314, max for meber: 83,647
aggregate(all_trips_v2$ride_length~all_trips_v2$member_casual,FUN = min)
#min for both: 1
#average ride time by each day for members vs casual users
aggregate(all_trips_v2$ride_length~all_trips_v2$member_casual + all_trips_v2$day_of_week
          , FUN = mean)
#the results gave us the days out of order! using the ordered() function to fix that
all_trips_v2$day_of_week <- ordered(all_trips_v2$day_of_week, levels=c("Sunday"
            ,"Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"))                                       
#now we can run the average ride time (seconds) by each day for members vs casual users
aggregate(all_trips_v2$ride_length~all_trips_v2$member_casual, FUN = mean)
aggregate(all_trips_v2$ride_length~all_trips_v2$member_casual + all_trips_v2$day_of_week, FUN = mean)
#results: 
#  all_trips_v2$member_casual all_trips_v2$day_of_week all_trips_v2$ride_length
#1                      #casual                 Sunday                1747.4101
#2                      member                   Sunday                 871.5001
#3                      casual                   Monday                1648.8864
#4                      member                   Monday                 766.4780
#5                      casual                  Tuesday                1366.8967
#6                      member                  Tuesday                 744.9385
#7                      casual                Wednesday                1259.9750
#8                      member                Wednesday                 725.7843
#9                      casual                 Thursday                1361.7886
#10                     member                 Thursday                 752.9168
#11                     casual                   Friday                1376.9812
#12                     member                   Friday                 742.8552
#13                     casual                 Saturday                1678.3774
#14                     member                 Saturday                 864.0031

#analyze ridership data by type and weekday
all_trips_v2 %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>%  #creat weekday field using wday()
  group_by(member_casual, weekday) %>%  #group by usertype and weekday
  summarise(number_of_rides = n()							#calculate the number of rides and average duration 
            ,average_duration = mean(ride_length)) %>% 		#calculate the average duration
  arrange(member_casual, weekday)	
#results show up with a tibble 
#visualize number of rides by rider type
all_trips_v2 %>% 
  mutate(weekday=wday(started_at,label = TRUE)) %>% 
  group_by(member_casual,weekday) %>% 
  summarise(number_of_rides = n()
    ,average_duration = mean(ride_length)) %>% 
  arrange(member_casual,weekday) %>% 
  ggplot(aes(x = weekday, y = number_of_rides, fill = member_casual)) +
  geom_col(position = "dodge") +
labs(text, title = "Average Number of Rides by Rider Type")
#Now a visualization for the average ride duration
all_trips_v2 %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>% 
  group_by(member_casual, weekday) %>% 
  summarise(number_of_rides = n()
            ,average_duration=mean(ride_length)) %>% 
  arrange(member_casual,weekday) %>% 
  ggplot(aes(x=weekday, y=average_duration, fill=member_casual)) +
  geom_col(position = "dodge") +
  labs(text, title = "Trip Duration* by Member Type", subtitle = "*in seconds")
#Summary file with data from entire 12 month span
counts <- aggregate(all_trips_v2$ride_length ~ all_trips_v2$member_casual +
                      all_trips_v2$day_of_week, FUN = mean)
write.csv(counts, file = '~/Desktop/        /Divvy Bike Share Data-Case Study 1/divvy bikeshare data (workbook)/avg_ride_length.csv')
getwd()

total_rides_members <- all_trips_v2 %>% 
  group_by(member_casual,ride_length) %>% 
  summarise(ride_length_by_user = sum(member_casual == "member"))
write.csv(counts, file = '~/Desktop/        /Divvy Bike Share Data-Case Study/all_trips_full.csv'')

all_trips_v2 %>% 
  mutate(weekday = wday(started_at, label = TRUE)) %>% 
  group_by(member_casual, weekday) %>% 
  summarise(number_of_rides = n()
            ,average_duration=mean(ride_length)/60) %>% 
  arrange(member_casual,weekday) %>% 
  ggplot(aes(x=weekday, y=average_duration, fill=member_casual))+ 
  geom_col(position = "dodge") +
  labs(text, title = "Average Ride Length by Weekday")
  

write.csv(all_trips,file = '~/Desktop/        /Divvy Bike Share Data-Case Study/all_trips_full.csv')


