
library(shiny)

shinyUI( pageWithSidebar(
        # Application title
        headerPanel("Lets play! what number i am thinking of!?!?"),
        
        sidebarPanel(
                #numericInput('guess', 'Number', 1, min = 1, max = 100, step = 1),
                #submitButton('Submit')
                textInput('guess', 'Number', value = ""),
                h5('And now press \'Go!\' you just need it the first time!'),     
                actionButton("goButton", "Go!")
        ), 
        mainPanel(
                h2('Try to guess a number between 1 and 100'),
                h5('I will think in a number and your task is to try to guess what i am thinking!'),
                h3('Results of guess'),
                h4('Your number'),
                verbatimTextOutput("inputValue"),
                h4('Which is...'),
                verbatimTextOutput("outputValue"),
                h5('To play again close the app and reload.'),
                h5('thank you for playing')
        )
)
)
