
#dataFarme
name<-c("張三","李四","王五")
age<-c(20,25,30)
gender<-c("男","女","女")
dataframe<-data.frame(name,age,gender)
View(dataframe)

install.packages("xlsx")
install.packages("xlsxjars") 
install.packages("rJava",type='source')

#read xlsx
library(xlsx)
#解決windows的亂碼問題
# Sys.setlocale(category = "LC_ALL",locale = "cht")
# Sys.setlocale(category = "LC_ALL",locale = "eng")
dex01 <- read.xlsx("data1_2.xlsx",sheetIndex = 1 ,encoding='utf8')
dex02 <- read.xlsx("data1_2.xlsx",sheetIndex = 2 ,encoding='utf8')
dex01
View(dex01)
head(dex01)
tail(dex01)

#write 0322output xlsx
write.xlsx(dex01,"0322output.xlsx",sheetName = "輸出第一頁")

#合併xlsx
dex03<-dex01
dex03$city <- dex02$居住地[dex01$ID == dex02$ID]
View(dex03)
write.xlsx(dex03,"0322output.xlsx",sheetName = "輸出第二頁（含城市）",row.names=FALSE,append = TRUE)
dex03$BMI <-round(dex03$Weight/(dex03$Height/100)^2,2)
View(dex03)

#資料篩選 
#第二個參數是要搜尋的列index
lowBMI <- dex03[dex03$BMI < 20,]
lowBMI
nrow(lowBMI)

midBMI <- dex03[dex03$BMI >= 20 & dex03$BMI <= 28,]
midBMI
nrow(midBMI)

otherBMI <- dex03[dex03$BMI <= 20 | dex03$BMI >= 28,]
otherBMI
nrow(otherBMI)

#資料轉換與分類 breaks為切分的等級
dex03$Height_Level <- cut(dex03$Height,breaks = c(150,165,180,220),labels = c('矮子','還可以','高高的'))
dex03

#自動切成三等份，labels需要對齊
dex03$Height_Level <- cut(dex03$Height,breaks = 3,labels = c('矮子','還可以','高高的'))
dex03
str(dex03)
#查看是否有空資料
any(is.na)
any(is.na(dex03))
write.xlsx(dex03,'0322output.xlsx',sheetName = "包含Height_Level(自動分類)" , append = TRUE)


#read Url Data
url<- 'http://www.ktec.gov.tw/ktec_api.php?type=csv'
dataFromUrl <- read.csv(url,header = TRUE,sep=',')

