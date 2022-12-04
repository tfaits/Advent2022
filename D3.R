##D3
##Part 1
tmp <- read.table("/Users/tfaits/Documents/Advent2022/inD3.txt", header=F)
tmp <- tmp[,1]
myPriority <- c(letters, toupper(letters))
myScore <- c()
for(i in 1:length(myPriority)){
  myScore[[myPriority[i]]] <- i
}
myTotal <- 0
for(i in tmp){
  myLen <- nchar(i)
  tmp1 <- c(unique(strsplit(i, split="")[[1]][1:(myLen/2)]),unique(strsplit(i, split="")[[1]][(myLen/2 +1):myLen]))
  myTotal <- myTotal + myScore[[tmp1[duplicated(tmp1)]]]
}
print(myTotal)

##Part 2
idx <- 1
myTotal <- 0
while(idx < length(tmp)){
  tmp1 <- c(unique(strsplit(tmp[idx], split="")[[1]]),unique(strsplit(tmp[idx+1], split="")[[1]]),unique(strsplit(tmp[idx+2], split="")[[1]]))
  myTotal <- myTotal + myScore[[names(table(tmp1))[table(tmp1)==3]]]
  idx <- idx+3
}
print(myTotal)

