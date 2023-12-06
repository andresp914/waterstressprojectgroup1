# Water stress project group 1. 

> "Andres Felipe Pascagaza Pulido, Chidimma Joy Akabuogu, Paul Bosse & Javier Rojas Carrillo" 
To compare the effect of different levels of water stress on physiological variables of a set of plant species.
Data obtained from a adaptation to water stress experiment in greenhouse conditions, and later on processed using RStudio. 

## Data repositories.

Original data are in Google Drive:

- 2022. 
https://docs.google.com/spreadsheets/d/1WM6hDgwCFxbLpT37HLzU-iYZAEGBdHP6CpU8BDwWmZc/

- 2023. 
https://docs.google.com/spreadsheets/d/1g9tCISwgck8Icx6BKGNvlS5HdUq5kIL2ATZTr37-_-k/


## Protocol for merging the data
Download data from Google Drive. Each time there are changes in original data:
    a. Use **_00a_data-download.R_** to load the data.
    b. Use **_00b_data-bind.R_** to bind the different data tables into one data frame. 
    c. Use **_01_data-check.qmd_** to check data structure and find errors to correct in original data. 

```
source("00a_data-download.R")
source("00b_data-bind.R")
quarto::quarto_render("01_data-check.qmd")
``` 

## Protocol for analysis
Open the Quarto document:
Run the code and render it for visualising the tables, graphs, and different analyses
source("Preliminary results Group 1.qmd")
> Describe as in previous chapter the scripts used in your project.

For the script used in for:
a. Table modification
b. Adapting data
c. Graphs
  1. Line graph
  2. Bar plot
d. Analysis
  1. ANOVA
  2. Tukey HDS
  3. Kruskal-Wallis
  4. Shapiro-Wilk
