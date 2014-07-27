library(shiny) #load shiny library

library(ggvis)

#You can change this file according to how your application would work.
shinyServer(
  function(input, output) {
    
    input_size <- reactive(input$size)
    
    iris %>%
      ggvis(~Sepal.Length, ~Sepal.Width) %>%
      group_by(Species) %>%
      layer_points(size := input_size, fill = ~Species) %>%
      bind_shiny("ggvis", "ggvis_ui")
    
  })
