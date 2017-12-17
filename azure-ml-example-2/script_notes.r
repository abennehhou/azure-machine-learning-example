# Merge inputs from two evaluate model "Two-Class Averaged Perceptron" and "Two-Class Boosted Decision"
dataset1 <- maml.mapInputPort(1)
dataset2 <- maml.mapInputPort(2)

data.set <- rbind(dataset1, dataset2)
new_column = c("Two-Class Averaged Perceptron", "Two-Class Boosted Decision")
data.set <- cbind(new_column, data.set)

maml.mapOutputPort("data.set");

###################################
# Merge inputs from one evaluate model "having two inputs "Two-Class Logic Regression" and "Two-Class Bayes Point Machine"
dataset <- maml.mapInputPort(1)

data.set <- dataset
new_column = c("Two-Class Logic Regression", "Two-Class Bayes Point Machine")
data.set <- cbind(new_column, data.set)

maml.mapOutputPort("data.set");
