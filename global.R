can_I_call_Viktor<- function(){
  random_number<-runif(1)
  if (random_number<0.8)  {return("No You cant")}
  else return("Go on, call him")
}

counter<-0