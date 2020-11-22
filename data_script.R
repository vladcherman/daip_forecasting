library(tidyverse)
library(ggplot2)
library(patchwork)

# read in data
sales <- read.csv("data/sales.csv")
stores <- read.csv('data/stores.csv')
features <- read.csv('data/features.csv')

sf <- left_join(sales, features, by = c("Store" = "Store", "Date" = "Date"))

ssf <- left_join(sf, stores, by = "Store")

ssf

# data_by_store = data_by_dept.drop(columns=["Dept"]).groupby(["Date","Store","Weekly_Sales"]).sum()

# print(data_by_store)
