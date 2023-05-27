
cli::cli_alert_success("Reparando datas e criando Variaveis Auxiliares")


#cleans the data

infile <- file.path(dir_preliminar, "Genomas_clean_names.rds")
exfile_aprovada <- file.path(dir_intermediaria, "Base_aprovada.rds")
exfile_checks <-  file.path("C:/INS_checks/casos_check.csv")



#read appended data
r_names <- rio::import(infile)


c <- r_names %>%
  limp_localizacao() %>%
  limp_data() %>%
  limp_tipo_genoma_nome() %>%
  limp_tipo_genoma_ensenciais() 
 # limp_ano_mes()
#separate_NoApproved() %>%
# limp_tipo_genoma_cod_nome() %>%


rio::export(filter(c,
                   status_record == "Approved"),
            exfile_aprovada)


#rio::export(select(c,
#                   idade, provincia, distrito, status_record, Data_reporte,resultado_testagem) %>%
#              filter(status_record != "Approved"),
#            exfile_not_aprov)