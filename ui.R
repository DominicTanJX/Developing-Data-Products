library(shiny)

shinyUI(pageWithSidebar(
  headerPanel('Developing Data Products - Predicting Miles Per Gallon (MPG) relative to cars in mtcars data set'),
  sidebarPanel(
   
    h3('Enter parameters below.'),
    numericInput('hp', 'Gross horsepower (between 50-330):', 140, min = 50, max = 330, step = 10), # example of numeric input
    radioButtons('cyl', 'Number of cylinders:', c('4' = 4, '6' = 6, '8' = 8), selected = '4'), # example of radio button input
    numericInput('wt', 'Weight (lbs) (between 1500-5500):', 3200, min = 1500, max = 5500, step = 100),
    h3('The predicted MPG based on your input is:'),
    verbatimTextOutput("prediction")
    ),
  
  mainPanel(
    
    h4('MPG relative to cars in mtcars data set'),
    plotOutput('plots')
  
  )
))