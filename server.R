shinyServer(function(input, output) {
  output$table <- renderTable({
    input$action
    isolate(paste(loan <- input$loan, down <- input$down, term <- input$term, interest <- input$interest/100))
    principal = loan - down  
    data.frame(loan, down, principal, term, interest)
  })
  output$pay <- renderText({
    input$action
    isolate(paste(loan <- input$loan, down <- input$down, term <- input$term, interest <- input$interest/100))
    principal <- loan - down
    monInter <- interest/12
    payment <-  principal * ((monInter * (1 + monInter)^term)/((1 + monInter)^term - 1))
    payment <- round(payment, digits = 2)
    
    paste("Your monthly payment is $", as.character(payment), "per month")
  })
  
})