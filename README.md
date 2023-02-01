# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

Looking at the values on this table, you can see that two varibles contribute to the impact on miles per gallon. It is the vehicle length and the ground clearance. 
![2023-01-30 (2)](https://user-images.githubusercontent.com/114030563/215416779-8968966c-df04-44d1-b384-777a814dc60d.jpg)

The collumn that says Pr(<|t|) is the one that we are looking at to determine impact. If it is lower than .05, then it will have a great amount of impact.
I am suprise that the weight of the vehicle doesn't have a more impact on the mpg. I would have also liked to have seen the type of engine and how that might impact both the weight and performance of the vehicle.

Looking at the slope, it seems to be going upwards on the x axis for both slopes.

![Vehicle_length_slope](https://user-images.githubusercontent.com/114030563/215875930-503e3723-db54-48da-ab0f-1e0e6b39a560.png)

![ground_clearance_slope](https://user-images.githubusercontent.com/114030563/215875996-139270b7-03b5-4a23-9ca9-6c96cb9c44a9.png)


## Summary Statistics on Suspension Coils

If we are looking at the table for the suspensions, we will notice that the first two lots are very similiar to each other. There is very little variance between them. The one that is different is lot 3. It has a mean of less than 1500 pounds per square inch. It also has a variance of over a 100. This means that something is going on in this lot that has wildly differing results.

![2023-01-31](https://user-images.githubusercontent.com/114030563/215878415-cc32ea01-9be5-4c7f-ac20-aa73e561a76a.png)

## T-Tests on Suspension Coils

Since there was some change in variance in how the manufactoring lots suspensions, it needs to be looked at further. My hypothesis was that there was significant change that could impact the quality of the suspensions. I decided to do a t-test to find if that is true. Lot one had a p-value of 1 and lot 2 had a p-value of .6072 while lot 3 had a p-value as small as .04168. If the p-value reached below .05 then we will accept that there was significant change in quality that impacts the suspension.

## Study Design: MechaCar vs Competition

If we want to compare the MechaCar to other competetion, then the following stats are needed for some comparison sake: top speed, acceleration, average mpg in both city and highway, cost for parts and maintance, depreciation, and safety rating. Acceleration and the mpg will have a heavy impact on the selling point. This statement will be my alternative hypothesis on what the average customer will think when trying to compare MechaCar to the competition. I would do a linear model like above to see if it is accurate. I would need to get the p-value and r-squared for the acceleration and the mpg.
Another hypothesis will be that the depreciation will have the highest impact on how long a customer will hold onto MechaCar. With this hypothesis, I would try to do a t-test. I would need to have the populations p-values for all the stats and compare it to the depreciation p-value.
