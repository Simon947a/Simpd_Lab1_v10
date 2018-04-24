library(MCDA)

epsilon <-0.01

t = read.table("Data.csv", header = TRUE, sep = ",", row.names = 1)


# ranks of the alternatives
alternativesRanks <- c(1,2,3,4)
names(alternativesRanks) <- row.names(t)

# criteria to minimize or maximize
criteriaMinMax <- c("min","max","max","max","min")
names(criteriaMinMax) <- colnames(t)

x<-additiveValueFunctionElicitation(
  t,criteriaMinMax, epsilon, alternativesRanks = alternativesRanks)
View(x)