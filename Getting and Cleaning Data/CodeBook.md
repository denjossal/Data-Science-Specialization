# CodeBook.md
This CodeBook describes variables, data, and transformations used to clean up the data.
## Variables
fp: Path for file **features.txt**
cont: Counter to put **ACTIVITY LABEL**

Variables for **Test** file paths:

* tps: Path for file **subject_test.txt**
* tpx: Path for file **X_test.txt**
* tpy: Path for file **y_test.txt**

Variables for **Train** file paths:

* trps: Path for file **subject_train**
* trpx: Path for file **X_train.txt**
* trpy: Path for file **y_train.txt**

## Data
* fpFile: File with all features

## Test Data
* tpsFile: Test file with **subject** data
* tpxFile: Test file with **X_test** data
* tpyFile: Test file with **y_test.txt** data
* tpxFileNew: Test file with headers of features
* tpxFileNew2: Test file with all variables and headers


## Train Data
* trpsFile: Test file with **subject** data
* trpxFile: Train file with **X_train** data
* trpyFile: Train file with **y_train.txt** data
* trpxFileNew: Train file with headers of features
* tpxFileNew2: Train file with all variables and headers

##Tidy Data
* t: Tidy Data

## Transformations
* Test files:
  * tpxFileNew2: New data set with **tpyFile** and **tpxFileNew**
  * tpxFileNew2: Add new column with **tpsFile**
* Train Files:
  * trpxFileNew2: New data set with **tpyFile** and **tpxFileNew**
  * trpxFileNew2: Add new column with **tpsFile**

## Merged data
* mergedData: Has **tpxFileNew2** and **tpxFileNew2** merged
