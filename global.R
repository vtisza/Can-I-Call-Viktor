can_I_call_Viktor<- function(){
  random_number<-runif(1)
  if (random_number<0.8)  {return("No You cant")}
  else return("Go on, call him")
}

counter<-0

counter_all<-read.csv("counter.csv")
counter_all[1,1]<-counter_all[1,1]+1
write.csv(counter_all,file = "counter.csv",row.names=F)