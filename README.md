# MechaCar Statistical Analysis

Understanding the logistics and mechanics behind vehicle usage and the various metrics involved plays a crucial role in both improving the consumer satisfaction all the while ensuring that the company cna maintain a level of standards to place them further above the competition. One of which are the use of suspension coils. In modern time, it is difficult to go by without a suspension coil as it prevents potential damage to the vehicle and user during driving. In this analysis, we will be using R to determine the pounds per sq inch (PSI) of the suspension coils of AutosRUs' and compare them to the competition using various T-Tests.


## Linear Regression

Data was initially read from the given csv files in R studio as a data frame for miles per gallon data (mpg). Performing a multiple linear regression analysis on the 6 variables: vehicle length, weight, spoiler angle, clearance and AWD and then summarizing the data yielded the following results.

![MPG table](https://user-images.githubusercontent.com/100324759/174409961-99ea766a-b64c-42d1-823f-851906077c5a.PNG)

The most important column of the table is the P-Values. Small P-values (P<0.05) such as those for length, width, and clearance show statistical significance that these values provide predictable/non-random variation between data points. On the other hand, larger P-values such as those for the remaining, do show great variance in data. 

The overall p-value of the whole data is 5.35<sup>-11</sup> thus allowing us to reject our null hypothesis and also indicating that the slope of the line is not 0. Further supported by the R<sup>2</sup> value of 0.71, we can say that the model can predict MPG effectively.

## Summary Statistics on Suspension Coils

Similar tests were done on the suspension coil data, we opted for a dataframe that contained gropued lots to better summarize the data then performing the t-test afterwards on both the overall lots, and individual lots.
The csv was read, then the groupby function was chained with the summarize function to find the mean, median, variance, and standard deviation of the data set.

**Initial Lot Summary:** 

![Lots summary](https://user-images.githubusercontent.com/100324759/174414683-d14a65e8-3186-491b-91b1-e374c3a18cce.PNG)


**T-Tests:**

All

![Lots summary](https://user-images.githubusercontent.com/100324759/174414731-4e7b7a2f-e70d-4145-959e-4d2586dbad07.PNG)

Lot 1,2,3

![lot 1,2,3](https://user-images.githubusercontent.com/100324759/174414761-39490b39-5007-453a-b6fe-51e73e7c430e.PNG)

In the first table, the variance is 62 which fits the 100 limit criteria. Interestingly, if we take a look at the summary of the 3 lots individually, we can see that Lot 3 has a very high variance of 170, potentially skewing the data and does not fit within the allowed standards.

