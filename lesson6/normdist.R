library(dplyr)
library(rafalib)

rm(list=ls())
mice <- read.csv('lesson6/mice_pheno.csv')
mice <- na.omit(mice)