library(tidyverse)
load("rdas/murders.rda")
load(file.choose())

murders %>% mutate (abb= reorder(abb, rate))%>%
  ggplot(aes(abb, rate))+
  geom_bar(width=0.5, stat="identity", color = "black")+
  coord_flip()


#save plots
ggsave("figs/barplot.png")
