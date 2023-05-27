
#Renomeando Variaveis
cli::cli_alert_info("Renomeando Variaveis e Criando Variaveis Auxiliares")
infile <- file.path(dir_base, "Genomas.csv")
export <- file.path(dir_preliminar, "Genomas_clean_names.rds")


r <- rio::import(infile, encoding = "UTF-8")


r_names <- r %>%
  select(Nome_Virus = "Virus name",
         Localizacao = "Location",
         Sexo = "Gender",
         Idade_Paciente = "Patient age",
         Data_Ocorencia = "Collection date",
         Genoma = "Lineage"
         
  )



rio::export(r_names, export)
