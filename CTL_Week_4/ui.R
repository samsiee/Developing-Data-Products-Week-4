# Developing Data Products Week 4 Assignment
# Interactive Learning of the Central Limit Theorem

#Load the Shiny Package
library(shiny)

shinyUI(fluidPage(

    # Application title
    titlePanel("The Central Limit Theorem"),

    # The Side Bar with contain two slider inputs: 
    # (1) Adjusting the number of samples (n)
    # (2) Adjusting the bin size of the histogram
    sidebarLayout(
        sidebarPanel(
            sliderInput("n",
                        "Number of Samples (n):",
                        value = 10,
                        min = 10,
                        max = 100000),
            sliderInput("bin", "Bin Size:",
                        value = 50,
                        min = 1, 
                        max = 100)
        ),
    # The Main Panel will contain the following outputs:
    # (1) The histogram of the normal distribution of sample size "n"
    # (2) The mean of the distribution
    # (3) the standard deviation of the distribution
        mainPanel(
            plotOutput("distPlot"),
            textOutput("mean_n"),
            textOutput("SD_n")
        )
    )
))
