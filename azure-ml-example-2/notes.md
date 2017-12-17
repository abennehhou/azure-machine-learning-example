# Advanced example in Azure

Example used to predict income. You can download it from here https://archive.ics.uci.edu/ml/datasets/Adult and import it in datasets as a new dataset. Or you can use _Import Data_ and use this url http://archive.ics.uci.edu/ml/machine-learning-databases/adult/adult.data.

Here, we try to if the income is less or greater than 50 K.

In this experiment:
* Import data
* Rename columns
* Make some columns categorical
* Filter useful columns
* Clean missing data
* Try 4 two-class models
* Train, Score and evaluate
* Execute R scripts to combine evaluation results
* Select best model -> Set up web service -> Predictive webservice. Compare this predictive experiment to the training experiment
* Run the predictive experiment, then deploy web service.

The webservice is now available in webservice tab. You can use it from a client  with an http POST request (example is provided for c#, python, R). You can also test it from the UI with random data.

