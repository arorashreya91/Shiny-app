library(shiny) # loading the shiny library
library(ggvis)

#Using the function shiny UI. You can change the user interface under this function. 
shinyUI(fluidPage(
  
  titlePanel("Shiny app displaying graph between sepal width and length"),
  
  # Sidebar layout
  sidebarLayout(
    
    # Sidebar panel
    sidebarPanel(
      sliderInput("size", "Area", 10, 1000, value = 100),
      div('The shiny app consists of the following:- 

An area slider
A graph between sepal width and sepal length of 3 species Iris setosa, versicolor, and virginica.
As you increase or decrease the area with the slider you will the changes of sepal width and sepal length for different species.

The iris dataset is a predefined data in R. It gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.
')
    ),
    
    # Main panel
    mainPanel(
      uiOutput("ggvis_ui"),
      ggvisOutput("ggvis")
    )
  ))
)
