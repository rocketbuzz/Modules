# Credit Risk Analysis

## Overview of Analysis

Credit risk is an inherently unbalanced classification problem, as good loans easily outnumber risky loans. Therefore, the need is to employ different techniques to train and evaluate models with unbalanced classes by the use of imbalanced-learn and scikit-learn libraries to build and evaluate models using resampling.

## Results

- Loan status is choosen as target for the goal of the project 
- 68470 candidates are identified as low risk .
- 347 candidates are identified as high risk .
- model is based on high risk loan candidates .

### Oversampling Algorithms

The imbalanced classification report for both the Naive Random Oversampling algorithm and the SMOTE Oversampling algorithm is provided in figures 1 and 2 respectively.

**_FIGURE 1. Naive Random Oversampling Classification Report_**


The Naive Random Oversampling model resulted in:
- a balanced accuracy score of 0.67
- precision value of 0.01 (high-risk)
- recall value of 0.74 (high-risk)
- F1 score of 0.02 (high-risk)


**_FIGURE 2. SMOTE Oversampling Classification Report_**


The SMOTE Oversampling model resulted in:
- a balanced accuracy score of 0.66
- precision value of 0.01 (high-risk)
- recall value of 0.63 (high-risk)
- F1 score of 0.02 (high-risk)

### Undersampling Algorithms

The imbalanced classification report for the Cluster Centroids undersampling algorithm is provided in figure 3

**_FIGURE 3. Cluster Centroids Undersampling Classification Report_**



The Cluster Centroids Undersampling model resulted in:
- a balanced accuracy score of 0.54
- precision value of 0.01 (high-risk)
- recall value of 0.69 (high-risk)
- F1 score of 0.01 (high-risk)

### Combined Sampling Algorithm

The imbalanced classification report for the SMOTEENN sampling algorithm is provided in figure 4

**_FIGURE 4. SMOTEENN Sampling Classification Report_**


The SMOTEENN Sampling model resulted in:
- a balanced accuracy score of 0.66
- precision value of 0.01 (high-risk)
- recall value of 0.73 (high-risk)
- F1 score of 0.02 (high-risk)

### Ensemble Learners

The imbalanced classification report for the Balanced Random Forest Classifier and the Easy Ensemble Classifier algorithms is provided in figures 5 and 6 respectively.

**_FIGURE 5. Balanced Random Forest Classifier Classification Report_**



The Balanced Random Forest Classifier model resulted in:
- a balanced accuracy score of 0.79
- precision value of 0.03 (high-risk)
- recall value of 0.70 (high-risk)
- F1 score of 0.06 (high-risk)

**_FIGURE 6. Easy Ensemble Classifier Classification Report_**



The Easy Ensemble Classifier model resulted in:
- a balanced accuracy score of 0.93
- precision value of 0.09 (high-risk)
- recall value of 0.92 (high-risk)
- F1 score of 0.16 (high-risk)

## Summary

The results shows that 

- All models have very low precision for identifying high-risk candidates.
- The Cluster Centroid model would be the less desirable model to use.
- The Easy Ensemble Classifier model will be the most useful.

Based on this analysis, the Easy Ensemble Classifier model seems like the most ideal choice, it may not be the best choice to identify high-risk candidates because an F1 score of 0.16 is low.

To decide on an optimal model, it may be best to collect more high-risk candidate data to input into the model, or try other machine learning algorithms that may do a better job and the 6 performed above.

