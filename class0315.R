
#產生不重複的向量
seq(100)
seq(1,5)
seq(1,5,by=0.5)
seq(1,5,length=3)

#產生重複的向量
rep(c(3:6),time=3,each=2)
v1<-c(1:5)
v2<-seq(3,10,by=5)
v3<-seq(3,10,length)
v4<-rep(c(3:6),time=3,each=2)

#因長度不足，會自動補足
#v1 = 1 2 3 4 5
#v2 = 3 8 3 8 3
res1 <- v1 + v2 

sum(v1)
#相乘上去
prod(v1)

m<-c(1,4,5,2,5,6,4,10,2)
sort(m)
sort(m,decreasing = TRUE)

#反轉排序
rev(m)

#條件判斷
x<-c(1:10)
x<=5

#有沒有任何一個小於5
any(x<5)

#字串結合
c("abc","efg","hij")
label <- paste(c("X","Y"),1:10,sep = ',')
print(label)

#根據x,y的位置去做排序 ex : (x,y,y,x)
c("X","Y")[rep(c(1,2,2,1),time=4)]

matrix_list<-matrix(c(1:8),nrow = 2,ncol = 4)
print(matrix_list)

matrix_list2<-matrix(c(1:8),nrow = 4)
print(matrix_list2)

#以列排序
matrix_list3<-matrix(c(1:8),nrow = 2,ncol = 4 , byrow=TRUE)
print(matrix_list3)

rownames(matrix_list)<-c('a','b')
colnames(matrix_list)<-c('A',"B","C","D")

rownames(matrix_list)
colnames(matrix_list)

dimnames(matrix_list)

#幾行幾列
dim(matrix_list)

str(matrix_list)

matrix_list[1,]
matrix_list[,2]
matrix_list[0:2,1]
matrix_list[1,0:2]

#拿掉某一欄或某一行
matrix_list[,-3]


#因子（印出不重複的數據）
x<-c(1,2,3,4,1,2,2,3,2,1,2,4)
y<-factor(x)
print(y)

#list

list1 <- list(a=1,e=c('A','B'))
list1$e
