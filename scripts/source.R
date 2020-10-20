library(dplyr)

source('functions/dict_saeb_ate_2005.R')
source('functions/download_saeb_ate_2005.R')
source('functions/read_and_process_saeb_ate_2005.R')

purrr::walk(
  seq(1995, 2005, 2),
  download_saeb_ate_2005
)

list_of_downloaded_files <-
  list.dirs(
    path = 'data/raw',
    recursive = TRUE,
    full.names = TRUE
  ) %>% 
  .[endsWith(., "DADOS")  ]

purrr::walk(
  list_of_downloaded_files,
  read_and_process_saeb_ate_2005
)

# read_and_process_saeb_ate_2005(list_of_downloaded_files[1])
