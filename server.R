
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

    message<-reactive({
      a<-input$call
      counter_all[1,1]<<-counter_all[1,1]+1
      write.csv(counter_all,file = "counter.csv",row.names=F)
      can_I_call_Viktor()
    })
    
    message_all<-reactive({
      a<-input$call
      counter_all[1,1]
    })
    
    counterf<-reactive({
      a<-input$call
      counter<<-counter+1
      counter
    })
    
    output$text1<- renderText(message())
    output$text2<- renderText(paste("Number of calls initiated: ",counterf()))
    output$text3<- renderText(paste("Number of calls initiated since the start of the application: ",message_all()))

})
