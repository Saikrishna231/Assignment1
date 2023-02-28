install.packages("tidyverse")
library(tidyverse)

raw_data <- read.csv("data.csv")

clean_data <- na.omit(raw_data[raw_data$Field != "N", ])
write.csv(clean_data, "clean_data.csv")


clean1_data <- read.csv("data.csv")
total_data <- t.test(clean1_data$Weight..Pounds.,clean1_data$Grip, paired = TRUE)
capture.output(total_data, file = "clean_data.txt")
