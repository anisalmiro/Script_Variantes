#Limpando vetor Provincia
list_clean_genoma <- list(
  
  `Cabo Delgado` = c("Cabodelgado",
                     "Cabo_Delgado",
                     "Africa / Mozambique / Cabo Delgado",
                     "Africa / Mozambique / Cabo Delgado / Pemba","Cabo Delgado"),

  
  `Nampula` = c("Africa / Mozambique / Nampula",
             "Cidade de Nampula",
             "Nampula"),
  
  `Niassa` = c("Africa / Mozambique / Niassa / Lichinga",
               "Africa / Mozambique / Niassa",
               "Africa / Mozambique / Niassa / Cuamba","Niassa"),
  
  `Tete` = c("Africa / Mozambique / Cidade de Tete",
             "Africa / Mozambique / Tete / Chiuta","Africa / Mozambique / Tete",
             "Tete",
             "tete"),
  
  
  
  `Zambezia` = c("Africa / Mozambique / Quelimane",
               "Quelimane",
               "Africa / Mozambique / Zambezia / Murrumbala",
               "Zambezia",
               "Africa / Mozambique / Zambezia"),
  
  
  
  `Manica` = c("Africa / Mozambique / Manica",
             "Manica"),
  
  `Sofala` = c("Africa / Mozambique / Beira",
               "Sofala",
               "sofala",
               "Africa / Mozambique / Sofala","Beira"),
  
  `Inhambane` = c("Africa / Mozambique / Inhambane","INHAMBANE","Inhambane"),
  
  
  
  `Gaza` = c("Africa / Mozambique / Gaza",
                         "Africa / Mozambique / Gaza / Xai Xai",
                         "Gaza",
             "gaza"
             ),
  

  
  
  
  `Maputo` = c("Africa / Mozambique",
              "Africa / Mozambique / Maputo",
              "Africa / Mozambique / Maputo / Matola",
              "Africa / Mozambique / Maputo / Marracune",
              "Africa / Mozambique / Maputo / Maputo",
              "Africa / Mozambique / Maputo / Maputo City","Maputo","Matola","Maputo Cidade","Maputo Provincia","Maputo cidade"
              )
  
)



#Retornando vector dad provincias nao limpas
#'@param ... Provincia to fetch the derty values
dirty_names_provincia <- function(...) {
  
  
  list_clean_names[[...]]
  
  
}



#'@param x Variable containing Provincia

clean_provincia <- function(x){
  
  provs <- names(list_clean_names)
  
  #y = x
  
  for(p in provs){
    
    x = case_when(x %in% dirty_names_provincia(p) ~ p,
                  T ~ x)
    
    
  }  
  
  #code missing as NA
  y = case_when(x == "Missing" ~ NA_character_,
                T ~ x)
  
  return(y)
  
  
}


