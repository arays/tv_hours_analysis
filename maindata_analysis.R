library(tidyverse)
library(here)
View(gss_cat)
tv_hours_table <- gss_cat %>% 
group_by(marital) %>% 
  summarise(mean_tv_hours=mean(tvhours, na.rm=T))
write_csv(tv_hours_table, here("TV_hours_by_Marital.csv"))
getwd()
