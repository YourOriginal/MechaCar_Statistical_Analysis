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

In the first table, the variance is 62 which fits the 100 limit criteria. Interestingly, if we take a look at the summary of the 3 lots individually, we can see that Lot 3 has a very high variance of 170, potentially skewing the data and does not fit within the allowed standards of 100 PSI variance.

## T-Tests on Suspension Coils

In order to determine if the average PSI of our dataset is different from the population average of 1500, a T-test was performed to achieve the following results.

![T-TEST](https://user-images.githubusercontent.com/100324759/174439926-9d309f68-226e-4b76-9380-33b93c8911c1.PNG)

We can see that for our p-value we have a value that is greater than 0.05, indicating that our null hypothesis can not be rejected meaning our data's mean is not 1500. Taking this analysis further, a t-test was then performed on each individual lot.

![lot ttest](https://user-images.githubusercontent.com/100324759/174439993-a1e1688c-4d94-41f4-a513-72891f4923fd.PNG)

While 2 lots had very had p-values of 1 and 0.6 for 1 and 2 respectively, lot 3 has a smaller p value of 0.04, thus for lot 3 specifically, the null hypothesis can be rejected and has a PSI of 1500. 

## Study Design: MechaCar vs Competition

To push MechaCar into the competitive market, several more factors should be addressed. When we take a look at the perspective of the consumer a cost-benefit analysis is important as not all users will be able to afford an expensive car even if the features are amazing. We can take other factors and compare them to other cars in the market such as horse power, CO2 emissions/economical aspects, size, and when these are all measured and analyzed, we can then use the cost of the car to find a dollar cost average of certain features. This allows consumers to see how much they pay per "total benefits" of the car. With this in mind, if MechaCar is truly competitive, we can hypothesize that it has a much LOWER cost/benefit ratio. 

To measure the values we can do the folloiwng: Horse power (raw measurement comparison), CO2 -> emission/mile travelled/usage time, CO2 emission -> gas usage, then create an arbitrary ratio with cost of the car and then perform t-tests much like above on the calculated measurements to determine any statistical significance.

Overall, the study still requires alot more calculations to determine how competitive MechaCar is in the modern market but given time, the car can be fine tuned for better consumer use.

