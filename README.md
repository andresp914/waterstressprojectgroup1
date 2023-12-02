# Water stress project. 

> Please add a short description of the project members, objectives and protocol. 

## Data repositories

Original data are in Google Drive:

- 2022. 
https://docs.google.com/spreadsheets/d/1WM6hDgwCFxbLpT37HLzU-iYZAEGBdHP6CpU8BDwWmZc/

- 2023. 
https://docs.google.com/spreadsheets/d/1g9tCISwgck8Icx6BKGNvlS5HdUq5kIL2ATZTr37-_-k/


## Protocol for new data

1. Download data from Google Drive. Each time there are changes in original data:
    a. Use **_00a_data-download.R_** to.
        - Download new data from Google Drive.
        - Save new data into *data/raw* and *data/xls* folders.
    b. Use **_00b_data-bind.R_** to bind the different data tables into one data frame. 
        - Bind the tables into one dataframe.
        - Save dataframe in Excel format to revise it (in *data/xls* folder). 
        - Save dataframe as *data/bound-data.Rdata* to use it in analysis. 
    c. Use **_01_data-check.qmd_** to check data structure and find errors to correct in original data. 

```
source("00a_data-download.R")
source("00b_data-bind.R")
quarto::quarto_render("01_data-check.qmd")
```

## Protocol for analysis

> Describe as in previous chapter the scripts used in your project.

