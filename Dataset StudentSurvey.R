library(tidytext)
library(dplyr)


studentsurvey <- read.csv("StudentSurvey.csv")
v48 <- studentsurvey[, 48]
v48 <- tolower(v48)
install.packages("httr")

tibble(v48 = v48) %>% 
  unnest_tokens(word, v48) %>%    
  anti_join(stop_words) %>%    
  count(word, sort = TRUE)
