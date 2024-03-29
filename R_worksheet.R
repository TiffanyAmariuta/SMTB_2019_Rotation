
#put on github: 1. bash examples 2. jingle bells 3. this file 

#directory management 
getwd()
setwd("~/SMTB_2019_Rotation/")
getwd()

#explore the standard normal distribution 
distrib <- rnorm(n = 100, mean = 0, sd = 1)
length(distrib)
head(distrib)
hist(distrib)
distrib <- rnorm(n = 10000, mean = 0, sd = 1)
hist(distrib)
mean(distrib)
sd(distrib)

N <- 100
mymat <- matrix(rnorm(n = N, mean = 0, sd = 1), nrow = sqrt(N))
write.table(mymat, "~/exercise_table.txt", row.names = F, col.names = F, quote = F)

system("mv ~/exercise_table.txt ~/SMTB_2019_Rotation/")
mymat2 <- read.table("exercise_table.txt", header = F, stringsAsFactors = F, sep = " ")
head(mymat2)
dim(mymat2)
nrow(mymat2)
ncol(mymat2)
mymat2[1:3,1:3] #indexing 
mymat2[6,9] #select a value 
rowSums(mymat2) #sums over rows 
rowSums(t(mymat2)) #sums over columns
mean(as.matrix(mymat2)) #compute average
s <- c() #sum gene expression over each gene individually 
for (i in 1:nrow(mymat2)){
  s[i] <- sum(mymat2[i,])
}
all(s == rowSums(mymat2)) 





