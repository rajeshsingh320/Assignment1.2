

# Session 1 Assignment 2



# What should be the output of the following Script? 

v <- c( 2,5.5,6) 

t <- c(8, 3, 4) 

print(v%/%t) 



#======================================================================================



# 2. You have 25 excel files with names as xx_1.xlsx, xx_2.xlsx,....xx_25.xlsx in a dir.

# Write a program to extract the contents of each excel sheet and make it one df.

library(readxl)

library(dplyr)

library(data.table)



setwd("D:/Data Analytics with RET/Assignment")



file.list <- list.files(pattern='*.xlsx')      # read the files in directory



# data frame by column with column id

df.list <- lapply(file.list, read_excel)

df1 <- rbindlist(df.list, idcol = "id")

View(df1)



# data frame by column and if we want file name as column id 

df.list <- sapply(file.list, read_excel, simplify = FALSE)

df2 <- rbindlist(df.list, idcol = "id")

View(df2)



# data frame by row with file names

df3 <- rbind.data.frame(df.list , idcol="id")

View(df3)



#==================================================================================

# 3. If the above 25 files were csv files, what would be your script to read?



setwd("D:/Data Analytics with RET/Assignment")



file.list <- list.files(pattern='*.csv') # read the files in directory



# data frame by column with column id

df.list <- lapply(file.list, read.csv)

df_csv <- rbindlist(df.list, idcol = "id")

View(df_csv)



# data frame by column with coulmn id as file name

df.list<- sapply(file.list, read.csv, simplify = FALSE)

df_csv2 <- rbindlist(df.list, idcol = "id")

View(df_csv2)



# data frame by row with file names in column 

df_csv3 <- rbind.data.frame(df.list, idcol = "id")

View(df_csv3)