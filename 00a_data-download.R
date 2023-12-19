###### Import data from Google Drive ############-
# 231116 Alfonso Garmendia algarsal(at)upv(dot)es
##################################################
library(gsheet)
library(writexl)

### Data 2022 ------------------------------------
ss <- "docs.google.com/spreadsheets/d/1WM6hDgwCFxbLpT37HLzU-iYZAEGBdHP6CpU8BDwWmZc/"
data2022 <- gsheet2tbl(ss)

ss <- "docs.google.com/spreadsheets/d/1WM6hDgwCFxbLpT37HLzU-iYZAEGBdHP6CpU8BDwWmZc/edit#gid=1346911197"
legend2022 <- gsheet2tbl(ss)

ss <- "https://docs.google.com/spreadsheets/d/1WM6hDgwCFxbLpT37HLzU-iYZAEGBdHP6CpU8BDwWmZc/edit#gid=1136455781"
dates2022 <-  gsheet2tbl(ss)

### Data 2023 ------------------------------------
ss <- "https://docs.google.com/spreadsheets/d/1g9tCISwgck8Icx6BKGNvlS5HdUq5kIL2ATZTr37-_-k/edit#gid=0"
data2023 <- gsheet2tbl(ss)

ss <- "https://docs.google.com/spreadsheets/d/1g9tCISwgck8Icx6BKGNvlS5HdUq5kIL2ATZTr37-_-k/edit#gid=1346911197"
legend2023 <- gsheet2tbl(ss)

ss <- "https://docs.google.com/spreadsheets/d/1g9tCISwgck8Icx6BKGNvlS5HdUq5kIL2ATZTr37-_-k/edit#gid=1136455781"
dates2023 <-  gsheet2tbl(ss)

### Set 2023 Numerical Variables to Match 2022 Variables ------------------------------------
N <- sapply(data2022, is.numeric)
for(i in 1:length(N)){
  if (N[i])
    data2023[[names(N)[i]]] <- as.numeric(data2023[[names(N)[i]]])
}



### Save data ------------------------------------
### data folders
if (!dir.exists('data')) 
  dir.create('data')  
if (!dir.exists('data/raw')) 
  dir.create('data/raw')  
if (!dir.exists('data/xls')) 
  dir.create('data/xls')  

### Save as rdata --------------------------------
df.names <- ls(pattern = "20") 

save(list = df.names, 
  file = "data/raw/raw-data.Rdata")

#### Save as Excel with WriteXLS -----------------
### Better format but it needs Perl installed.
#   library(WriteXLS)
# if (testPerl()) {
#   WriteXLS(df.names,
#     ExcelFileName = "data/xls/raw-data.xlsx",
#     AdjWidth = TRUE, BoldHeaderRow = TRUE,
#     FreezeRow = 1)
# }

### Save as Excel with writexl -------------------
### No Perl needed. Less formatting options.
df.ls <- lapply(df.names, 
  FUN = function(x) get(x))
names(df.ls) <- df.names
writexl::write_xlsx(df.ls, 
  path = "data/xls/raw-data2.xlsx")

### Clean environment ----------------------------
rm(list = ls())


