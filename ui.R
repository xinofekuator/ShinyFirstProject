source('external/aux_ui.R')

shinyUI(fluidPage(
  titlePanel('Tutorials'),
  navbarPage("Menu",
             component1(),
             component2(),
             component3(),
             component4(),
             navbarMenu("Extra",
                        tabPanel('Sub-component 1', plotOutput('carPlot',click='plot_click'),verbatimTextOutput("info"),"Click in a point of the plot to retrieve the coordinates."),
                        tabPanel('Sub-component 2', plotOutput('otherPlot',click='plot_click',brush='plot_brush'),verbatimTextOutput('info2'),
                                 "Click in a point of the plot to retrieve the coordinates.",
                                 "Click and drag to obtain the limits of the region selected.")))
))
