# Surfs Up

## Table of Contents
- [Overview of Analysis](#overview-of-analysis)
- [Results](#results)
- [Summary](#summary)

## Overview of Analysis
The purpose of this analysis was to analyze the island Oahu's weather data so that the client would understand how weather might have an effect a potential surf shop business. The client has mentioned they had once attempted to open a business in Hawaii but lack of understanding the weather and it's effect on the number of customers led to the business failing.

A preliminary analysis was done by checking the past years weather at June and at December which would provide the customer an image of what to expect during a "hot" summer month and a cold "winter" month.

## Results
The summary statistics of the June and December temperatures at Oahu is shown in the following figures. The stats show that there isn't too much of a difference in mean temperatures in summer and/or winter months. This was expected as the island has been known to be tropical and majority of tropical locations tend to have relatively consistent weather the whole year.

**_FIGURE 1. June Statistics_**

<img width="142" alt="June_Temperature_Statistics" src="https://user-images.githubusercontent.com/86085601/131259826-c2ed936b-a063-4fe6-b213-b27b85dd036b.png">

**_FIGURE 2. December Statistics_**

<img width="170" alt="December_Temperature_Statistics" src="https://user-images.githubusercontent.com/86085601/131259830-218ac918-fbc8-4360-9d2b-9cf9f060992a.png">

Three key things to note are:
- More December weather data still needs to be collected as June has 183 more data points. It may seem insignificant but having those additional data points could have an impact on the overall stats for December. The level of impact cannot be known yet. 
- The data percentiles show the weather in Oahu doesn't really vary in comparison to the average temp of that particular month. For example, the 75th percentile is only about 3°F higher than the mean for both months.
- It is very important for the client to be aware that although the mean temperature across the year seems to be the same, Oahu in December still has temperatures as cold as 56°F and should make note of slow business during times like that.

## Summary
To gather more weather data, additional queries can be performed such as analyzing the most recent data for both months (i.e. December 2016 and June 2017) which can be done by using the following code:
```
June_results = session.query(Measurement.tobs).\
    filter(Measurement.date == '2017-06-01').\
    filter(Measurement.date <= '2017-06-30').\
    order_by(Measurement.date).all()
```
```
December_results = session.query(Measurement.tobs).\
    filter(Measurement.date == '2016-12-01').\
    filter(Measurement.date <= '2016-12-31').\
    order_by(Measurement.date).all()
```
Performing this would help see the most recent trends in temperature for both months. 

**_FIGURE 3. June 2017 Statistics_**

<img width="171" alt="June_2017_Statistics" src="https://user-images.githubusercontent.com/86085601/131268017-8b3048e1-fe88-4e73-b78a-789445414433.png">

**_FIGURE 4. December 2016 Statistics_**

<img width="205" alt="December_2016_Statistics" src="https://user-images.githubusercontent.com/86085601/131268021-77633cfb-19cd-445a-a357-6129f25f08ca.png">

The resulting statistics show that although the summer month being hotter on average and the winter months having relatively the same temperature on average. It is important to note that based on the winter of 2016, Oahu might be getting slightly cooler as the max winter temp overall was recorded at 83°F while the hottest temperature recorded in 2016 was 78°F.