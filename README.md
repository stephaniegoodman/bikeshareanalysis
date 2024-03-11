# Divvy BikeShare User Analysis
Divvy Bikeshare is the primary medium for rented bicycle transportation in the city of Chicago. Those who use the platform have the option to pay for individual usage as a casual user, or become a member by paying an annual subscription. Over the past year, Divvy stakeholders have continously reviewed revenue, and requested a formal analysis on the 2022-2023 fiscal year to review rider trends, and note the key differences between casual and member usage. Upon completion of this analysis, the data team will present on these findings and provide data-driven suggestions regarding Key Performance Indicators (KPIs) such as average ride length, percentage of rides by user type, and frequency of usage. 

## Process-Driven Documentation and Deliverables
- Full stakeholder presentation with insights, visuals, and recommendations can be found [here](<https://github.com/stephaniegoodman/bikeshareanalysis/raw/main/2023_07_Divvy%20Bike%20Share%20Analysis_Stephanie%20Goodman.pptx>).
- R Script with records of all data loading, cleaning, transformation, and visualization can be found [here](https://github.com/stephaniegoodman/bikeshareanalysis/blob/5149892fa49134ce5f8caf086c3163e8fd4caaec/divvybikeshare.r).
- Cleaned excel spreadsheet for a single month out of the 12 month aggregation, with pivot tables can be found [here](https://github.com/stephaniegoodman/bikeshareanalysis/raw/main/2022_12-Divvy-TripData.xlsx).

## High Level Analysis
1. Members tend to take more Divvy rides year-round
  - On an annual level, there aren't many stark differences between member and casual rides.
  - However, on a month-to-month basis, member users use the service more consistently, especially during the winter months.
  - This can be seen in the shift of user type based on the cooler and warmer months
    
<img width="325" alt="Screen Shot 2024-03-08 at 3 08 14 PM" src="https://github.com/stephaniegoodman/bikeshareanalysis/assets/65201326/8a1db5d1-4fa8-4bba-895d-e7105e3f4128">

2. Casual members tend to take longer daily trips
  - From May 2022-2023, casual members had an average ride length of 25 minutes, whereas the average ride length for members was 8 minutes.
    
<img width="219" alt="Screen Shot 2024-03-08 at 3 10 30 PM" src="https://github.com/stephaniegoodman/bikeshareanalysis/assets/65201326/962a9eb6-6c86-4c58-b4da-9a50201285e5">

3. Member users show decreased weekday variability in ride length
  - Across both user types, there is an increase in weekend usage annualy, and a decrease in weekday rides. That being said, there is a much higher variability in casual users, and members tend to take rides of similar length despite the day of week.
    
<img width="311" alt="Screen Shot 2024-03-08 at 3 13 17 PM" src="https://github.com/stephaniegoodman/bikeshareanalysis/assets/65201326/75576057-6a93-407d-a576-93b22a598424">

4. Number of Rides Notably Decreases in Winter Months
  - Number of rides taken decreases signiifcantly in the winter months, and usage peaks in July.
<img width="251" alt="Screen Shot 2024-03-08 at 3 14 46 PM" src="https://github.com/stephaniegoodman/bikeshareanalysis/assets/65201326/5aea4a66-9e04-45bc-90cc-0db20423bf22">

5.Annual Members Take More Trips Overall
    - Regardless of seasonality, members took more bike rides than casual users.
      
<img width="289" alt="Screen Shot 2024-03-08 at 3 16 14 PM" src="https://github.com/stephaniegoodman/bikeshareanalysis/assets/65201326/97499325-212d-416c-bae8-ee6935deedd4">


## Evidence-Based Action Steps
1. Offer incentives to casual users to convert to a membership in the warmer months while usage is high.
2. Advertise exclusive promotions or benefits for annual members during high usage periods, including weekends and holidays.
3. Offer "weekday" or "commute" discounts to promote weekday and off-season bike usage.
4. Use creative strategies to reward longer bike trips for annual users, such as weekly/quarterly/annual usage reports.
5. Send out a user survey to annual memebrs inquiringn about what led them to convert from casual to member status.




