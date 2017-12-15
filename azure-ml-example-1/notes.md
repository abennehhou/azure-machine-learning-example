# Basic example in Azure

This example is created using a free Azure ML trial. You can register here: https://studio.azureml.net/Home.

Here, we try to predict car's price depending on all its other properties (model, technical specifications...).

* Create an experiment
    * Go to _Experiments_ tab, New button, and select _Blank Experiment_.
* Select dataset
    * Select a sample already provided in Azure ML: Saved Datasets -> Samples -> Automobile price data.
    * Drag-drop this toolbox
    * Right-click -> Dataset -> Visualize. Check columns, rows, number of missing values, visualization of each column.
* Select columns
    * Data Transformation -> Manipulation -> Select columns in Dataset.
    * Drag-drop this toolbox and add a link from the previous activity to this one.
    * In Launch column selector, select all columns except _normalized-losses_. This column contains too many missing values.
* Clean missing data
    * Data Transformation -> Manipulation -> Clean missing data.
    * Drag-drop this toolbox and add a link from the previous activity to this one.
    * In cleaning mode, choose remove entire row, as there are not too many missing values.
    * Click save then run, to check that everything is okay. The steps are Queued, Running, then Finished running.
* Split data
    * Data Transformation -> Sample and Split -> Split data.
    * Drag-drop this toolbox and add a link from the previous 
    * Change fraction to 0.7: 70% of data will be used to train the model, 30% will be used to evaluate it.
* Choose a model
    * Machine Learning -> Initialize Model -> Regression -> Linear Regression: we choose a linear approach to model the relation between the selected columns.
    * Drag-drop this toolbox, save and run.
* Train model
    * Machine Learning -> Train -> Train Model.
    * Drag-drop this toolbox, link it to Split data (Result dataset1, the 70%) and Linear Regression.
    * In launch column selector, select _price_ column.
* Score model
    * Machine Learning -> Score -> Score Model.
    * Drag-drop this toolbox, link it to Split data (Result dataset2, the 30%) and Train Model.
* Evaluate model
    * Machine Learning -> Evaluate -> Evaluate Model.
    * Drag-drop this toolbox, link it to Score model, save and Run.
    * Right-click, Evaluation Results, Visualize
    * Check the Coefficient of Determination. It is 0.916888. It determines how well the model fits the data. Here it is 91%, which could be a good result.

## Operations on Azure ML

Use PowerShell Module for Azure ML:  https://github.com/hning86/azuremlps

```
$exp = Get-AmlExperiment | where Description -eq 'Auto Price Example 1'
Export-AmlExperimentGraph -ExperimentId $exp.ExperimentId -OutputFile 'E:\Temp\AutoPriceExample1Experiment.json'
```