# Azure Machine Learning Example

Example using Azure Machine Learning, based on pluralsight courses: [Getting Started with Azure Machine Learning](https://app.pluralsight.com/library/courses/azure-machine-learning-getting-started/table-of-contents) and [Understanding Machine Learning](https://app.pluralsight.com/library/courses/understanding-machine-learning/table-of-contents).

## Main purpose

* Find patterns in existing data (Training Data)
* Uses those patterns to predict the future (new data). Create and use a model for this.

## Process

Process is iterative.
* Choose data: gather raw data from different sources. Example: historical data
* Prepare data: apply preprocessing, iterate to have prepared data. Example: use aggregation applications
* Select Machine Learning algorithms
* Train each model: apply it to a % of the data, evaluate it with the rest of the data
* Choose best model
* Repeat the process frequently
* Use model with new data

## Notions
* supervised learning: value to predict is in the training data. data is labeled.
* unsupervised learning: value to predict is not in the training data. data is unlabeled.
* Examples of machine learning problems
    * regression
    * classification
    * clustering
