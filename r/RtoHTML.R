# setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

library(htmltools)
library(tidyverse)
library(shiny)

source("app_info_hc.R")
source("functions.R")
source("functions_toHTML.R")


## !! hc_year is defined in UPDATE.R


# AHRQ header and footer ------------------------------------------------------

ahrq_meta <- HTML(readSource("../html/ahrq_meta.html"))
ahrq_header <- HTML(readSource("../html/ahrq_header.html"))
ahrq_footer <- HTML(readSource("../html/ahrq_footer.html"))

# Home Page -------------------------------------------------------------------

dir.create("../mepstrends/home/")

# limit to just hc tables for now
hc_info <- infoList[names(infoList) %>% startsWith("hc")]

navbar <- tagList(lapply(names(hc_info), navbar_items))

home_body <- tagList(
  div(class = "usa-grid full-screen info-box",
    div(class = "em-container",
      h2("Household Component summary tables"),
      tags$p(HTML(infoList[['home']][['description']]))
      )
    ),

  div(class = 'usa-grid full-screen bottom-half',
      div(class = 'em-container',
        fluidRow(
          column(width = 4, preview_box('hc_use')),
          column(width = 4, preview_box('hc_ins')),
          column(width = 4, preview_box('hc_care'))
        ),
        fluidRow(
          column(width = 4, preview_box('hc_cond')),
          column(width = 4, preview_box('hc_pmed')),
          column(width = 4)
        )
      )
  )

)

home_page <- htmltools::htmlTemplate(
  "../html/template.html", body = home_body, load_js = "", navbar = navbar,
  ahrq_meta = ahrq_meta, ahrq_header = ahrq_header, ahrq_footer = ahrq_footer)

write(as.character(home_page), file = '../mepstrends/home/index.html')


## HC TABLES ------------------------------------------------------------------

# Use, expenditures, and population characteristics ---------------------------

cat("hc_use...")
dir.create("../mepstrends/hc_use/")
#year_list = 2015:hc_year

load("../formatted_tables/hc_use/hc_use.Rdata") # MASTER_TABLE

use_forms <- tagList(
  statInput(MASTER_TABLE),
#  tags$div(id = "control-totals",
#           "(Standard errors are approximately zero for control totals)"),
  dataViewInput(),
  yearInput(year_list),
  rcInput(MASTER_TABLE, type = 'col', label = 'Group by (columns):')  ,
  tags$fieldset(
    class = 'hide-if-trend',
    rcInput(MASTER_TABLE, type = 'row', label = 'Group by (rows):'),
    actionButton508("switchRC", label = "Switch rows/columns"))
)

use_page <- build_html('hc_use', forms = use_forms, pivot = F)
write(as.character(use_page), file = "../mepstrends/hc_use/index.html")