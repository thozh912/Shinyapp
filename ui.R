#' This is UI for Newapp
#' 
#' Creates a simple UI for Newapp
#' 
#' This UI consists of two selectInput panels which take input
#' as well as two renderPrint output panels for producing output.

shinyUI(pageWithSidebar(
  headerPanel("Swedish Radio"),
  
  sidebarPanel(
    img(source="images.png")
  ),
  
  mainPanel(
   
  selectInput(inputId = "channels", 
              label = h3("Select channel to see which program is playing right now"),
              choices = list(channel = chan)
              ),
  verbatimTextOutput("song"),
  
  
  selectInput(inputId = "programme", 
              label = h3("Select a program to see which channel it belongs to"),
              choices = list(programme = as.character(pro[,1]))
  ),
  verbatimTextOutput("program")
  )
  
))
