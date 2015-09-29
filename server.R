#' This is server for Newapp
#' 
#' This server requests data based on input and produces output
#' 


shinyServer(function(input, output) {
  output$song <- renderPrint({
    c <- Lab5::get_channels()
    Lab5::get_song(input$channels, c)
  })
   
  output$program <- renderPrint({
    get_program_chan(input$programme, pro)
  })
})