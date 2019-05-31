
library(gtrendsR)

library(tidyverse)


library(trendyy)

prod_type <- c("Lippe", "Auge", "Teint", "Nagel")

prod_type_trends <- trendy(prod_type, from = "2015-01-01", to = Sys.Date())


prod_type_trends


prod_type_trends %>% 
  get_interest() %>% 
  ggplot(aes(date, hits, color = keyword)) +
  geom_line() +
  geom_point(alpha = .2) +
  theme_minimal() +
  theme(legend.position = "bottom") +
  labs(x = "", 
       y = "Relative Search Popularity",
       title = "Google Search Popularity")
