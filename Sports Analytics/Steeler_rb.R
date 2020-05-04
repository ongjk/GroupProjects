



library(ggplot2)
library(gridExtra)





player <- c("Franco Harris", "Jerome Bettis", "Willie Parker", "Le'Veon Bell", "John Henry Johnson", "Frank Pollard", "Dick Hoak", "Barry Foster", "Rocky Bleier", "Rashard Mendenhall", "James Connor")
TD <- c(.031, .029, .019, .028, .025, .021, .022, .028, .025, .033, .048)
YPA <- c(4.1, 3.9, 4.3, 4.3, 4.4, 4.2, 3.5, 4.3, 4.2, 4.1, 4.5)
FUM <- c(.69, .9, .87,.94, .74, .69, .73, .79, .66, .9, .84)
REC <- c(13.8, 5.6, 8.8, 42.9, 12.1, 7.9, 10.8, 13.0, 9.2, 11.6, 18.4)
d <- data.frame(TD, YPA, FUM, REC)
rownames(d) <- c("Franco Harris", "Jerome Bettis", "Willie Parker", "Le'Veon Bell", "John Henry Johnson", "Frank Pollard", "Dick Hoak", "Barry Foster", "Rocky Bleier", "Rashard Mendenhall", "James Connor")

heatmap(as.matrix(d), scale = "column", col = heat.colors(15, alpha = 1) , Rowv = NA, Colv = NA) 

