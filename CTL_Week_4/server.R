# Developing Data Products Week 4 Assignment
# Interactive Learning of the Central Limit Theorem

library(shiny)

shinyServer(function(input, output) {

    output$distPlot <- renderPlot({
        
        # Generate the data for input of the number of samples and bin size
        n <- rnorm(input$n)
        b <- input$bin

        # Draw the histogram with the specified number of samples and bin size
        hist(x = n, breaks = b,
             main = "Normal Distribution of Sample Size 'n'",
             col = "lightgray")
        
        # Add a vertical line at the mean and deviations of the data
        abline(v = c(mean(n), sd(n), -sd(n)), 
               col = c("red", "blue", "blue"), 
               lwd = 2, lty = c(1,2,2))
    })
    
    # In text, give the mean of the data
    output$mean_n <- renderText({
        
        n <- rnorm(input$n)
        paste("The mean is", mean(n))
    })
    
    # In text, give the deviation of the data
    output$SD_n <- renderText({
        
        n <- rnorm(input$n)
        paste("The deviation is", sd(n))
    })

})
