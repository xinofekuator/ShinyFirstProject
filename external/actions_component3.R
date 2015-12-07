populationRange<-function(value,max_limit){
  score=ifelse (value > max_limit,max_limit,value)
  return(score*100/max_limit)
}

output$map<-renderPlot({
  data <- switch(input$var, 
                 "White" = counties$white,
                 "Black" = counties$black,
                 "Hispanic" = counties$hispanic,
                 "Asian" = counties$asian,
                 "Total" = populationRange(counties$total.pop,input$maxCity))
  
  color <- switch(input$var, 
                  "White" = "darkgreen",
                  "Black" = "black",
                  "Hispanic" = "darkmagenta",
                  "Asian" = "darkblue",
                  "Total" = "tomato")
  
  legend <- switch(input$var, 
                   "White" = "% White",
                   "Black" = "% Black",
                   "Hispanic" = "% Hispanic",
                   "Asian" = "% Asian",
                   "Total" = "% Total")
  percent_map(data, legend.title = legend, color = color, min = input$range[1],max = input$range[2])
})