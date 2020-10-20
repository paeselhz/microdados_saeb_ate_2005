download_saeb_ate_2005 <-
  function(year,
           dest_folder = 'data/raw'){
    
    dir.create(dest_folder, showWarnings = FALSE, recursive = TRUE)
    
    t1 <- Sys.time()
    
    message(paste0("Baixando arquivos para ", sprintf("microdados_saeb_%s", year)))
    
    url_maker <-
      sprintf(
        "http://download.inep.gov.br/microdados/micro_saeb%s.zip",
        year
      )
    
    if(httr::GET(url_maker)$status_code != 200) {
      
      url_maker <-
        sprintf(
          "http://download.inep.gov.br/microdados/microdados_saeb_%s.zip",
          year
        )
      
    }
    
    tryCatch({
      
      download.file(
        url_maker,
        destfile = file.path(dest_folder, sprintf("microdados_saeb_%s.zip", year)),
        mode = "wb",
        quiet = TRUE
      )
      
    },
    error = function(e){
      
      message(e)
      break()
      
    })
    
    zip::unzip(
      zipfile = file.path(dest_folder, sprintf("microdados_saeb_%s.zip", year)),
      exdir = file.path(dest_folder, sprintf("microdados_saeb_%s", year))
    )
    
    if(year == 1999) {
      
      files_1999 <-
        list.files(
          path = file.path(dest_folder, sprintf("microdados_saeb_%s", year)),
          pattern = '.zip',
          full.names = TRUE,
          recursive = TRUE
        )
      
      purrr::walk(
        files_1999,
        function(file_to_unzip = .x) {
          
          zip::unzip(file_to_unzip,
                     exdir = file.path(dest_folder, sprintf("microdados_saeb_%s", year), "DADOS"))
          
          file.remove(file_to_unzip)
          
        }
      )
      
    }
    
    file.remove(file.path(dest_folder, sprintf("microdados_saeb_%s.zip", year)))
    
    t2 <- Sys.time()
    
    message("Arquivos baixados com sucesso")
    message(paste0("---- ", format(t2 - t1, digits = 2), " ----"))
    
  }
