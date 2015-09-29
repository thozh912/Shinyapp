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
