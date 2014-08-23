shinyUI(fluidPage(
  titlePanel("Modeling Normal Distributions"),
  
  sidebarLayout(
    sidebarPanel(
      numericInput("n", label = "Sample Size", value = 100),
      numericInput("mean", label = "Sample Mean", value = 0),
      numericInput("stdev", label = "Standard Deviation", value = 1)
      ##actionButton("action", label = "Compute")
    ),
    mainPanel(
      plotOutput("newPlot")
    )
  )
  
))