
cli::cli_alert_success('Script de Analise de Variantes')


#Definir Regiao


Sys.setlocale("LC_ALL","Portuguese")
options("scipen"=100, digits = 2)


libraries <- c(
  
  
  #carpintery
  "glue", "janitor",  "scales",
  "forcats", "lubridate",
  
  #maps
  "sf",
  
  #"ggsn",
  
  #tidyverse: 
  "tidyr", "stringr", "dplyr",
  
  #outras
  "rio", "cli", "zoo",
  
  #plot
  "cowplot", "ggplot2",
  
  #others
  "dplyr"
  
)


#load packages ----------------------------------------------------------------
cli::cli_alert_info("Se tiver erros de Leitura de Bibliotecas, Instale-os ou faca um restart do ser R")
suppressWarnings({
  options(defaultPackages = c(getOption("defaultPackages"),
                              
                              libraries                        
                              
  ))
})


library(ggplot2)
library(dplyr)

#DEFININDO Directorios
  dir_data <- "data"
  dir_R <- "R"
  
  dir_shapes <- "shapes"
  dir_base <- file.path(dir_data, '1.Base')
  dir_preliminar <- file.path(dir_data, '2.Preliminar')
  dir_intermediaria <- file.path(dir_data, '3.Intermediaria')
  dir_limpos <- file.path(dir_data, "4.Analises")
  dir_dashboard <- file.path(dir_R, "Dashboard")
  dir_funcoes <- file.path(dir_R, "script_funcoes")
    

  
  

  
  

