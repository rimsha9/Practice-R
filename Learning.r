# This is for practice
print ("practice r exercise")

name = "Rimshah"
version = "Rstudio - in writting"

print (name)
print ("these lines has been written in Rstudio")

a = 5
class (a)
a = 5L
class (a)
a = 5.62L

a <- 8
7 -> b
a
b
a + b

a <- 5:20
a
a <- 1:20
a


a <- c(0.5 , 0.6)
class(a)
a <- c(1+0i , 2+4i)
class (a)

b <- c(1.7 , "a")
class(b)
b <- c(True , 2)
class (b)
b <- c(TRUE , 2)
class(b)


m <- matrix (nrow=2 , ncol=3)
m
dim(m)
attributes (m)

m <- matrix (1:6 , nrow=2 , ncol=3)
m
m <- 1:10
m
dim (m)
dim (m) <- c(5 , 2)
m
x <- 1:3
y <- 10:12
cbind (x , y)
m
rbind (x , y)


x <- c(1,2,"3",54)
x
x <- list(1,"2",TRUE,1.6,1.0i)
x


x<- factor (c("yes","yes","no","yes","no"))
x
x <- factor(c("punjab","kpk","sindh","kpk"))
x
table(x)
unclass(x)



x <- factor(c("Mon","Tue","Wed","Thu","Fri","Sat","Sun"))
table(x)
levels(x)
x <- factor(c("Mon","Tue","Wed","Thu","Fri","Sat","Sun"))
levels= c("Sun","Mon","Tue","Wed","Thu","Fri","Sat")
x
levels(x)


x<-c(1,2,NA,10,3)
is.na(x)
is.nan(x)
x<-c(1,2,3,NA,NaN,10,5,NaN)
is.nan(x)
is.na(x)


x<- data.frame(day=1:4 , rain=c(T,T,F,F))
x
nrow(x)
row.names(x)<-c("A","B","C","D")
x
x<-list(a=1,b=2,c=3)
x



x <- c("a","b","c","c","d","a")
x[1]
x[1:4]
x[x>"a"]
u<-x>"b"
u
u<-x>"a"
u
x[u]
x


x<- matrix(1:6,2,3)
x
x[1,2]
x[2,2]
x[ ,2]
x[1, ]


x[1, , drop=FALSE]
x[1,3, drop=FALSE]


x<- list(weekday=1:4 , rainprob=0.6)
x[1]
x
x[[1]]


x<- list(weekday=1:4 , rainprob=0.6 , item="umbrella")
x[c(1,3)]
x[[c(2)]]
x[[c(1,3)]]
name<-"weekday"
x[[name]]
x[name]
x$name
x$weekday



x<-list(a=list(10,12,14), b=c(3.14,2.01))
x[1]
x[[1]]
x[[c(1,3)]]
x[[c(2,1)]]



x<- c(1,2,NA,4,NA,5)
bad<- is.na(x)
x[!bad]
y<- c("a","b",NA,"c",NA,"d")
good<-complete.cases(x,y)
x[good]
y[good]



x <- factor(c("WED","THU","SUN","MON","FRI","SAT","TUE"), levels= c("SUN","MON","TUE","WED","THU","FRI","SAT"))
#correction in arranging in levels

x


x<- function(a=78,b=1,c=NULL)
{
  print(a)
  print(b)
  print(c)
}
x(40)


x<- 1:4; y<- 6:9
print(x)
print(y)
x+y
x>2
x>=2
y==8
x*y
x/y
x<- 1:5; y<-6:9
x/y
5/6        #perform in cycle form



x<- matrix(1:4,2,2); y<- matrix(rep(10,4),2,2)
x
y
x*y
x%*%y
#matix form


x<- as.POSIXct("2012-10-25 01:00:00")
y<- as.POSIXct("2012-10-25 06:00:00", tz="GMT")
x-y


x<- list(1:4,rnom=10)
lapply(x,mean)
lapply(x,sd)


x<- list (a=1:4,b=rnorm(10),c=rnorm(20,1),d=rnorm(100,5))
lapply(x,mean)
sapply(x,mean)


x<- matrix(rnorm(200), 20,10)
x
apply(x,1,mean)
apply(x,2,mean)
apply(x,2,sum)
rowSums(x)
apply(x,1,quantile)
apply(x,1,quantile,probs=c(0.25,0.75))



#gl create factors
x<- c(rnorm(10),runif(10),rnorm(10,1))
f<-gl(3,10)
tapply(x,f,mean, simplify = FALSE)
split(x,f)
lapply(split(x,f), mean)


library(datasets)
head(airquality)

s<- split(airquality,airquality$Month)
s
head(s)
s$`5`
head(s$`5`)
table(airquality$Month)

lapply(s,function(x) colSums(x[,c("Ozone","Solar.R","Wind")]))
sapply(s,function(x) colMeans(x[,c("Ozone","Solar.R","Wind")]))       
sapply(s,function(x) colMeans(x[,c("Ozone","Solar.R","Wind")],na.rm = TRUE))      
