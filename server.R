shinyServer(function(input, output) {
  output$newPlot <- renderPlot({
   n <- input$n
   mean <- input$mean
   stdev <- input$stdev
   dist <- rnorm(n = n, mean = mean, sd = stdev)
   par(mfrow=c(1,2))
   hist(dist)
   plot(density(dist))
  })
})