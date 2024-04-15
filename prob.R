library(tidyverse)

a <- rbinom(10000,3,0.3)
data <- data.frame(a)
data%>%
  count(a)%>%
  mutate(prob=n / sum(n))
ggplot(data,aes(x=a))+
  geom_histogram()
#VERY CLOSE IF RBINOM SIZE DECREASE
#equal
dbinom(3,3,0.3)

#or 
pbinom(2,3,0.3,lower.tail = FALSE)
#ALL SHOWS 3TH BAR / ALL BAR SUMMER 

