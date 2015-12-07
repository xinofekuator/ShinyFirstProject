yahooData <- reactive({
  getSymbols(input$symbol, src = "yahoo", 
             from = input$dates[1],
             to = input$dates[2],
             auto.assign = FALSE)
})

adjustedYahooData <- reactive({
  if (!input$is_inflaction_adjusted){
    resultado=(yahooData())
  } 
  else{
    resultado=adjust(yahooData())  
  }
  return(resultado)
})

output$stocksPlot <- renderPlot({    
  chartSeries(adjustedYahooData(), theme = chartTheme("white"), 
              type = "line", log.scale = input$is_yaxis_log, TA = NULL)
})