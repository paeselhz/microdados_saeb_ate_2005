read_and_process_saeb_ate_2005 <-
  function(data_folder,
           dest_folder_prefix = 'data/processed') {
    
    `%>%` <- magrittr::`%>%`
    
    list_of_files <-
      list.files(
        data_folder,
        pattern = ".txt|.TXT",
        recursive = TRUE,
        full.names = TRUE
      )
    
    purrr::walk(
      list_of_files,
      function(filename = .x,
               dest_folder_prefix) {
        
        message(filename)
        
        dir.create(
          file.path(dest_folder_prefix, stringr::str_extract(filename, "[0-9]{4}")), 
          showWarnings = FALSE, 
          recursive = TRUE
        )
        
        file_save_name <-
          strsplit(filename, split = "/") %>% 
          unlist() %>% 
          dplyr::last() %>% 
          janitor::make_clean_names() %>% 
          stringr::str_replace(., '.TXT|.txt', '.rds') 
        
        tbl_read <-
          readr::read_fwf(
            filename,
            col_positions = dict_saeb_ate_2005(filename)
          )
        
        readr::write_rds(
          x = tbl_read, 
          path = file.path(dest_folder_prefix, 
                           stringr::str_extract(filename, "[0-9]{4}"),
                           file_save_name)
        )
        
        
      },
      dest_folder_prefix = dest_folder_prefix
    )
    
  }