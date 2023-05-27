title: "Worksheet"
author: "Anisio Bule e Pirolita Mambo"
date: "4/1/2022"


#   ----------------- Script para Analise de Variantes _________________
# PRIMEIO PROCEDIMENTO DEVERA ACORRER TODAS BIBLIOTECAS QUE SE ENCONTRAM NO FICHEIRO NOMEADO " PROFILE.R"
# Correr o script na sequencia numerada no decorer das Linhas

#Carregando Bibliotecas
#  1
source(".Profile.R", encoding = "UTF-8")

#  2
#Carregando a base e Renomeando Variaveis
source("R/00.Renomeando_base.R", encoding = "UTF-8")
View(r_names)

#Limpeza da base e criacao de variaveis auxiliares
#  3
source("R/00.Limp_Variaveis_Aux.R", encoding = "UTF-8")