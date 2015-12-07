
component1<-function(){
  tabPanel("Component 1",
           sidebarLayout(position='right',
                         sidebarPanel(
                           h4("Ignacio Amaya de la Peña"),
                           br(),
                           div(img(src = "fotoCarnet.jpg"),style="text-align: center;"),
                           br(),
                           p("This is my first shiny app."),
                           p("Don't know shiny yet? Try it!!!"),
                           br(),
                           code('install.packages("shiny")'),
                           br(),
                           br(),
                           br(),
                           div("RStudio", style = "color: blue; text-align: center;"),
                           br(),
                           div(img(src = "bigorb.png", height = 52, width = 52),style="text-align: center;")
                         ),
                         mainPanel(h1("Your skin like dawn",align = "center"),
                                   h2("Mine like musk",align = "center"),
                                   h3("One paints the beginning",align = "center"),
                                   h4("of a certain end.",align = "center"),
                                   h5("The other, the end of a",align = "center"),
                                   h6("sure beginning.",align = "center"),
                                   hr(),
                                   p(strong(em('Passing Time by Maya Angelou')),align="center"),
                                   hr(),
                                   HTML('<hr style="height:3px;border:none;color:#333;background-color:#6A0888;" />'),
                                   h5("He who bends to himself a Joy",align = "center"),
                                   h4("Does the winged life destroy;",align = "center"),
                                   h3("But he who kisses the Joy as it flies",align = "center"),
                                   h2(em("Lives in Eternity's sunrise."),align = "center"),
                                   hr(),
                                   p(strong(em("Eternity by Lord Byron")),align = "center"),
                                   hr(),
                                   br(),
                                   br(),
                                   p("For more poems like these check the answers of this",
                                     a("Quora question.", 
                                       href = "https://www.quora.com/What-is-the-most-beautiful-short-poem-ever-written"),align = "center")
                                   )
           ))
  
}

component2<-function(){
  tabPanel("Component 2",
           sidebarLayout(position='right',
                         sidebarPanel(
                           sliderInput("bins",
                                       "Number of bins:",
                                       min = 1,
                                       max = 50,
                                       value = 15)
                         ),
                         
                         # Show a plot of the generated distribution
                         mainPanel(
                           plotOutput("distPlot"),
                           plotOutput("distPlot2")
                         )
           ))
  
}

component3<-function(){
  tabPanel("Component 3",
           sidebarLayout(position='right',
                         sidebarPanel(strong("Sidebar"),helpText('Create demographic maps from the informations from the US 2010 census'),
                                      selectInput("var", 
                                                  label = "Choose a subset of the population",
                                                  choices = c("Total","White", "Black",
                                                              "Hispanic", "Asian"),
                                                  selected = "Total"),
                                      
                                      sliderInput("range", 
                                                  label = "Range :",
                                                  min = 0, max = 100, value = c(0, 100)),
                                      "Threshold of inhabitants to be in the 100%",
                                      helpText("Necesary to define which ones are the most populated cities."),
                                      numericInput("maxCity", label = "Maximum number of inhabitants", value = 1500000, min = 1000000, max = 3000000, step = 100000)
                         ),
                         mainPanel(h2(strong("Cloropeth"),align = "center"),
                                   plotOutput("map"))
           ))
}

component4<-function(){
  tabPanel("Component 4",
           sidebarLayout(position='left',
                         sidebarPanel(
                           helpText("Select a stock to examine. 
                                    Information will be collected from yahoo finance."),
                           
                           textInput("symbol", "Stock Symbol", "SPY"),
                           
                           dateRangeInput("dates", 
                                          "Date range",
                                          start = "2013-01-01", 
                                          end = as.character(Sys.Date())),
                           
                           br(),
                           br(),
                           
                           checkboxInput("is_yaxis_log", "Plot y axis on log scale", 
                                         value = FALSE),
                           
                           checkboxInput("is_inflaction_adjusted", 
                                         "Adjust prices for inflation", value = FALSE)
                           ),
                         mainPanel(plotOutput("stocksPlot"))
           ))
  
}