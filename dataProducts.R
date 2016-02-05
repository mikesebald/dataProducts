# Developing Data Products course at coursera

library(shiny)
library(manipulate)
library(rCharts)
library(googleVis)
library(plotly)

library(manipulate)
myPlot <- function(s) {
  plot(cars$dist - mean(cars$dist), cars$speed - mean(cars$speed))
  abline(0, s)
}

manipulate(myPlot(s), s = slider(0, 2, step = 0.1))
