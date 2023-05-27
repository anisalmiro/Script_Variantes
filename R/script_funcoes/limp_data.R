#linha de instrunc0 para coregir Data

clean_dates <- function(.data){
  cli::cli_alert_info("Cleaning dates")
  .data %>%
    mutate(
      #format all dates equally
      across(matches("[D-d]ata_"), function(x)(str_sub(x, 1,10))),
      across(matches("[D-d]ata_"), function(x)(str_replace_all(x, "/", "-"))),
      Data_Ocorencia = as.Date(Data_Ocorencia, "%Y-%m-%d"),
      mes = month(Data_Ocorencia, label = T, abbr = F),
      year = year(Data_Ocorencia)
      
    ) 
  
  
  
  
  
  
  
  
}



