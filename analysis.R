library(tidyverse)
load("rda/murders.rdata")

murders%>%mutate(abb=reorder(abb,rate))%>%
  ggplot(aes(abb,rate))+
  geom_bar(width = 0.5,stat="identity",col="black")+
  coord_flip()

ggsave("figs/barplot.png")