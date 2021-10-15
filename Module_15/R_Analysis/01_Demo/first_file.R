x <- 3
x <- 5
numlist <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9)
name of function>
demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)
demo_table2 <- RJSONIO(txt='demo.json')
library(jsonlite)
demo_table2 <- fromJSON(txt='demo.json')
x <- c(3, 3, 2, 2, 5, 5, 8, 8, 9)
x[3]

demo_table[3,"Year"]
demo_table[3,3]
demo_table$"Vehicle_Class"
demo_table$"Vehicle_Class"[2]
filter_table <- demo_table2[demo_table2$price > 10000,]
filter_table2 <- subset(demo_table2, price > 10000 & drive == "4wd" & "clean" %in% title_status) #filter by price and drivetrain
filter_table3 <- demo_table2[("clean" %in% demo_table2$title_status) & (demo_table2$price > 10000) & (demo_table2$drive == "4wd"),]
?sample()
sample(c("cow", "deer", "pig", "chicken", "duck", "sheep", "dog"), 4)