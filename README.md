# MechaCar_Statistical_Analysis
## Project Overview
Aissist AutoRU's to analyze metrics of manufacturing a new car prototype, as well as compare the car performance with different manufacture lots. 

## Linear Regression to Predict MPG

![Summary_lm](https://user-images.githubusercontent.com/94089680/162580604-06717f81-292f-442d-b6d8-5625bdd6d321.png)

There are 3 takeaways for the linear regression to predict MPG analysis.

- "0" usually is the variance of a non-random variable. Based on the analysis result given, the vehicle_length and ground_clearance are the most significant variables that show a non-random effect on MPG of MechaCar. 

- The null hypothesis states that the slope = 0. Based on the analysis, we concluded that the slope of the linear model cannot considered to be zero. As we can see the p-value is 5.35x10^-11. When p-value is lower than the extreme level which is 0.05%, the p-value rejected the null hypothesis. 

- The r-squared value 0.7149 shows that linear regression model predict the mpg of the MechaCar prototype with about 71.5% accuracy. Eventhough is not a significant high percentage of the statistics, the linear regression model shows a moderate positive correlations with all the independant variables. 

## Summary Statistics on Suspension Coils

- Lot Summary
![Manufacturing_Lot](https://user-images.githubusercontent.com/94089680/162584043-bf0ba2f2-f4f7-4504-b846-af9950c36ca0.png)

- Total Summary
![total_summary](https://user-images.githubusercontent.com/94089680/162584087-864ffaaa-fe9b-4f59-8287-d5b8e72e1193.png)

Based on the result given on the total summary table, the overall variance is under 100 psi. It meets the specifications of the requirement. However, when we create a lot summary, the variance in lot 3 is over 100 psi. This issue can be when we randomly chosen samples from the lot, there is higher probability of not meeting the requirement for suspension coils.  

## T-Tests on Suspension Coils
### T-Test for entire lot

![One_sample_test](https://user-images.githubusercontent.com/94089680/162601355-c102eef7-3d64-422b-8840-c6747a7a934d.png)

As we known that the significant level of the probability test is 0.05. Based on the p-value for the entire lot, it is failed to reject the null hypothesis. In this case, we can't rejext the sample mean may equal to the population mean. 

### T-Test for Three Lots

![t-test per lot](https://user-images.githubusercontent.com/94089680/162601466-07038d4c-50c4-441c-a596-746e3afd595f.png)

- Lot 1
Based on the significant level is 0.05, lot 1 failed to rejected the null hypothesis because of the p-value = 1. It also shown the confidence interval is very small in this case. It may implying that when p-value getting larger, the confidence interval is getting smaller. 
- Lot 2
Based on the significant level is 0.05, lot 2 also failed to rejected the null hypothesis because of the p-value = 0.607. The confidence level compare to lot 1, it relatively getting a bit larger. However, the confidence level still small in this case. 
- Lot 3
Based on the significant level is 0.05, lot 3 successfully rejected the null hypothesis because of the p-value = 0.04168. Compare all these three lots, lot 3 has the largest confidence interval. 

## Study Design: MechaCar vs Competition

The study of MechaCar are comparing car models across different manufacturers over the passed years. It also comes with some factors that customers will take in consideration when they planning to purchase a car. 

### Metrics
Collect data from all manufactorers in the last 5 years. 
- Selling price of first hand market
- Selling price of second hand market
- Engine type (gasoline, hybrid, eletric or diesel)
- MPG (car fuel efficiency)
- User location/ usage type (ex. city, countryside, personal, family etc.)

### Hypothesis : Null vs Alternative
- H0: MechaCar has a equivalent hedging value based on the performance of all key factors of its genre.
- Ha: MechaCar has a over/under estimate hedging value based on the performance of all key factors of its genre.

### Statistical test to test the hypothesis
I will use two-sample t-test to observed the first hand market price and second hand market price to compute the hedging value. I may also use multiple linear regression to demostrate the relationship between car performance and the selling price. When the result returns, we can analysis the MechaCar's hedging value. 
