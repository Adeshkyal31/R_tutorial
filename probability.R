#generating urns for probablity simulation
beads<-rep(c("green", "black"),times= c(45,67))
events<-replicate(10000,sample(beads,3))#chossing random 3 beads for 10000 times
#by default it gives answer not considering replacements.(can set replace=true if needed)
tab<-table(events)
prop.table(tab)
#in monte carlo simulations we repeat the experiments large no. of times ,
#practically equivalent to infinte no. of times
#paste joins smaller strings and also works on pair of vectors
number<-"Three"
suit<-"Hearts"
paste(number,suit)
paste(letters[1:5],as.character(1:5))
