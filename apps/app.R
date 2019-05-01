# Use ----------------------------------------

library(shiny)


addResourcePath('json','../mepstrends/hc_use/json')
addResourcePath('src','../mepstrends/src')

ui <- htmlTemplate('../mepstrends/hc_use/index.html')
#ui <- htmlTemplate ("index.html") #use this for shinyapps.io deployment
server <- shinyServer(function(input, output) {})

shinyApp(ui = ui, server = server)
