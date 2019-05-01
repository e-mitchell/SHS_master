#setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
setwd("//cdc.gov/private/M728/niw2/KNOWLEDGE_MANAGEMENT_TOOL/SHS_TABLE1_DEMO_kids_crude_test/shs_master/r")
library(tidyverse)

apps <- c("hc_use")
#apps <- c("hc_use", "hc_care", "hc_ins", "hc_cond", "hc_pmed")
#apps <- c("hc_use", "hc_care", "hc_ins", "hc_pmed")


# Year (or years) that needs to be run
# year_list <- 022017
#year_list = list("2017", "2017.1", "2018")

 #year_list <- c("2017","2017.1","2018")
year_list <- c("2015q1","2016q1","2017q1")
 
  hc_year <- max(year_list)

  
  

  # Update MASTER datasets
    source("../r/Update_master.R")
  

    # Run RtoHTML to update web pages with new year
    source("../r/RtoHTML.R", chdir = T)
    
  # Run RtoJSON to update JSON data with new year
  write_data  = TRUE
  write_notes = FALSE
  source("../r/RtoJSON.R", chdir = T)