library(tidyverse)
library(rvest)
library(janitor)

base_url <- "https://fbref.com/en/squads/7c21e445/West-Ham-United-Stats#all_matchlogs"

scrape_fixtures <- function(url) {
  fixture_list <- url %>%
    read_html()
  
  fixtures <- data.frame(
    fixture_list %>%
      html_elements("#matchlogs_for") %>%
      html_table()
  ) %>% 
    janitor::clean_names() %>% 
    filter(comp == "Premier League") %>% 
    mutate(gf = as.character(gf),
           ga = as.character(ga))
  
  return(fixtures)
}

fixture_urls <- c( "https://fbref.com/en/squads/7c21e445/2016-2017/West-Ham-United-Stats#all_matchlogs",
  "https://fbref.com/en/squads/7c21e445/2017-2018/West-Ham-United-Stats#all_matchlogs",
  "https://fbref.com/en/squads/7c21e445/2018-2019/West-Ham-United-Stats#all_matchlogs",
  "https://fbref.com/en/squads/7c21e445/2019-2020/West-Ham-United-Stats#all_matchlogs",
  "https://fbref.com/en/squads/7c21e445/2020-2021/West-Ham-United-Stats#all_matchlogs",
  "https://fbref.com/en/squads/7c21e445/2021-2022/West-Ham-United-Stats#all_matchlogs",
  "https://fbref.com/en/squads/7c21e445/2022-2023/West-Ham-United-Stats#all_matchlogs"
)

all_fixtures <- list()

for (url in fixture_urls) {
  fixtures <- scrape_fixtures(url)
  all_fixtures[[url]] <- fixtures
}

combined_fixtures <- bind_rows(all_fixtures)

view(combined_fixtures)

  











    
