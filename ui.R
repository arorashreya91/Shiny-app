library(shiny) # loading the shiny library
library(ggvis)

#Using the function shiny UI. You can change the user interface under this function. 
shinyUI(fluidPage(
  
  titlePanel("Shiny app displaying graph between sepal width and length"),
  
  # Sidebar layout
  sidebarLayout(
    
    # Sidebar panel
    sidebarPanel(
      sliderInput("size", "Area", 10, 1000, value = 100)
    ),
    
    # Main panel
    mainPanel(
      uiOutput("ggvis_ui"),
      ggvisOutput("ggvis")
    )
  ))
)
