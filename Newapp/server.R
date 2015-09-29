shinyServer(function(input, output) {
  output$song <- renderPrint({
    c <- get_channels()
    get_song(input$channels, c)
  })
   
  output$program <- renderPrint({
    get_program_chan(input$programme, pro)
  })
})