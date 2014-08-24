shinyServer(function(input, output) {
  output$table <- renderTable({
    input$action
    isolate(paste(loan <- input$loan, down <- input$down, term <- input$term, interest <- input$interest/100))
    
    principal <- loan - down
    monInter <- interest/12
    payment <-  principal * ((monInter * (1 + monInter)^term)/((1 + monInter)^term - 1))
      
    data.frame(loan, down, principal, term, interest, payment)
  })
  
})