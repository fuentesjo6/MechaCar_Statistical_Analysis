# MechaCar Statistical Analysis 

## Linear Regression to Predict MPG

![](https://github.com/fuentesjo6/MechaCar_Statistical_Analysis/blob/main/Resources/linear_regrssion.png)

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - We can see from the above figure that the vehicle length and the ground clearence coefficients have a high level of significance in predicting miles per gallon (MPG). 

### Is the slope of the linear model considered to be zero? Why or why not?
  - The slope would be considered zero since it is such a small number.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

  - The linear regression model of residual standard error: 8.774 which is ok at predicting the MPG for the Mechacar.



## Summary Statistics on Suspension Coils 🧰

  - The coils for the Mechacar suspension state that the variance must not exceed 100 PSI. As the image below shows the variance does not exceed 100 PSI for the avereage of the lots.
  
  
  - ![](https://github.com/fuentesjo6/MechaCar_Statistical_Analysis/blob/main/Resources/total_summary_coil.png)
  
  - The variance for the individual lots is a different story, as the image shows below lots 1 and 2 were well below the 100 PSI variance standard with a variace of 0.979 for lot 1 and 7.46 for lot 2. Lot 3 however was well above the maximum PSI varaice allowed with a variance of 170.28. 
  
  
  - ![](https://github.com/fuentesjo6/MechaCar_Statistical_Analysis/blob/main/Resources/lot_summary_stats.png)

## T-Tests on Suspension Coils

### T-Test results performed on all lots:
![](https://github.com/fuentesjo6/MechaCar_Statistical_Analysis/blob/main/Resources/T.Test_all_lots.png)

### T-Test results for individual lots:
  - ### Lot 1:
  - ![](https://github.com/fuentesjo6/MechaCar_Statistical_Analysis/blob/main/Resources/lot1_t-test.png)
      - Lot 1 has a p-value of 1 which is statistically significant it also is reflective to the mean of the population. 
  - ### lot 2:
  - ![](https://github.com/fuentesjo6/MechaCar_Statistical_Analysis/blob/main/Resources/lot2_t-test.png)
      - Lot 2 has a p-value of 0.60 and it is not considered statistically significant. 
  - ### lot 3:
  - ![](https://github.com/fuentesjo6/MechaCar_Statistical_Analysis/blob/main/Resources/lot3_t-test.png)
      - Lot 3 has a p-value of 0.04 and that is statistically significant. 

## Study Design: MechaCar vs Competition

  - Consumers are interested in always getting the most for their money so comaparing the MPG vs any other competitor utilizing the same statistical comparisions we completed here would very easily answer our null hypothesis, is Mechacar a better car in terms of cost and MPG or is the competitors. 
