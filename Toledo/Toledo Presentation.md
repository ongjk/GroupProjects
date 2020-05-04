
Toledo Test Analysis
========================================================
author: Josh, Jefferson, Jose
date: December 9th, 2019
transition:zoom
width: 1920
height: 1080


Introduction
========================================================

- The Toledo Test is a chemistry placement exam that is designed to evaulate how well a student is prepared for college level introductory chemistry.

- It includes 20 math/chemistry questions with content up to College Algebra.

- We were given 4 numerical variables which include score, gpa, math score, and chemistry score. Additional
information was also provided for some students.



Our Goals
========================================================

- We wanted to analyze the data and see if we came up with any significant correlations. 

- We also wanted to see what will happen if we change the cut-off date for the exam and find out what other information would be useful.

- We wanted to learn new techniques when analyzing data in R.



Visualizing the Distribution
========================================================


![plot of chunk unnamed-chunk-1](Toledo Presentation-figure/unnamed-chunk-1-1.png)






Correlation Coefficient 
========================================================


<large> Our correlation coefficient is a number between -1 and 1. A correlation of -1 would be a perfect negative correlation and 1 would be a perfect positive correlation. The closer the coefficent is to 0, the less correlated the two variables are. We used the Pearson method of correlation test. The formula is below. </large>

$r = \frac{\sum{(x-m_x)(y-m_y)}}{\sqrt{\sum{(x-m_x)^2}\sum{(y-m_y)^2}}}$

$m_x$ and $m_y$ are the means of x and y variables



Correlation Between Test Score and GPA
========================================================
title: false

![plot of chunk unnamed-chunk-2](Toledo Presentation-figure/unnamed-chunk-2-1.png)


Correlation Coefficient = .27




Correlation Between Test Score and Math Grade?
========================================================

![plot of chunk unnamed-chunk-3](Toledo Presentation-figure/unnamed-chunk-3-1.png)
***

Correlation Coefficient = .23



Correlation between Test Score and Chemistry Grade
========================================================

![plot of chunk unnamed-chunk-4](Toledo Presentation-figure/unnamed-chunk-4-1.png)
***

Correlation Coefficient = .30

What if we took out the outliers? How would this affect correlation?
========================================================

![plot of chunk unnamed-chunk-5](Toledo Presentation-figure/unnamed-chunk-5-1.png)
***

Correlation Coefficient = .46


What-if Analysis
========================================================

The cutoff for passing is 16.
Filtering out the passing grades, we can find out what our passing rate is.


```r
pass <- filter(toledo, Score > 15)


passpct <- nrow(pass)/nrow(toledo)
passpct
```

```
[1] 0.1851852
```
