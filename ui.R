#' This is UI for Newapp
#' 
#' Creates a simple UI for Newapp
#' 
#' This UI consists of two selectInput panels which take input
#' as well as two renderPrint output panels for producing output.

shinyUI(pageWithSidebar(
  headerPanel("Swedish Radio"),
  
  sidebarPanel(
    img(src='images.png', height = 100, width = 250),
  ),
  
  mainPanel(
   
  selectInput(inputId = "channels", 
              label = h3("Select a channel"),
              choices = list(channel = chan)
              ),
              helpText("It will show which program is playing in that channel right now."),
  verbatimTextOutput("song"),
  
  
  selectInput(inputId = "programme", 
              label = h3("Select a program"),
              choices = list(programme = as.character(pro[,1]))
  ),
   helpText("It will show the channel to which the program belongs to."),
  verbatimTextOutput("program")
  )
  
))
