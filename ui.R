shinyUI(navbarPage("Shiny Monthly Payment Calculator",
                   
                   
                   tabPanel("Summary", 
                            includeMarkdown("summary.md")
                   ),
                   tabPanel("Application",
                            sidebarLayout(
                              sidebarPanel(
                                numericInput("loan", label = "Loan Total", value = 10000),
                                numericInput("down", label = "Down Payment", value = 0),
                                numericInput("term", label = "Term in Months", value = 60),
                                numericInput("interest", label = "Interest per year (APR)", value = 5), 
                                actionButton("action", label = "Calculate")
                              ),
                              mainPanel(
                                tableOutput("table")
                              )
                            )
                   )
                   
                   
                   
                   
))