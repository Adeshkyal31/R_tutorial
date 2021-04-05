b<-100000
monty_hall<-function(strategy){
  doors<-as.character((1:3))
  prize<-sample(c("car","goat","goat"))
  prize_door<-doors[prize=="car"]
  my_pick<-sample(doors,1)
  show<-sample(doors[!doors %in% c(my_pick,prize_door)],1)
  stick<-my_pick
  #stick==prize_door
  switch<-doors[!doors %in% c(my_pick,show)]
  choice<-ifelse(strategy=="stick",stick,switch)
  choice==prize_door
}
stick<-replicate(b,monty_hall("stick"))
mean(stick)
switch<-replicate(b,monty_hall("switch"))
mean(switch)
##same birthdays
bdays<-function(n){
  days<-sample(c(1:365),n,replace = TRUE)
  any(duplicated(days))
}
results<-replicate(b,bdays(50))
mean(results)