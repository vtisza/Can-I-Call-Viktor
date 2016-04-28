
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(
    fluidRow(
      column(6,
    h1("Can I call Viktor?"),br(),br(),
     h3(textOutput("text1")),
    actionButton("call",label="Want to call again"),br(),br(),
    textOutput("text2")
    )
    )
  )
)
