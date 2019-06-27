str(Book1)
View(Book1)
set.seed(1234)
ind <- sample(2, nrow(Book1), replace=TRUE, prob=c(0.7, 0.3))
trainData <- Book1[ind==1,]
testData <- Book1[ind==2,]
install.packages("party")
library(party)
pos1<- Pos ~ Acceleration + Ball control + Finishing + GKdiving
final_ctree <- ctree(pos, data=trainData)
table(predict(final_ctree), trainData$Position)
