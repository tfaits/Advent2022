##D4
##P1
tmp <- read.table("/Users/tfaits/Documents/Advent2022/inD4.txt", header=F)
subsetCount <- 0
for(i in tmp[,1]){
  tmp1 <- as.numeric(sapply(strsplit(i,",")[[1]], function(x){strsplit(x,"-")[[1]]}))
  subsetCount <- subsetCount + ((tmp1[1] >= tmp1[3]) == (tmp1[2] <= tmp1[4]) | (tmp1[1] <= tmp1[3]) == (tmp1[2] >= tmp1[4]))
}
subsetCount
##P2
subsetCount <- 0
for(i in tmp[,1]){
  tmp1 <- as.numeric(sapply(strsplit(i,",")[[1]], function(x){strsplit(x,"-")[[1]]}))
  subsetCount <- subsetCount + ((tmp1[1] <= tmp1[4]) & (tmp1[2] >= tmp1[3]))
}
subsetCount

