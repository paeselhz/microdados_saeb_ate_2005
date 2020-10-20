dict_saeb_ate_2005 <-
  function(
    file_name
  ) {
    
    file_name <- toupper(file_name)
    
    if(stringr::str_detect(file_name, "1995")) {
      
      if(stringr::str_detect(file_name, "MATEMATICA_04SERIE|PORTUGUES_04SERIE")) {
        
        readr::fwf_widths(
          c(8, 2, 1, rep(8, 15), rep(13, 6), 12,
            6, rep(8, 14)),
          col_names = c(
            "ANO", "SERIE", "DISC", "TURMA", "ALUNO", "IDADE",
            "ESTRATO", "UPA", "DEP_ADM", "LOCAL", "REDE", "UF", "REGIAO",
            "PESO_AC", "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3",
            "RESP_BL1", "RESP_BL2", "RESP_BL3",
            "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC",
            "A041_001", "A041_002", "A041_003", "A041_004",
            "A041_005", "A041_006", "A041_007", "A041_008",
            "A041_009", "A041_010",
            "A042_001", "A042_002", "A042_003", "A042_004",
            "A042_005"
          )
        )
        
      } else if(stringr::str_detect(file_name, "MATEMATICA_08SERIE|PORTUGUES_08SERIE")) {
        
        readr::fwf_widths(
          c(8, 2, 1, rep(8, 15), rep(13, 6), 12,
            6, rep(8, 21)),
          col_names = c(
            "ANO", "SERIE", "DISC", "TURMA", "ALUNO", "IDADE",
            "ESTRATO", "UPA", "DEP_ADM", "LOCAL", "REDE", "UF", "REGIAO",
            "PESO_AC", "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3",
            "RESP_BL1", "RESP_BL2", "RESP_BL3",
            "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC",
            "A081_001", "A081_002", "A081_003", "A081_004",
            "A081_005", "A081_006", "A081_007", "A081_008",
            "A081_009", "A081_010", "A081_011", "A081_012",
            "A081_013", "A081_014", "A081_015",
            "A082_001", "A082_002", "A082_003", "A082_004",
            "A082_005", "A082_006", "A082_007"
          )
        )
        
      } else if(stringr::str_detect(file_name, "MATEMATICA_03ANO|PORTUGUES_03ANO")) {
        
        readr::fwf_widths(
          c(8, 2, 1, rep(8, 15), rep(13, 6), 12,
            6, rep(8, 21)),
          col_names = c(
            "ANO", "SERIE", "DISC", "TURMA", "ALUNO", "IDADE",
            "ESTRATO", "UPA", "DEP_ADM", "LOCAL", "REDE", "UF", "REGIAO",
            "PESO_AC", "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3",
            "RESP_BL1", "RESP_BL2", "RESP_BL3",
            "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC",
            "A031_001", "A031_002", "A031_003", "A031_004",
            "A031_005", "A031_006", "A031_007", "A031_008",
            "A031_009", "A031_010", "A031_011", "A031_012",
            "A031_013", "A031_014", "A031_015",
            "A032_001", "A032_002", "A032_003", "A032_004",
            "A032_005", "A032_006", "A032_007"
          )
        )
        
      } else if(stringr::str_detect(file_name, "DIRETOR_95")){
        
        readr::fwf_widths(
          c(rep(8, 59)),
          col_names = c(
            "ANO", "SERIE", "ESTRATO", "UPA", "PESO_EC",
            "DEP_ADM", "LOCAL", "REDE", "UF", "REGIAO",
            "D_001", "D_002", "D_003", "D_004", "D_005",
            "D_006", "D_007", "D_008", "D_009", "D_010",
            "D_011", "D_012", "D_013_01", "D_013_02",
            "D_014", "D_015", "D_016_1", "D_016_2",
            "D_016_3", "D_016_4", "D_016_5", "D_017",
            "D_018", "D_019", "D_020", "D_021_1",
            "D_021_2", "D_021_3", "D_021_4", "D_021_5",
            "D_021_6", "D_022", "D_023_1", "D_023_2",
            "D_023_3", "D_023_4", "D_023_5", "D_024_1",
            "D_024_2", "D_024_3", "D_024_4", "D_024_5",
            "D_024_6", "D_024_7", "D_025", "D_026",
            "D_027", "D_028", "D_029"
          )
        )
        
      } else if(stringr::str_detect(file_name, "DOCENTE_95")){
        
        readr::fwf_widths(
          c(8, 8, 1, rep(8, 69)),
          col_names = c(
            "ANO", "SERIE", "DISC", "TURMA", "ESTRATO", "UPA",
            "PESO_TC", 
            "DEP_ADM", "LOCAL", "REDE", "UF", "REGIAO",
            "P_002", "P_003", "P_004", "P_005", "P_006",
            "P_007", "P_008", "P_009", "P_010", "P_011", "P_012",
            "P_013_1", "P_013_2", "P_014_1", "P_014_2",
            "P_014_3", "P_014_4", "P_014_5", "P_015",
            "P_016", "P_017", "P_018", "P_019", "P_020",
            "P_021", "P_022", "P_023", "P_024", "P_025",
            "P_026", "P_027", "P_028", "P_029", "P_030",
            "P_031", "P_032", "P_033", "P_034", "P_035_1",
            "P_035_2", "P_035_3", "P_035_4", "P_035_5",
            "P_035_6", "P_036", "P_037_1", "P_037_2",
            "P_037_3", "P_037_4", "P_037_5", "P_038_1",
            "P_038_2", "P_038_3", "P_038_4", "P_038_5",
            "P_038_6", "P_039", "P_040", "P_041", "P_042"
          )
        )
        
      } else if(stringr::str_detect(file_name, "ESCOLA_95")){
        
        readr::fwf_widths(
          c(rep(8, 180)),
          col_names = c(
            "ANO", "SERIE", "ESTRATO", "UPA", "PESO_EC",
            "DEP_ADM", "LOCAL", "REDE", "UF", "REGIAO",
            "E_002", "E_003", "E_004", "E_5_01", "E_5_02",
            "E_5_03", "E_5_04", "E_5_05", "E_5_06", "E_5_07",
            "E_5_08", "E_5_09", "E_5_10", "E_5_11", "E_6_01",
            "E_6_02", "E_6_03", "E_6_04", "E_6_05", "E_6_06",
            "E_6_07", "E_6_08", "E_6_09", "E_6_10", "E_6_11",
            "E_6_12", "E_6_13", "E_6_14", "E_6_15", "E_6_16",
            "E_6_17", "E_7_01", "E_7_02", "E_7_03", "E_7_04",
            "E_7_05", "E_8_2L", "E_8_2M", "E_8_3L", "E_8_3M",
            "E_8_4L", "E_8_4M", "E_8_8L", "E_8_8M", "E_9_11",
            "E_9_12", "E_9_13", "E_9_14", "E_9_15", "E_9_16",
            "E_9_17", "E_9_18", "E_9_19", "E_9_21", "E_9_22",
            "E_9_23", "E_9_24", "E_9_25", "E_9_26", "E_9_27",
            "E_9_28", "E_9_29", "E_9_31", "E_9_32", "E_9_33",
            "E_9_34", "E_9_35", "E_9_36", "E_9_37", "E_9_38",
            "E_9_39", "E_9_41", "E_9_42", "E_9_43", "E_9_44",
            "E_9_45", "E_9_46", "E_9_47", "E_9_48", "E_9_49",
            "E_9_51", "E_9_52", "E_9_53", "E_9_54", "E_9_55",
            "E_9_56", "E_9_57", "E_9_58", "E_9_59", "E_9_61",
            "E_9_62", "E_9_63", "E_9_64", "E_9_65", "E_9_66",
            "E_9_67", "E_9_68", "E_9_69", "E_9_71", "E_9_72",
            "E_9_73", "E_9_74", "E_9_75", "E_9_76", "E_9_77",
            "E_9_78", "E_9_79", "E_9_81", "E_9_82", "E_9_83",
            "E_9_84", "E_9_85", "E_9_86", "E_9_87", "E_9_88",
            "E_9_89", "E_9_1_D1", "E_9_1_D2", "E_9_1_D3", "E_9_1_D4",
            "E_9_1_D5", "E_9_1_D6", "E_9_1_D7", "E_9_1_D8", "E_9_1_D9",
            "E_9_1_N1", "E_9_1_N2", "E_9_1_N3", "E_9_1_N4", "E_9_1_N5",
            "E_9_1_N6", "E_9_1_N7", "E_9_1_N8", "E_9_1_N9", "E_9_2_D1",
            "E_9_2_D2", "E_9_2_D3", "E_9_2_D4", "E_9_2_D5", "E_9_2_D6",
            "E_9_2_D7", "E_9_2_D8", "E_9_2_D9", "E_9_2_N1", "E_9_2_N2",
            "E_9_2_N3", "E_9_2_N4", "E_9_2_N5", "E_9_2_N6", "E_9_2_N7",
            "E_9_2_N8", "E_9_2_N9", "E_9_3_D1", "E_9_3_D2", "E_9_3_D3",
            "E_9_3_D4", "E_9_3_D5", "E_9_3_D6", "E_9_3_D7", "E_9_3_D8",
            "E_9_3_D9", "E_9_3_N1", "E_9_3_N2", "E_9_3_N3", "E_9_3_N4",
            "E_9_3_N5", "E_9_3_N6", "E_9_3_N7", "E_9_3_N8", "E_9_3_N9"
          )
        )
        
      } else {
        
        NA
        
      }
      
    } else 
      if(stringr::str_detect(file_name, "1997")) {
        
        if(stringr::str_detect(file_name, "CIENCIAS_04SERIE|MATEMATICA_04SERIE")) {
          
          readr::fwf_widths(
            c(rep(8, 4), 1, rep(8, 5), 12, rep(8, 7), 
              rep(10, 3), rep(8, 3), rep(10, 3), 12, rep(8, 38)),
            col_names = c(
              "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC", 
              "TURMA", "TURNO", "ALUNO", "IDADE", "ESTRATO", "UPA", "DEP_ADM",
              "LOCAL", "REDE", "UF", "REGIAO", "PESO_AC", "CADERNO",
              "RESP_BL1", "RESP_BL2", "RESP_BL3",
              "BLOCO1", "BLOCO2", "BLOCO3",
              "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC",
              "A041_001", "A041_002", "A041_003", "A041_004", "A041_005",
              "A041_006", "A041_007", "A041_008", "A041_009", "A041_010",
              "A041_011", "A041_012", "A041_013", "A041_014", "A041_015",
              "A041_016", "A041_017", "A041_018", "A041_019", "A041_020",
              "A041_021", "A041_022", "A041_023", "A041_024", "A041_025",
              "A041_026", "A041_027", "A041_028", "A041_029", "A041_030",
              "A041_031", "A041_032", "A041_033",
              "A042_001", "A042_002", "A042_003", "A042_004", "A042_005"
            )
          )
          
        } else if(stringr::str_detect(file_name, "PORTUGUES_04SERIE")){
          
          readr::fwf_widths(
            c(rep(8, 4), 1, rep(8, 5), 12, rep(8, 7), 
              rep(10, 3), rep(8, 3), rep(10, 3), 12, rep(8, 39)),
            col_names = c(
              "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC", 
              "TURMA", "TURNO", "ALUNO", "IDADE", "ESTRATO", "UPA", "DEP_ADM",
              "LOCAL", "REDE", "UF", "REGIAO", "PESO_AC", "CADERNO",
              "RESP_BL1", "RESP_BL2", "RESP_BL3",
              "BLOCO1", "BLOCO2", "BLOCO3",
              "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC",
              "A041_001", "A041_002", "A041_003", "A041_004", "A041_005",
              "A041_006", "A041_007", "A041_008", "A041_009", "A041_010",
              "A041_011", "A041_012", "A041_013", "A041_014", "A041_015",
              "A041_016", "A041_017", "A041_018", "A041_019", "A041_020",
              "A041_021", "A041_022", "A041_023", "A041_024", "A041_025",
              "A041_026", "A041_027", "A041_028", "A041_029", "A041_030",
              "A041_031", "A041_032", "A041_033",
              "A042_001", "A042_002", "A042_003", "A042_004", "A042_005",
              "A042_006"
            )
          )
          
        } else if(stringr::str_detect(file_name, "CIENCIAS_08SERIE|MATEMATICA_08SERIE|PORTUGUES_08SERIE")){
          
          readr::fwf_widths(
            c(rep(8, 4), 1, rep(8, 5), 12, rep(8, 7), 
              rep(10, 3), rep(8, 3), rep(10, 3), 12, rep(8, 44)),
            col_names = c(
              "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC", 
              "TURMA", "TURNO", "ALUNO", "IDADE", "ESTRATO", "UPA", "DEP_ADM",
              "LOCAL", "REDE", "UF", "REGIAO", "PESO_AC", "CADERNO",
              "RESP_BL1", "RESP_BL2", "RESP_BL3",
              "BLOCO1", "BLOCO2", "BLOCO3",
              "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC",
              "A081_001", "A081_002", "A081_003", "A081_004", "A081_005",
              "A081_006", "A081_007", "A081_008", "A081_009", "A081_010",
              "A081_011", "A081_012", "A081_013", "A081_014", "A081_015",
              "A081_016", "A081_017", "A081_018", "A081_019", "A081_020",
              "A081_021", "A081_022", "A081_023", "A081_024", "A081_025",
              "A081_026", "A081_027", "A081_028", "A081_029", "A081_030",
              "A082_001", "A082_002", "A082_003", "A082_004", "A082_005",
              "A082_006", "A082_007", "A082_008", "A082_009", "A082_010",
              "A082_011", "A082_012", "A082_013", "A082_014"
            )
          )
          
        } else if (stringr::str_detect(file_name, "BIOLOGIA_03ANO|FISICA_03ANO|MATEMATICA_03ANO|PORTUGUES_03ANO|QUIMICA_03ANO")){
          
          readr::fwf_widths(
            c(rep(8, 4), 1, rep(8, 5), 12, rep(8, 7), 
              rep(10, 3), rep(8, 3), rep(10, 3), 12, rep(8, 47)),
            col_names = c(
              "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC", 
              "TURMA", "TURNO", "ALUNO", "IDADE", "ESTRATO", "UPA", "DEP_ADM",
              "LOCAL", "REDE", "UF", "REGIAO", "PESO_AC", "CADERNO",
              "RESP_BL1", "RESP_BL2", "RESP_BL3",
              "BLOCO1", "BLOCO2", "BLOCO3",
              "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC",
              "A031_001", "A031_002", "A031_003", "A031_004", "A031_005",
              "A031_006", "A031_007", "A031_008", "A031_009", "A031_010",
              "A031_011", "A031_012", "A031_013", "A031_014", "A031_015",
              "A031_016", "A031_017", "A031_018", "A031_019", "A031_020",
              "A031_021", "A031_022", "A031_023", "A031_024", "A031_025",
              "A031_026", "A031_027", "A031_028", "A031_029", "A031_030",
              "A031_031", "A031_032", "A031_033", 
              "A032_001", "A032_002", "A032_003", "A032_004", "A032_005",
              "A032_006", "A032_007", "A032_008", "A032_009", "A032_010",
              "A032_011", "A032_012", "A032_013", "A032_014"
            )
          )
          
        } else if(stringr::str_detect(file_name, "DIRETOR_97")){
          
          readr::fwf_widths(
            c(rep(8, 5), 12, rep(8, 6), rep(8, 68)),
            col_names = c(
              "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "ESTRATO",
              "UPA", "PESO_EC", "DEP_ADM", "LOCAL", "REDE", "UF", "REGIAO",
              "D_001", "D_002", "D_003", "D_004", "D_005",
              "D_006", "D_007", "D_008", "D_009", "D_010",
              "D_011", "D_012", "D_013", "D_014", "D_015",
              "D_016", "D_017", "D_018", "D_019", "D_020",
              "D_021", "D_022", "D_023", "D_024", "D_025",
              "D_026", "D_027", "D_028", "D_029", "D_030",
              "D_031", "D_032", "D_033", "D_034", "D_035",
              "D_036", "D_037", "D_038", "D_039", "D_040",
              "D_041", "D_042", "D_043", "D_044", "D_045",
              "D_046", "D_047", "D_048", "D_049", "D_050",
              "D_051", "D_052", "D_053", "D_054", "D_055",
              "D_056", "D_057", "D_058", "D_059", "D_060",
              "D_061", "D_062", "D_063", "D_064", "D_065",
              "D_066", "D_067", "D_068"
            )
          )
          
        } else if (stringr::str_detect(file_name, "DOCENTE_97")){
          
          readr::fwf_widths(
            c(rep(8, 4), 1, 8, 8, 12, rep(8, 6), rep(8, 79)),
            col_names = c(
              "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
              "TURMA", "ESTRATO", "UPA", "PESO_TC", "DEP_ADM", 
              "LOCAL", "REDE", "UF", "REGIAO",
              "P_001", "P_002", "P_003", "P_004", "P_005",
              "P_006", "P_007", "P_008", "P_009", "P_010",
              "P_011", "P_012", "P_013", "P_014", "P_015",
              "P_016", "P_017", "P_018", "P_019", "P_020",
              "P_021", "P_022", "P_023", "P_024", "P_025",
              "P_026", "P_027", "P_028", "P_029", "P_030",
              "P_031", "P_032", "P_033", "P_034", "P_035",
              "P_036", "P_037", "P_038", "P_039", "P_040",
              "P_041", "P_042", "P_043", "P_044", "P_045",
              "P_046", "P_047", "P_048", "P_049", "P_050",
              "P_051", "P_052", "P_053", "P_054", "P_055",
              "P_056", "P_057", "P_058", "P_059", "P_060",
              "P_061", "P_062", "P_063", "P_064", "P_065",
              "P_066", "P_067", "P_068", "P_069", "P_070",
              "P_071", "P_072", "P_073", "P_074", "P_075",
              "P_076", "P_077", "P_078", "P_079"
            )
          )
          
        } else if(stringr::str_detect(file_name, "ESCOLA_97")) {
          
          readr::fwf_widths(
            c(rep(8, 5), 12, rep(8, 7), rep(8, 37)),
            col_names = c(
              "MASCARA", "ANO_MASCARA", "ANO", "SERIE",
              "ESTRATO", "UPA", "PESO_EC", "DEP_ADM", 
              "LOCAL", "REDE", "CAP_INT", "UF", "REGIAO",
              "E_001", "E_002", "E_003", "E_004", "E_005",
              "E_006", "E_007", "E_008", "E_009", "E_010",
              "E_011", "E_012", "E_013", "E_014", "E_015",
              "E_016", "E_017", "E_018", "E_019", "E_020",
              "E_021", "E_022", "E_023", "E_024", "E_025",
              "E_026", "E_027", "E_028", "E_029", "E_030",
              "E_031", "E_032", "E_033", "E_034", "E_035",
              "E_036", "E_037"
            )
          )
          
        } else {
          
          NA
        }
        
      } else 
        if(stringr::str_detect(file_name, "1999")) {
          
          if(stringr::str_detect(file_name, "CIENCIAS_04SERIE|GEOGRAFIA_04SERIE|HISTORIA_04SERIE|PORTUGUES_04SERIE|MATEMATICA_04SERIE")) {
            
            readr::fwf_widths(
              c(8, 8, 4, 1, 1, 2, 9, 2, 9, 8, rep(1, 3), 2, 1, 8, 1, 8, 2,
                1, 1, 2, rep(1, 49), rep(2, 4), rep(13, 6)),
              col_names = c(
                "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                "TURMA", "TURNO", "ALUNO", "ESTRATO", "UPA", "DEP_ADM",
                "LOCAL", "REDE", "UF", "REGIAO", "PESO_AC", "PROVA", 
                "PROFIC", "IDADE",
                paste0("A041_", stringr::str_pad(1:39, 3, pad = "0")),
                paste0("A042_", stringr::str_pad(1:13, 3, pad = "0")),
                "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3",
                "RESP_BL1", "RESP_BL2", "RESP_BL3",
                "GAB_BL1", "GAB_BL2", "GAB_BL3"
              )
            )
            
          } else if (stringr::str_detect(file_name, "CIENCIAS_08SERIE|GEOGRAFIA_08SERIE|HISTORIA_08SERIE|PORTUGUES_08SERIE|MATEMATICA_08SERIE")) {
            
            readr::fwf_widths(
              c(8, 8, 4, 1, 1, 2, 9, 2, 9, 8, rep(1, 3), 2, 1, 8, 1, 8, 2,
                1, 1, 2, rep(1, 68), rep(2, 4), rep(13, 6)),
              col_names = c(
                "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                "TURMA", "TURNO", "ALUNO", "ESTRATO", "UPA", "DEP_ADM",
                "LOCAL", "REDE", "UF", "REGIAO", "PESO_AC", "PROVA", 
                "PROFIC", "IDADE",
                paste0("A081_", stringr::str_pad(1:44, 3, pad = "0")),
                paste0("A082_", stringr::str_pad(1:27, 3, pad = "0")),
                "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3",
                "RESP_BL1", "RESP_BL2", "RESP_BL3",
                "GAB_BL1", "GAB_BL2", "GAB_BL3"
              )
            )
            
          } else if(stringr::str_detect(file_name, "BIOLOGIA_03ANO|FISICA_03ANO|GEOGRAFIA_03ANO|HISTORIA_03ANO|PORTUGUES_03ANO|MATEMATICA_03ANO|QUIMICA_03ANO")) {
            
            readr::fwf_widths(
              c(8, 8, 4, 1, 1, 2, 9, 3, 9, 8, rep(1, 3), 2, 1, 1, 8, 8, 2,
                1, 1, 2, rep(1, 69), rep(2, 4), rep(13, 6)),
              col_names = c(
                "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                "TURMA", "TURNO", "ALUNO", "ESTRATO", "UPA", "DEP_ADM",
                "LOCAL", "REDE", "UF", "REGIAO", "PROVA", "PROFIC",
                "PESO_AC", "IDADE",
                paste0("A031_", stringr::str_pad(1:44, 3, pad = "0")),
                paste0("A032_", stringr::str_pad(1:28, 3, pad = "0")),
                "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3",
                "RESP_BL1", "RESP_BL2", "RESP_BL3",
                "GAB_BL1", "GAB_BL2", "GAB_BL3"
              )
            )
            
          } else if(stringr::str_detect(file_name, "DIRETORES_99")) {
            
            readr::fwf_widths(
              c(8, 8, 4, 2, 9, 12, rep(8, 6), rep(8, 95)),
              col_names = c(
                "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "ESTRATO",
                "UPA", "PESO_EC", "DEP_ADM", "LOCAL", "REDE", "UF",
                "REGIAO",
                paste0("D", stringr::str_pad(1:95, 3, pad = "0"))
              )
            )
            
          } else if(stringr::str_detect(file_name, "DOCENTES_99")) {
            
            readr::fwf_widths(
              c(8, 8, 4, rep(2, 3), 9, 12, rep(8, 6), rep(8, 120)),
              col_names = c(
                "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                "TURMA", "ESTRATO", "UPA", "PESO_TC", "DEP_ADM",
                "LOCAL", "REDE", "UF", "REGIAO",
                paste0("P", stringr::str_pad(1:120, 3, pad = "0"))
              )
            )
            
          } else if(stringr::str_detect(file_name, "ESCOLAS_99")) {
            
            readr::fwf_widths(
              c(8, 8, 4, 2, 9, 12, rep(8, 6), rep(8, 21)),
              col_names = c(
                "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "ESTRATO",
                "UPA", "PESO_EC", "DEP_ADM", "LOCAL", "REDE", "UF",
                "REGIAO",
                "E_1_1", "E_1_2", "E_1_3", "E_1_4",
                "E_2_1", "E_2_2", "E_2_3",
                "E_3_1", "E_3_2", "E_3_3", "E_3_4", "E_3_5", "E_3_6", "E_3_7",
                "E_4_0",
                "E_5_1", "E_5_2", "E_5_3", "E_5_4", "E_5_5",
                "E_6_0"
              )
            )
            
          } else if(stringr::str_detect(file_name, "TURMAS_04SERIE")) {
            
            readr::fwf_widths(
              c(8, 8, 4, 2, 2, 9, 12, rep(8, 6), 4, 4, 2, 2, rep(8, 10)),
              col_names = c(
                "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "TURMA", "ESTRATO",
                "UPA", "PESO_TC", "DEP_ADM", "LOCAL", "REDE", "UF", "REGIAO",
                "HOR_INI", "HOR_FIM", "N_CHAM", "N_PRES",
                "T001_1", "T001_2", "T001_3", "T001_4", "T001_5",
                "T002_1", "T002_2", "T002_3", "T002_4", "T002_5"
              )
            )
            
          } else if(stringr::str_detect(file_name, "TURMAS_08SERIE")) {
            
            readr::fwf_widths(
              c(8, 8, 4, 2, 2, 9, 12, rep(8, 6), 4, 4, 2, 2, rep(8, 10)),
              col_names = c(
                "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "TURMA", "ESTRATO",
                "UPA", "PESO_TC", "DEP_ADM", "LOCAL", "REDE", "UF", "REGIAO",
                "HOR_INI", "HOR_FIM", "N_CHAM", "N_PRES",
                "T001_1", "T001_2", "T001_3", "T001_4", "T001_5",
                "T002_1", "T002_2", "T002_3", "T002_4", "T002_5"
              )
            )
            
          } else if(stringr::str_detect(file_name, "TURMAS_03ANO")) {
            
            readr::fwf_widths(
              c(8, 8, 4, 2, 2, 9, 12, rep(8, 6), 4, 4, 2, 2, rep(8, 14)),
              col_names = c(
                "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "TURMA", "ESTRATO",
                "UPA", "PESO_TC", "DEP_ADM", "LOCAL", "REDE", "UF", "REGIAO",
                "HOR_INI", "HOR_FIM", "N_CHAM", "N_PRES",
                "T001_1", "T001_2", "T001_3", "T001_4", "T001_5", "T001_6", "T001_7",
                "T002_1", "T002_2", "T002_3", "T002_4", "T002_5", "T002_6", "T002_7"
              )
            )
            
          } else {
            
            NA
            
          }
          
        } else
          if(stringr::str_detect(file_name, "2001")) {
            
            if(stringr::str_detect(file_name, "MATEMATICA_04SERIE")) {
              
              readr::fwf_widths(
                c(rep(8, 3), 2, 1, rep(8, 4), 12, rep(8, 11), rep(13, 9), 12,
                  rep(8, 43), rep(8, 42)),
                col_names = c(
                  "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                  "TURMA", "ALUNO", "IDADE", "ESTRATO", "UPA", "DEP_ADM",
                  "LOCAL", "REDE", "CAP_INT", "UF", "REGIAO", "PESO_AC",
                  "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3",
                  "RESP_BL1", "RESP_BL2", "RESP_BL3", 
                  "CORR_BL1", "CORR_BL2", "CORR_BL3", 
                  "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC",
                  paste0("A041_", stringr::str_pad(1:42, 3, pad = "0")), "A041_008_O",
                  paste0("A042M", stringr::str_pad(1:42, 3, pad = "0"))
                )
              )
              
            } else if(stringr::str_detect(file_name, "MATEMATICA_08SERIE")) {
              
              readr::fwf_widths(
                c(rep(8, 3), 2, 1, rep(8, 4), 12, rep(8, 11), rep(13, 9), 12,
                  rep(8, 42), rep(8, 44)),
                col_names = c(
                  "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                  "TURMA", "ALUNO", "IDADE", "ESTRATO", "UPA", "DEP_ADM",
                  "LOCAL", "REDE", "CAP_INT", "UF", "REGIAO", "PESO_AC",
                  "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3",
                  "RESP_BL1", "RESP_BL2", "RESP_BL3", 
                  "CORR_BL1", "CORR_BL2", "CORR_BL3", 
                  "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC",
                  paste0("A081_", stringr::str_pad(1:41, 3, pad = "0")), "A081_008_O",
                  paste0("A082M", stringr::str_pad(1:44, 3, pad = "0"))
                )
              )
              
            } else if(stringr::str_detect(file_name, "MATEMATICA_03ANO")) {
              
              readr::fwf_widths(
                c(rep(8, 3), 2, 1, rep(8, 16), rep(13, 9), 12,
                  rep(8, 44), rep(8, 39)),
                col_names = c(
                  "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                  "TURMA", "ALUNO", "IDADE", "ESTRATO", "UPA", "DEP_ADM",
                  "LOCAL", "REDE", "CAP_INT", "UF", "REGIAO", "PESO_AC",
                  "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3",
                  "RESP_BL1", "RESP_BL2", "RESP_BL3", 
                  "CORR_BL1", "CORR_BL2", "CORR_BL3", 
                  "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC",
                  paste0("A111_", stringr::str_pad(1:43, 3, pad = "0")), "A111_008_O",
                  paste0("A112M", stringr::str_pad(1:39, 3, pad = "0"))
                )
              )
              
            } else if(stringr::str_detect(file_name, "PORTUGUES_04SERIE")) {
              
              readr::fwf_widths(
                c(rep(8, 3), 2, 1, rep(8, 16), rep(13, 9), 12,
                  rep(8, 43), rep(8, 43)),
                col_names = c(
                  "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                  "TURMA", "ALUNO", "IDADE", "ESTRATO", "UPA", "DEP_ADM",
                  "LOCAL", "REDE", "CAP_INT", "UF", "REGIAO", "PESO_AC",
                  "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3",
                  "RESP_BL1", "RESP_BL2", "RESP_BL3", 
                  "CORR_BL1", "CORR_BL2", "CORR_BL3", 
                  "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC",
                  paste0("A041_", stringr::str_pad(1:42, 3, pad = "0")), "A041_008_O",
                  paste0("A042L", stringr::str_pad(1:43, 3, pad = "0"))
                )
              )
              
            } else if(stringr::str_detect(file_name, "PORTUGUES_08SERIE")) {
              
              readr::fwf_widths(
                c(rep(8, 3), 2, 1, rep(8, 16), rep(13, 9), 12,
                  rep(8, 42), rep(8, 45)),
                col_names = c(
                  "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                  "TURMA", "ALUNO", "IDADE", "ESTRATO", "UPA", "DEP_ADM",
                  "LOCAL", "REDE", "CAP_INT", "UF", "REGIAO", "PESO_AC",
                  "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3",
                  "RESP_BL1", "RESP_BL2", "RESP_BL3", 
                  "CORR_BL1", "CORR_BL2", "CORR_BL3", 
                  "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC",
                  paste0("A081_", stringr::str_pad(1:41, 3, pad = "0")), "A081_008_O",
                  paste0("A082L", stringr::str_pad(1:45, 3, pad = "0"))
                )
              )
              
            } else if(stringr::str_detect(file_name, "PORTUGUES_03ANO")) {
              
              readr::fwf_widths(
                c(rep(8, 3), 2, 1, rep(8, 16), rep(13, 9), 12,
                  rep(8, 44), rep(8, 40)),
                col_names = c(
                  "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                  "TURMA", "ALUNO", "IDADE", "ESTRATO", "UPA", "DEP_ADM",
                  "LOCAL", "REDE", "CAP_INT", "UF", "REGIAO", "PESO_AC",
                  "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3",
                  "RESP_BL1", "RESP_BL2", "RESP_BL3", 
                  "CORR_BL1", "CORR_BL2", "CORR_BL3", 
                  "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC",
                  paste0("A111_", stringr::str_pad(1:43, 3, pad = "0")), "A111_008_O",
                  paste0("A112L", stringr::str_pad(1:40, 3, pad = "0"))
                )
              )
              
            } else if(stringr::str_detect(file_name, "DIRETOR_01")) {
              
              readr::fwf_widths(
                c(rep(8, 3), 2, 8, 12, rep(8, 7), rep(8, 72)),
                col_names = c(
                  "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "ESTRATO",
                  "UPA", "PESO_TC", "DEP_ADM", "LOCAL", "REDE", "CAP_INT",
                  "UF", "REGIAO",
                  paste0("D", stringr::str_pad(1:72, 3, pad = "0"))
                )
              )
              
            } else if(stringr::str_detect(file_name, "DOCENTE_01")) {
              
              readr::fwf_widths(
                c(rep(8, 3), 2, 1, 8, 8, 12, rep(8, 7), 4, rep(8, 98)),
                col_names = c(
                  "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                  "TURMA", "ESTRATO", "UPA", "PESO_TC", "DEP_ADM",
                  "LOCAL", "REDE", "CAP_INT", "UF", "REGIAO", "DT_NASC",
                  paste0("P", stringr::str_pad(1:98, 3, pad = "0"))
                )
              )
              
            } else if(stringr::str_detect(file_name, "ESCOLA_01")) {
              
              readr::fwf_widths(
                c(rep(8, 3), 2, 8, 12, rep(8, 7), rep(8, 36)),
                col_names = c(
                  "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "ESTRATO",
                  "UPA", "PESO_EC", "DEP_ADM", "LOCAL", "REDE",
                  "CAP_INT", "UF", "REGIAO",
                  paste0("E001_", 1:8),
                  paste0("E002_", 1:3),
                  paste0("E003_", 1:7),
                  paste0("E004_", 1:7),
                  "E005",
                  paste0("E006_", 1:8),
                  "E007", "E008"
                )
              )
              
            } else if(stringr::str_detect(file_name, "TURMA_01")) {
              
              readr::fwf_widths(
                c(rep(8, 3), 2, rep(8, 8), 4, 4, 3, 3, rep(8, 10)),
                col_names = c(
                  "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "TURMA",
                  "PESO_TC", "DEP_ADM", "LOCAL", "REDE", "CAP_INT", 
                  "UF", "REGIAO", "HOR_INI", "HOR_FIM", "N_CHAM", "N_PRES",
                  "T001_1", "T001_2", "T002_1", "T002_2",
                  "T003", "T004", "T005", "T006", "T007", "T008"
                )
              )
              
            } else  {
              
              NA
              
            }
            
          } else 
            if(stringr::str_detect(file_name, "2003")) {
              
              if(stringr::str_detect(file_name, "MATEMATICA_04SERIE")) {
                
                readr::fwf_widths(
                  c(8, 8, 4, 2, 1, 2, 3, 12, 12, rep(8, 16), rep(13, 6), 12, 15,
                    rep(8, 58), rep(8, 18)),
                  col_names = c(
                    "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                    "TURMA", "ALUNO", "ESTRATO", "UPA", "DEP_ADM", "LOCAL",
                    "REDE", "UF", "UFSUD", "REGIAO", "TAM_MUNIC", "REG_METROP",
                    "TAM_CID", "TUR_BE", "ALU_BE", "PESO_AC",
                    "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3", 
                    "RESP_BL1", "RESP_BL2", "RESP_BL3",
                    "GAB_BL1", "GAB_BL2", "GAB_BL3", 
                    "PROFIC", "ESTAGIO",
                    paste0("A041_", stringr::str_pad(1:58, 3, pad = "0")),
                    paste0("A042M", stringr::str_pad(1:18, 3, pad = "0"))
                  )
                )
                
              } else if(stringr::str_detect(file_name, "MATEMATICA_08SERIE")) {
                
                readr::fwf_widths(
                  c(8, 8, 4, 2, 1, 2, 3, 8, 12, rep(8, 16), rep(13, 6), 12, 8,
                    rep(8, 64), rep(8, 23)),
                  col_names = c(
                    "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                    "TURMA", "ALUNO", "ESTRATO", "UPA", "DEP_ADM", "LOCAL",
                    "REDE", "UF", "UFSUD", "REGIAO", "TAM_MUNIC", "REG_METROP",
                    "TAM_CID", "TUR_BE", "ALU_BE", "PESO_AC",
                    "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3", 
                    "RESP_BL1", "RESP_BL2", "RESP_BL3",
                    "GAB_BL1", "GAB_BL2", "GAB_BL3", 
                    "PROFIC", "ESTAGIO",
                    paste0("A081_", stringr::str_pad(1:64, 3, pad = "0")),
                    paste0("A042M", stringr::str_pad(1:23, 3, pad = "0"))
                  )
                )
                
              } else if(stringr::str_detect(file_name, "MATEMATICA_03ANO")) {
                
                readr::fwf_widths(
                  c(8, 8, 4, 2, 1, 2, 3, 8, 12, rep(8, 16), rep(13, 6), 12, 8,
                    rep(8, 64), rep(8, 23)),
                  col_names = c(
                    "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                    "TURMA", "ALUNO", "ESTRATO", "UPA", "DEP_ADM", "LOCAL",
                    "REDE", "UF", "UFSUD", "REGIAO", "TAM_MUNIC", "REG_METROP",
                    "TAM_CID", "TUR_BE", "ALU_BE", "PESO_AC",
                    "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3", 
                    "RESP_BL1", "RESP_BL2", "RESP_BL3",
                    "GAB_BL1", "GAB_BL2", "GAB_BL3", 
                    "PROFIC", "ESTAGIO",
                    paste0("A111_", stringr::str_pad(1:64, 3, pad = "0")),
                    paste0("A112M", stringr::str_pad(1:23, 3, pad = "0"))
                  )
                )
                
              } else if(stringr::str_detect(file_name, "PORTUGUES_04SERIE")) {
                
                readr::fwf_widths(
                  c(8, 8, 4, 2, 1, 2, 3, 8, 12, rep(8, 16), rep(13, 6), 12, 8,
                    rep(8, 58), rep(8, 18)),
                  col_names = c(
                    "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                    "TURMA", "ALUNO", "ESTRATO", "UPA", "DEP_ADM", "LOCAL",
                    "REDE", "UF", "UFSUD", "REGIAO", "TAM_MUNIC", "REG_METROP",
                    "TAM_CID", "TUR_BE", "ALU_BE", "PESO_AC",
                    "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3", 
                    "RESP_BL1", "RESP_BL2", "RESP_BL3",
                    "GAB_BL1", "GAB_BL2", "GAB_BL3", 
                    "PROFIC", "ESTAGIO",
                    paste0("A041_", stringr::str_pad(1:58, 3, pad = "0")),
                    paste0("A042L", stringr::str_pad(1:18, 3, pad = "0"))
                  )
                )
                
              } else if(stringr::str_detect(file_name, "PORTUGUES_08SERIE")) {
                
                readr::fwf_widths(
                  c(8, 8, 4, 2, 1, 2, 3, 8, 12, rep(8, 16), rep(13, 6), 12, 8,
                    rep(8, 64), rep(8, 23)),
                  col_names = c(
                    "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                    "TURMA", "ALUNO", "ESTRATO", "UPA", "DEP_ADM", "LOCAL",
                    "REDE", "UF", "UFSUD", "REGIAO", "TAM_MUNIC", "REG_METROP",
                    "TAM_CID", "TUR_BE", "ALU_BE", "PESO_AC",
                    "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3", 
                    "RESP_BL1", "RESP_BL2", "RESP_BL3",
                    "GAB_BL1", "GAB_BL2", "GAB_BL3", 
                    "PROFIC", "ESTAGIO",
                    paste0("A081_", stringr::str_pad(1:64, 3, pad = "0")),
                    paste0("A082L", stringr::str_pad(1:23, 3, pad = "0"))
                  )
                )
                
              } else if(stringr::str_detect(file_name, "PORTUGUES_03ANO")) {
                
                readr::fwf_widths(
                  c(8, 8, 4, 2, 1, 2, 3, 8, 12, rep(8, 16), rep(13, 6), 12, 8,
                    rep(8, 64), rep(8, 23)),
                  col_names = c(
                    "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                    "TURMA", "ALUNO", "ESTRATO", "UPA", "DEP_ADM", "LOCAL",
                    "REDE", "UF", "UFSUD", "REGIAO", "TAM_MUNIC", "REG_METROP",
                    "TAM_CID", "TUR_BE", "ALU_BE", "PESO_AC",
                    "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3", 
                    "RESP_BL1", "RESP_BL2", "RESP_BL3",
                    "GAB_BL1", "GAB_BL2", "GAB_BL3", 
                    "PROFIC", "ESTAGIO",
                    paste0("A111_", stringr::str_pad(1:64, 3, pad = "0")),
                    paste0("A112L", stringr::str_pad(1:23, 3, pad = "0"))
                  )
                )
                
              } else if(stringr::str_detect(file_name, "DIRETOR_03")) {
                
                readr::fwf_widths(
                  c(8, 8, 4, 2, 8, 12, rep(8, 10),
                    rep(8, 129), rep(8, 50)),
                  col_names = c(
                    "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "ESTRATO",
                    "UPA", "PESOEC", "DEP_ADM", "LOCAL", "REDE", "UF",
                    "UFSUD", "REGIAO", "TAM_MUNIC", "REG_METROP", "TAM_CID",
                    paste0("D", stringr::str_pad(1:129, 3, pad = "0")),
                    "D130_1", "D130_2", "D131_1", "D131_2", "D132_1", "D132_2",
                    "D133_1", "D133_2", "D134_1", "D134_2", "D135_1", "D135_2",
                    "D136_1", "D136_2", "D137_1", "D137_2", "D138_1", "D138_2",
                    "D139_1", "D139_2", "D140_1", "D140_2", "D141_1", "D141_2",
                    "D142_1", "D142_2", "D143_1", "D143_2", "D144_1", "D144_2",
                    "D145_1", "D145_2", "D146_1", "D146_2", "D147_1", "D147_2",
                    "D148_1", "D148_2", "D149_1", "D149_2",
                    "D150", "D151", "D152", "D153",
                    "D154_1", "D155_1", "D156_1", "D157_1", "D158_1", "D159_1"
                  )
                )
                
              } else if(stringr::str_detect(file_name, "DOCENTE_03")) {
                
                readr::fwf_widths(
                  c(8, 8, 4, 2, 1, 2, 8, 12, rep(8, 10),
                    rep(8, 12), rep(8, 3), rep(8, 125)),
                  col_names = c(
                    "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                    "TURMA", "ESTRATO", "UPA", "PESOTC", "DEP_ADM", 
                    "LOCAL", "REDE", "UF", "UFSUD", "REGIAO",
                    "TAM_MUNIC", "REG_METROP", "TAM_CID",
                    paste0("P", stringr::str_pad(1:12, 3, pad = "0")),
                    "P013_1", "P013_2", "P013_3",
                    paste0("P", stringr::str_pad(14:138, 3, pad = "0"))
                  )
                )
                
              } else if(stringr::str_detect(file_name, "ESCOLA_03")) {
                
                readr::fwf_widths(
                  c(8, 8, 4, 2, 8, 12, rep(8, 10),
                    rep(8, 70)),
                  col_names = c(
                    "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "ESTRATO",
                    "UPA", "PESOEC", "DEP_ADM", "LOCAL", "REDE", "UF",
                    "UFSUD", "REGIAO", "TAM_MUNIC", "REG_METROP", "TAM_CID",
                    paste0("E001_", 1:9),
                    paste0("E002_", 1:2),
                    paste0("E003_", 1:9),
                    paste0("E004_", 1:16),
                    paste0("E005_", 1:6),
                    paste0("E006_", 1:10),
                    paste0("E007_", 1:5),
                    "E008", "E009", "E010", "E011", "E012", "E013",
                    paste0("E014_", 1:5), "E015", "E016"
                  )
                )
                
              } else if(stringr::str_detect(file_name, "TURMA_03")) {
                
                readr::fwf_widths(
                  c(8, 8, 4, 2, 2, 8, 12, rep(8, 10), 4, 4, 2, 2, rep(8, 4)),
                  col_names = c(
                    "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "TURMA", "ESTRATO",
                    "UPA", "PESOTC", "DEP_ADM", "LOCAL", "REDE", "UF", "UFSUD",
                    "REGIAO", "TAM_MUNIC", "REG_METROP", "TAM_CID",
                    "HO_INICIO", "HO_FINAL", "QT_ALUNO", "QT_PRES", 
                    "T001_1", "T001_2", "T002_1", "T002_2"
                  )
                )
                
              } else if(stringr::str_detect(file_name, "MASCARA")) {
                
                readr::fwf_widths(
                  c(8, 8, 10),
                  col_names = c(
                    "MASCARA", "ANO_MASCARA", "ESCOLA"
                  )
                )
                
              } else {
                
                NA
                
              }
              
            } else
              if(stringr::str_detect(file_name, "2005")) {
                
                if(stringr::str_detect(file_name, "MATEMATICA_04SERIE")) {
                  
                  readr::fwf_widths(
                    c(8, 8, 8, 2, 1, 3, 23, 3, 1, 3, 3, 6,
                      3, 3, 3, 2, 1, 3, rep(12, 4), rep(3, 4),
                      rep(1, 39), rep(13, 3), 12, 12,
                      rep(1, 24), rep(1, 42)),
                    col_names = c(
                      "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC", 
                      "TURMA", "NOMETURMA", "TURMA_APLI", "EXTRA", 
                      "ALUNO", "ALUNO_VALI", "ESTRATO", "DEP_ADM",
                      "LOCAL", "REDE", "COD_UF", "REGIAO", "CAPITAL",
                      "PESO_AT", "PESO_AC", "PESO_EC", "PESO_TC",
                      "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3", 
                      paste0("RESP", 1:39), 
                      "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC_250", "PROFIC_SAEB",
                      paste0("A041_", stringr::str_pad(1:24, 3, pad = "0")),
                      paste0("A042M", stringr::str_pad(1:42, 3, pad = "0"))
                    )
                  )
                  
                } else if(stringr::str_detect(file_name, "MATEMATICA_08SERIE")) {
                  
                  readr::fwf_widths(
                    c(8, 8, 8, 2, 1, 3, 29, 3, 1, 3, 3, 6,
                      3, 3, 3, 2, 1, 3, rep(12, 4), rep(3, 4),
                      rep(1, 39), rep(13, 3), 12, 12,
                      rep(1, 22), rep(1, 50)),
                    col_names = c(
                      "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC", 
                      "TURMA", "NOMETURMA", "TURMA_APLI", "EXTRA", 
                      "ALUNO", "ALUNO_VALI", "ESTRATO", "DEP_ADM",
                      "LOCAL", "REDE", "COD_UF", "REGIAO", "CAPITAL",
                      "PESO_AT", "PESO_AC", "PESO_EC", "PESO_TC",
                      "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3", 
                      paste0("RESP", 1:39), 
                      "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC_250", "PROFIC_SAEB",
                      paste0("A081_", stringr::str_pad(1:22, 3, pad = "0")),
                      paste0("A082M", stringr::str_pad(1:50, 3, pad = "0"))
                    )
                  )
                  
                } else if(stringr::str_detect(file_name, "MATEMATICA_03ANO")) {
                  
                  readr::fwf_widths(
                    c(8, 8, 8, 2, 1, 3, 30, 3, 1, 3, 3, 6,
                      3, 3, 3, 2, 1, 3, rep(12, 4), rep(3, 4),
                      rep(1, 39), rep(13, 3), 12, 12,
                      rep(1, 22), rep(1, 51)),
                    col_names = c(
                      "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC", 
                      "TURMA", "NOMETURMA", "TURMA_APLI", "EXTRA", 
                      "ALUNO", "ALUNO_VALI", "ESTRATO", "DEP_ADM",
                      "LOCAL", "REDE", "COD_UF", "REGIAO", "CAPITAL",
                      "PESO_AT", "PESO_AC", "PESO_EC", "PESO_TC",
                      "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3", 
                      paste0("RESP", 1:39), 
                      "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC_250", "PROFIC_SAEB",
                      paste0("A111_", stringr::str_pad(1:22, 3, pad = "0")),
                      paste0("A112M", stringr::str_pad(1:51, 3, pad = "0"))
                    )
                  )
                  
                } else if(stringr::str_detect(file_name, "PORTUGUES_04SERIE")) {
                  
                  readr::fwf_widths(
                    c(8, 8, 8, 2, 1, 3, 23, 3, 1, 3, 3, 6,
                      3, 3, 3, 2, 3, 3, rep(12, 4), rep(3, 4),
                      rep(1, 39), rep(13, 3), 12, 12,
                      rep(1, 24), rep(1, 42)),
                    col_names = c(
                      "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC", 
                      "TURMA", "NOMETURMA", "TURMA_APLI", "EXTRA", 
                      "ALUNO", "ALUNO_VALI", "ESTRATO", "DEP_ADM",
                      "LOCAL", "REDE", "COD_UF", "REGIAO", "CAPITAL",
                      "PESO_AT", "PESO_AC", "PESO_EC", "PESO_TC",
                      "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3", 
                      paste0("RESP", 1:39), 
                      "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC_250", "PROFIC_SAEB",
                      paste0("A041_", stringr::str_pad(1:24, 3, pad = "0")),
                      paste0("A042M", stringr::str_pad(1:42, 3, pad = "0"))
                    )
                  )
                  
                } else if(stringr::str_detect(file_name, "PORTUGUES_08SERIE")) {
                  
                  readr::fwf_widths(
                    c(8, 8, 8, 2, 1, 3, 29, 3, 1, 3, 3, 6,
                      3, 3, 3, 2, 3, 3, rep(12, 4), rep(3, 4),
                      rep(1, 39), rep(13, 3), 12, 12,
                      rep(1, 22), rep(1, 50)),
                    col_names = c(
                      "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC", 
                      "TURMA", "NOMETURMA", "TURMA_APLI", "EXTRA", 
                      "ALUNO", "ALUNO_VALI", "ESTRATO", "DEP_ADM",
                      "LOCAL", "REDE", "COD_UF", "REGIAO", "CAPITAL",
                      "PESO_AT", "PESO_AC", "PESO_EC", "PESO_TC",
                      "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3", 
                      paste0("RESP", 1:39), 
                      "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC_250", "PROFIC_SAEB",
                      paste0("A081_", stringr::str_pad(1:22, 3, pad = "0")),
                      paste0("A082M", stringr::str_pad(1:50, 3, pad = "0"))
                    )
                  )
                  
                } else if(stringr::str_detect(file_name, "PORTUGUES_03ANO")) {
                  
                  readr::fwf_widths(
                    c(8, 8, 8, 2, 1, 3, 30, 3, 1, 3, 3, 6,
                      3, 3, 3, 2, 3, 3, rep(12, 4), rep(3, 4),
                      rep(1, 39), rep(13, 3), 12, 12,
                      rep(1, 22), rep(1, 51)),
                    col_names = c(
                      "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC", 
                      "TURMA", "NOMETURMA", "TURMA_APLI", "EXTRA", 
                      "ALUNO", "ALUNO_VALI", "ESTRATO", "DEP_ADM",
                      "LOCAL", "REDE", "COD_UF", "REGIAO", "CAPITAL",
                      "PESO_AT", "PESO_AC", "PESO_EC", "PESO_TC",
                      "CADERNO", "BLOCO1", "BLOCO2", "BLOCO3", 
                      paste0("RESP", 1:39), 
                      "GAB_BL1", "GAB_BL2", "GAB_BL3", "PROFIC_250", "PROFIC_SAEB",
                      paste0("A111_", stringr::str_pad(1:22, 3, pad = "0")),
                      paste0("A112M", stringr::str_pad(1:51, 3, pad = "0"))
                    )
                  )
                  
                } else if(stringr::str_detect(file_name, "DIRETOR_05")) {
                  
                  readr::fwf_widths(
                    c(rep(8, 3), rep(3, 3), 2, 8, 3, 12,
                      rep(1, 113), rep(1, 40), rep(1, 4), rep(1, 12)),
                    col_names = c(
                      "MASCARA", "ANO_MASCARA", "ANO", "DEP_ADM", "LOCAL",
                      "REDE", "COD_UF", "REGIAO", "CAPITAL", "PESO_TC",
                      paste0("Q", 1:113),
                      "Q114_1", "Q114_2", "Q115_1", "Q115_2", "Q116_1", "Q116_2",
                      "Q117_1", "Q117_2", "Q118_1", "Q118_2", "Q119_1", "Q119_2",
                      "Q120_1", "Q120_2", "Q121_1", "Q121_2", "Q122_1", "Q122_2",
                      "Q123_1", "Q123_2", "Q124_1", "Q124_2", "Q125_1", "Q125_2",
                      "Q126_1", "Q126_2", "Q127_1", "Q127_2", "Q128_1", "Q128_2",
                      "Q129_1", "Q129_2", "Q130_1", "Q130_2", "Q131_1", "Q131_2",
                      "Q132_1", "Q132_2", "Q133_1", "Q133_2",
                      paste0("Q", 134:137),
                      "Q138_1", "Q138_2", "Q139_1", "Q139_2", "Q140_1", "Q140_2",
                      "Q141_1", "Q141_2", "Q142_1", "Q142_2", "Q143_1", "Q143_2"
                    )
                  )
                  
                } else if(stringr::str_detect(file_name, "DOCENTE_05")) {
                  
                  readr::fwf_widths(
                    c(rep(8, 3), 2, 1, 8, 23, 3, 1, 6, rep(3, 3),
                      2, 8, 3, 12, 12,
                      rep(1, 18), rep(1, 3), rep(1, 105)),
                    col_names = c(
                      "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "DISC",
                      "TURMA", "NOMETURMA", "TURMA_APLI", "EXTRA", "ESTRATO",
                      "DEP_ADM", "LOCAL", "REDE", "COD_UF", "REGIAO", "CAPITAL",
                      "PESO_EC", "PESO_TC",
                      paste0("Q", 1:18),
                      "Q19_1", "Q19_2", "Q19_3",
                      paste0("Q", 20:124)
                    )
                  )
                  
                } else if(stringr::str_detect(file_name, "ESCOLA_05")) {
                  
                  readr::fwf_widths(
                    c(rep(8, 3), rep(3, 3), 2, 8, 3, 12,
                      rep(1, 70)),
                    col_names = c(
                      "MASCARA", "ANO_MASCARA", "ANO", "DEP_ADM",
                      "LOCAL", "REDE", "COD_UF", "REGIAO", "CAPITAL",
                      "PESO_TC",
                      paste0("Q1_", 1:9),
                      paste0("Q2_", 1:2),
                      paste0("Q3_", 1:9),
                      paste0("Q4_", 1:16),
                      paste0("Q5_", 1:6),
                      paste0("Q6_", 1:10),
                      paste0("Q7_", 1:5),
                      "Q8", "Q9", "Q10", "Q11", "Q12", "Q13",
                      paste0("Q14_", 1:5),
                      "Q15", "Q16"
                    )
                  )
                  
                } else if(stringr::str_detect(file_name, "TURMA_05")) {
                  
                  readr::fwf_widths(
                    c(rep(8, 3), 2, 8, 23, 3, 1, 6, rep(3, 3),
                      2, 8, 3, 12, 12, rep(1, 4), 4, 4, rep(2, 32)),
                    col_names = c(
                      "MASCARA", "ANO_MASCARA", "ANO", "SERIE", "TURMA",
                      "NOMETURMA", "TURMA_APLI", "EXTRA", "ESTRATO",
                      "DEP_ADM", "LOCAL", "REDE", "COD_UF", "REGIAO",
                      "CAPITAL", "PESO_EC", "PESO_TC", 
                      "ITEM1_1", "ITEM1_2", "ITEM2_1", "ITEM2_2",
                      "ITEM3", "ITEM4", "ITEM5", "ITEM6",
                      paste0("ITEM7_", 1:30)
                    )
                  )
                  
                } else {
                  
                  NA
                  
                }
                
              } else {
                
                NA
                
              }
  }
