library(shiny)

shinyUI(pageWithSidebar(
  # Title
  titlePanel("BMI Calculator"),
  # Fields 
  sidebarPanel( 
    numericInput(inputId="age", label="Age (years)",min=0, max= 100, step=1, value = 20),
    radioButtons(inputId = "sex","Gendre", c("Male"="M", "Female"="F")),
    numericInput(inputId="height",label = "Enter your Height in meters",min = 0,max = 2.20,step = 0.01,value = 1.70),
    numericInput(inputId="Weight",label = "Enter your Weight in Kgs",min= 0,max= 200, step=1,value = 60),
    br(),   
    actionButton("button",label="Calculate BMI"),
    br(),
    h4("Operating Instruction:"),
    helpText("Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women")
    ),
  
  mainPanel(
    h3("Results"),
    h4('Age'),
    textOutput("oage"),
    h4('Gendre'),
    textOutput("osex"),
    h4('Height'),
    textOutput("oheight"),
    h4('Weitght'),
    textOutput('oweight'),
    br(),
    br(),
    h4('Your BMI'),
    verbatimTextOutput('BMI'),
    br(), 
    h6("Underweight if your BMI is (less) < 18.5"),
    h6("Normal weight if your BMI is in between 18.5 to 24.9"),
    h6(" Overweight if your BMI is in between 25 to 29.9"),
    h6("Obese if your BMI is (more than or equal to) >= 30"),
    withMathJax(),
    h5("The equation used for the calculation is $$ BMI=\\frac{weight in Kgs}{(height in Mtrs)^2}$$ ")
    )
  ) 
)
