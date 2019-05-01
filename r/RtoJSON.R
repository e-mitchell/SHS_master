# setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

library(tidyverse)
library(stringr)
library(jsonlite)
#library(MEPS)

source("functions.R")
source("functions_toJSON.R")

source("app_info_hc.R")
source("app_notes_hc.R")


# write_data  = TRUE
# write_notes = TRUE


# HC tables -------------------------------------------------------------------

notes <- list()

# Use, expenditures, and population ---------------------------------

notes[['hc_use']] <- 
  list(totEVT  = EVT,
       meanEVT = EVT,
       avgEVT  = EVT,
       
       totEXP   = EXP,
       meanEXP  = EXP,
       meanEXP0 = EXP,
       medEXP   = paste(EXP, median),
       
       event = event,
       sop   = sop) %>% append(demographics)

if(write_data)  data_toJSON(appKey = 'hc_use', pivot = F)
if(write_notes) notes_toJSON(appKey = 'hc_use', notes = notes[['hc_use']])

