# server.R
# Coursera Developing Data Products Assigment
# A Lim Dec 2015

library(shiny)
library(shinyapps)

# Read cleaned data
# Original Data from the world Bank
# http://data.worldbank.org/data-catalog/Population-ranking-table
# http://data.worldbank.org/data-catalog/GDP-PPP-based-table
# data has been preprocessed to merge the 2 tables and remove unwanted columns and region data
# so that only individual country data remains. Note that some data for GDP for several countries
# is not available from the source file and is shown as '0'.

df <- read.csv("./data/cleaned_data.csv")

shinyServer(
  function(input, output) {
    output$table <- renderDataTable({(df[input$range[1]:input$range[2],])})
  }
)