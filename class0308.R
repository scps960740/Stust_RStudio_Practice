# 查看套件
library()
library(xlsx)
install.packages("xlsx")
update.packages()

# 選擇鏡像站
chooseCRANmirror()

#讀取本地資料
data()
data("AirPassengers")
data(package = "cluster")
View(AirPassengers)

#讀取本地資料flower
data(flower, package = "cluster")
View(flower)

#查看前幾筆 第二個參數不打就預設六筆
head(flower)
head(flower, 5)

#查看後幾筆 第二個參數不打就預設六筆
tail(flower)
tail(flower, 5)

#設定取得預設工作目錄
getwd()
setwd("/Users/apple/desktop/R/data")
getwd()

#取得Rstudio目前使用的記憶體（語法為windows專用）
memory.size()
memory.limit()
x = 1 + 1

#目前記憶體存在的物件
objects()
object.size(flower)

#清除物件資料
rm(flower)
rm(x)

#運算

sqrt(81) #開平方
99 %% 3    #取餘數
99 %/% 3   #取商數
round(989.11999, 2) #取到小數第二位進位
round(989.11999, -1) #取到整數第一位並進位
