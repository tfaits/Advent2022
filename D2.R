##2020 AoC D2
##Part 1
tmp <- read.table("/Users/tfaits/Documents/Advent2022/inD2.txt", header=F)
Scores <- c("AX"=4, "AY"=8, "AZ"=3, "BX"=1, "BY"=5, "BZ"=9, "CX"=7, "CY"=2, "CZ"=6)
tmp2 <- paste(tmp[,1],tmp[,2], sep="")
myScore <- sum(Scores[tmp2])
print(myScore)

##Part 2
Scores <- c("AX"=3, "AY"=4, "AZ"=8, "BX"=1, "BY"=5, "BZ"=9, "CX"=2, "CY"=6, "CZ"=7)
tmp2 <- paste(tmp[,1],tmp[,2], sep="")
myScore <- sum(Scores[tmp2])
print(myScore)

