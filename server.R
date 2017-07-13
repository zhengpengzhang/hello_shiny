function(input,output){
  dataInput<-eventReactive(input$act,{
    switch(input$dataset,
           "rock"=rock,
           "cars"=cars,
           "pressure"=pressure)
  },ignoreNULL=F)
  
  output$summary<-renderPrint({
    summary(dataInput())
  })
  output$table<-renderTable({
    head(dataInput(),n=isolate(input$num))
  })
}
