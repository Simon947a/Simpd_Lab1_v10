epsilon <-0.01

t = read.table("Data.csv", header = TRUE, sep = ",")

# the performance table
performanceTable <- rbind(
  c(5,2,16,449),
  c(5.2,2,16,649),
  c(5.5,3,32,829),
  c(5.3,4,64,1899)
)

rownames(performanceTable) <- c(
  "Nokia 3 Dual Sim ",
  "Nokia 5 Dual Sim",
  "Nokia 6 Dual Sim",
  "Nokia 8"
)
colnames(performanceTable) <- c(
  "Display",
  "RAM",
  "ROM",
  "Price"
)
# ranks of the alternatives
alternativesRanks <- c(1,2,3,4)

names(alternativesRanks) <- row.names(performanceTable)

# criteria to minimize or maximize
criteriaMinMax <- c("max","max","max","min")
names(criteriaMinMax) <- colnames(performanceTable)

library(MCDA)
x<-additiveValueFunctionElicitation(performanceTable, criteriaMinMax, epsilon, alternativesRanks = alternativesRanks)

