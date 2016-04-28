
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

    message<-reactive({
      a<-input$call
      can_I_call_Viktor()
    })
    counterf<-reactive({
      a<-input$call
      counter<<-counter+1
      counter
    })
    output$text1<- renderText(message())
    output$text2<- renderText(paste("Number of calls initiated: ",counterf()))

})
