library(maps)
library(mapproj)
library(quantmod)
counties <- readRDS("data/counties.rds")
source("helpers/helpers_comp3.R")
source("helpers/helpers_comp4.R")
shinyServer(function(input,output){
  source('external/actions_component1.R',local=TRUE)
  source('external/actions_component2.R',local=TRUE)
  source('external/actions_component3.R',local=TRUE)
  source('external/actions_component4.R',local=TRUE)
  source('external/actions_navpanel.R',local=TRUE)

})
  