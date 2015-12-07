output$carPlot <- renderPlot({ plot(cars, main = 'cars dataset')})
output$otherPlot <- renderPlot({ plot(faithful, main = 'faithful dataset')})

output$info <- renderText({
  paste0("x=", input$plot_click$x, "\ny=", input$plot_click$y)
})

output$info2 <- renderText({
  xy_str <- function(e) {
    if(is.null(e)) return("NULL\n")
    paste0("x=", round(e$x, 1), " y=", round(e$y, 1), "\n")
  }
  xy_range_str <- function(e) {
    if(is.null(e)) return("NULL\n")
    paste0("xmin=", round(e$xmin, 1), " xmax=", round(e$xmax, 1), 
           " ymin=", round(e$ymin, 1), " ymax=", round(e$ymax, 1))
  }
  
  paste0(
    "click: ", xy_str(input$plot_click),
    "brush: ", xy_range_str(input$plot_brush)
  )
})