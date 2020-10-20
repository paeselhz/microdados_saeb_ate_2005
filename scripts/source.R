library(dplyr)

source('functions/dict_saeb_ate_2005.R')
source('functions/download_saeb_ate_2005.R')
source('functions/read_and_process_saeb_ate_2005.R')

purrr::walk(
  seq(1995, 2005, 2),
  download_saeb_pre_2007
)

list_of_downloaded_files <-
  list.dirs(
    path = 'data/raw',
    recursive = TRUE,
    full.names = TRUE
  ) %>% 
  .[endsWith(., "DADOS")  ]

read_and_process_saeb_pre_2007(list_of_downloaded_files[4])
