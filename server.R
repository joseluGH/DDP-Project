library(shiny)

shinyServer(function(input, output) {
  output$oage<- renderText({input$gobutton
                            isolate(input$age)
  })
  output$osex<- renderText({input$gobutton
                            isolate(input$sex)
  })
  output$oheight <- renderText({input$gobutton
                                isolate(input$height)
  })
  output$oweight<-renderText({input$gobutton
                              isolate(input$Weight)
  })
  
  x<- function(Weight,height){ round(input$Weight/input$height^2 , 1)}
  
  output$BMI <- reactive({
    if (input$button == 0)
      return("")
    
    isolate(                                                            
      x(output$oweight,output$oheight)     )
    
  })
  
  
  
  
})
