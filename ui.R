# ui.R
# Coursera Developing Data Products Assigment
# A Lim Dec 2015

library(shiny)
library(shinyapps)

shinyUI(fluidPage(
  titlePanel("World Bank GDP Rankings"),
  
  sidebarLayout(
    sidebarPanel(
      helpText("Rank countries based on GDP using data from the World Bank. Use the slider below to get information on a range of countries where the smaller the number means the higher it is ranked."),
      helpText("You can also select a particular country by typing its 3 letter code in the Search Box on the right"),
               
      sliderInput("range", 
                  label = h3("Ranking Range:"),
                  min = 1, max = 100, value = c(10, 20))
      ),
    
    mainPanel(
      dataTableOutput("table")
    )
  )
))