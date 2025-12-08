###############################################
################ Chapter 1 ####################
###############################################
1+1
2*3
10/2

a <- c(1,2,3,4,5)
b <- c("a", "b", "c", "d")
save(a, b, file="chapter1")

install.packages("ggplot2")
library(ggplot2)


###############################################
################ Chapter 2 ####################
###############################################

1+5
3-5
2*3
4/5
2^5
2**5

3==5
3<5
3>5
3!=5 # not equal

a <- c(TRUE, FALSE, TRUE, FALSE)
b <- c(FALSE, FALSE, TRUE, TRUE)
c <- TRUE
d <- FALSE

a & b #벡터와 벡터 and(그리고) 논리결합
a | b #벡터와 벡터 or(혹은) 논리결합
c & d #원소와 원소 and(그리고) 논리결합
c || d #원소와 원소 or(혹은) 논리결합

Object1 <- 1 #Object1에 1을 할당
Object1

Object2 <- 2
Object2

age <- 15
age

var1 <- c(1, 3, 5, 7, 9)
var1

var2 <- c(1:5)
var2

var3 <- c("a", "b")
var3

var4 <- c(1, "a")
var4

var5 <- c(2, TRUE)
var5

var6 <- seq(1,5) #1~5까지 연속 값으로 var6 생성
var6

var7 <- seq(1, 10, by=2) #1에서 10까지 2씩 증가
var7

var8 <- seq(1, 10, length =5)
var8

var9 <- rep(3, times = 5)
var9

var10 <- rep(T, times = 5)
var10

var11 <- rep(c("a", "b", "c"), 2)
var11

var12 <- rep(c("a", "b", "c"),
            c("1", "2", "3"))
var12

var13 <- rep(1:3, each=2)
var13

var14 <- rep(1:3, times=2)
var14

var15 <- rep(1:3, each=2, times=2)
var15

var16 <- rep(1:3, each=2, times=2, len=4)
var16

crt1 <- "Hello, R!"	
crt1

crt2 <- c("a", "b", "c")
crt2

LETTERS[1]

letters[3]

month.abb[]

month.abb[c(1:3, 8:10)]

month.name[]

month.name[c(1:3, 8:10)]

paste("Hello", "World")

paste("Hello", "World", sep = "-")

v1 <- c("Hello", "World")
paste(v1, collapse = "~")

text1 <- "Learning data-science is challenging"
substr(text1, 10,22)

substr(text1, 10,22) <- "math function"
text1

x <- 10
if (x > 5) {
  print("x는 5보다 크다")
}

x <- 3
if (x > 5) {
  print("x는 5보다 크다")
}

x <- 3

if (x >= 5) {
  print("x는 5 이상이다")
} else {
  print("x는 5 미만이다")
}

menu <- 3
result <- switch(menu,
                 "커피",
                 "녹차",
                 "주스")
print(result)


drink <- "B"
choice <- switch(drink,
                 "A" = "커피",
                 "B" = "녹차",
                 "C" = "주스")

print(choice)

for(i in 1:5){ 
  print(i) 
}

for(i in 1:10){ 
  print(i+i^2) 
}

for(i in 1:3){
  for(j in 4:6 ){
    print(i*j)
  }
}

for(i in 1:10) {
  if(i %% 2 == 0) {
    print(paste(i, "는 짝수입니다."))
  } else {
    print(paste(i, "는 홀수입니다."))
  }
}

for (i in 1:10) {
  print(i)
}

x <- 1
while (x <= 10) {
  if (x %% 2 == 0) {  # 짝수인지 확인
    print(x)
  }
  x <- x + 1
}

R <- c(1:10000)
sampled_data <- sample(R, 10)
sampled_data

plus_function <- function(x, y) {
  result <- x + y
  return(result)
}

plus_function(10, 15)

F_to_C <- function(a){
  c_result = (a-32)*5/9
  return(c_result)
}
F_to_C(70)


###############################################
################ Chapter 3 ####################
###############################################

num_double <- 1.123
num_double

num_integer <- 10L
num_integer

str1 <- "Hello, R!"
str1

str2 <- c("a", "b", "c")
str2

log_data1 <- 1 == 2
log_data1

a <- 10
b <- 20
log_data2 <- a < b
log_data2

comp_number <- 1 + 5i
comp_number

new_gender_data <- c("남성", "여성", "기타", 
                     "여성", "기타")

new_gender_factor <- factor(new_gender_data,
                            levels = c("여성", "남성", "기타"))

new_gender_factor

dates <- as.Date(c("2025-01-01", "2025-02-15", "2025-03-20"))
dates

data <- data.frame(
  이름 = c("홍길동", "김철수", "이영희", "박민수"),
  나이 = c(25, NA, 30, 28),
  점수 = c(90, 85, NA, 95)
)
print(data)

#숫자형 벡터 생성
num_vec <- c(1, 2, 3, 4, 5)
num_vec

#문자형 벡터 생성
char_vec <- c("apple", "banana", "cherry")
char_vec

#논리형 벡터 생성
log_vec <- c(TRUE, FALSE, TRUE)
log_vec

#2*2 행렬 구성
A1 <- matrix(1:4, nrow=2, ncol=2)
A1

A2 <- matrix(1:4, 2, 2)
A2

#byrow=TRUE 옵션 사용
A3 <- matrix(1:4, 2, 2, byrow=TRUE)
A3

#행렬이름 부여
A4 <- matrix(data=1:4,
             nrow=2,
             ncol=2,
             byrow=TRUE)
rownames(A4) <- c("R_1", "R_2")
colnames(A4) <- c("C_1", "C_2")
A4

my_array <- array(data = 1:24,  
              dim = c(3, 4, 2)) #3행, 4열, 2층으로 구성

my_array

my_array2 <- array(data = 1:20,    
                  dim = c(3, 4, 2))
my_array2

df <- data.frame(name=c("kim", "lee", "park", "choi"), 
                 age=c(32,25,18,39),
                 height=c(170, 175, 168, 180),
                 weight=c(63, 66, 59, 70))
df

my_list1 <- list(c(1:5), c(1:50), c("red", "black", "white"))
my_list1

my_list2 <- list(size=c(1:5), 
                 age=c(1:50), 
                 color=c("red", "black", "white"))
my_list2

data_x <- c(1, 2, 3)
mode(data_x)
class(data_x)
typeof(data_x)
str(data_x)
is.numeric(data_x)

as.numeric(c("-1", "1.345", "4.5", "gold"))

as.character(11:15)

as.numeric(FALSE)

as.numeric(TRUE)

vec <- c(1, 2, 3, 4, 5)
as.data.frame(vec)

vec <- c(1, 2, 3, 4, 5)
as.list(vec)

vec <- c(1,2,3,4,5)
as.list(vec)
str(vec)

vec2 <- as.list(vec)
str(vec2)

v_1<- c(1:10)
v_1

v_1[2]

v_1[3:5]

v_1[-3]

v_1[1] <- "a"

m_1 <- matrix(c(1:9),3,3)
m_1
m_1[3,2]
m_1[2,]
m_1[,3]
m_1[1,c(1,2)]

m_1[2,3] <- 20
m_1
m_1[-1,]

df_1 <- data.frame(name=c("kim", "lee", "park", "choi"), 
                   age=c(32,25,18,39),
                   height=c(170, 175, 168, 180),
                   weight=c(63, 66, 59, 70))
df_1
class(df_1)
str(df_1)
df_1[2,3]
df_1[2,]
df_1[,3]
df_1[c(1,3),]

class(df[,2])

df_1
df_1$height
df_1$height >= 175
df_1$name[df_1$height >= 175]

df_1$height[df_1$height < 175] <- 160
df_1

df_1$score <- c(95, 80, 75, 90)
df_1

my_list <- list(
  num = 1:5,          
  char = c("A", "B"),
  mat = matrix(1:4, nrow = 2),
  df = data.frame(x = 1:3, y = c("a", "b", "c"))
)
my_list

my_list[[2]]

class(my_list[[3]])

my_list[-2]

str(my_list)
my_list$num
my_list$num[2]
my_list$df$x
my_list$new_var <- c(10, 20, 30)


###############################################
################ Chapter 4 ####################
###############################################

getwd()
setwd("C:/R Book")
getwd()

data1 <- read.csv("dataset2.csv", header = T)
str(data1)

install.packages("readxl.packages")
library(readxl)
data2 <- read_excel("dataset1.xlsx")
str(data1)

write.csv(df_1, "example1.csv")
write.table(df_1, "example2.txt", sep = "\t")
getwd()
df_2 <- read.csv("example1.csv", header=T)
df_3 <- read.table("example2.txt", header=T)

data1 <- read.csv("dataset2.csv", header = T)
str(data1)
class(data1$g191dpmt_n)
dim(data1)
nrow(data1)
ncol(data1)
length(data1)

names(data1)
head(data1)
tail(data1)
head(data1, 10)
tail(data1, 10)

is.na(data1$g191age)
sum(is.na(data1$g191age))
sum(is.na(data1$g191sq007))
col_missings <- colSums(is.na(data1))
print(col_missings)
row_missings <- rowSums(is.na(data1))
print(row_missings)

summary(data1$g191age)
data1$g191age <- ifelse(data1$g191age < 23, NA, data1$g191age)
sum(is.na(data1$g191age))

data2 <- data1[, c(1:100)]
dim(data2)

data3 <- data1[, c("g191pid", "g191branch", "g191dpmt")]
dim(data3)

data4 <- data1[data1$g191age >= 24, ] 
dim(data4)

data5 <- subset(data1, subset= g191age >= 24, select = c(1:10) )
dim(data5)

rm(data2, data3, data4, data5)

data2 <- subset(
  data1, 
  subset = !is.na(g191pid) & g191pid %in% sample(unique(na.omit(g191pid)), size = 100, replace = FALSE), 
  select = c(1:10)
)

data3 <- subset(
  data1, 
  subset = !is.na(g191pid) & g191pid %in% sample(unique(na.omit(g191pid)), size = 100, replace = FALSE), 
  select = c(1:10)
)

data4 <- rbind(data2, data3)
dim(data4)

data5 <- data1[1:100, 1:10]

data6 <- data1[1:100, 11:20]

data7 <- cbind(data5, data6)
dim(data7)

data8 <- data1[1:1000, c(1, 11:20)]
data9 <- data1[501:1500, c(1, 16:25)]
data10 <- merge(data8, data9, by = "g191pid")
dim(data10)

data2 <- data1[, 1:15]
str(data2)
colnames(data2)[1] <- "id"
str(data2)
colnames(data2)[2:5] <- c("branch", "found", "course", "daynight")
str(data2)

str(data2)
data2$new_age <- data2$g191age*10

mean(data2$g191age, na.rm = T)
mean(data2$new_age, na.rm= T)

data2$recoding1 <-  ifelse(data2$g191age < 30, 1,
                    ifelse(data2$g191age < 40, 2,
                    ifelse(data2$g191age < 50, 3,
                    ifelse(data2$g191age < 60, 4, 5))))
table1 <- table(data2$recoding1)
print(table1)

table2 <- table(data2$g191sex)
print(table2)

data2$g191sex <- factor(data2$g191sex, 
                        levels = c("1", "2"), 
                        labels = c("Male", "Female"))

table2 <- table(data2$g191sex)
print(table2)


###############################################
################ Chapter 5 ####################
###############################################

a <- c(1,2,3,5,6,7,7,7,9,10,11,13,13,14,15)
b <- c(1,2,3,5,6,7,7,7,9,10,11,13,13,14,15,100)
mean(a)
median(a)
mean(b)
median(b)

c <- c(11,2,3,7,15,7,9,10,5,6,13,13,7,1,14)
d <- sort(c)
print(d)
e <- sort(c, decreasing = TRUE)
print(e)

var(a)
sd(a)
range(a)
diff(range(a))
IQR(a)
quantile(a, probs = c(0.25, 0.5, 0.75))

hist(data2$g191age, breaks = 100, main = "연령 분포1", col = "pink", border = "blue")
data2$age_under30 <- ifelse(data2$g191age > 30, NA, data2$g191age)
hist(data2$age_under30, breaks = 10, main = "연령 분포2", col = "pink", border = "blue")     

#install.packages("moments")
library(moments)
skewness(data2$age_under30, na.rm = T)
kurtosis(data2$age_under30, na.rm = T)

table1 <- table(data2$g191majorcat)
print(table1)
data2$g191majorcat <- factor(data2$g191majorcat,
                             levels = c("1", "2", "3", "4", "5", "6", "7"),
                             labels = c("인문", "사회", "교육", "공학", "자연", "의학", "예체"))
x1 <- table(data2$g191majorcat)
print(x1)
x2 <- round(prop.table(x1),2)
print(x2)

crosstable1 <- table(data2$g191sex, data2$g191majorcat)
print(crosstable1)
sumtable1 <- addmargins(crosstable1)
print(sumtable1)

prop.table(crosstable1)
percent <- round(prop.table(crosstable1)*100,2)
print(percent)

addmargins(percent, margin = 1)
addmargins(percent, margin = 2)
addmargins(percent, margin = c(1,2))

data3 <- subset(data1, select = c("g191sex", "g191majorcat", "g191a059", "g191a125") )
str(data3)
col_missings <- colSums(is.na(data3))
print(col_missings)

colnames(data3)[1] <- "sex"
colnames(data3)[2] <- "major"
colnames(data3)[3] <- "full_time"
colnames(data3)[4] <- "income"
str(data3)

table(data3$sex)
data3$sex <- factor(data3$sex, 
                    levels = c("1", "2"), 
                    labels = c("Male", "Female"))
table(data3$major)
data3$major <- factor(data3$major,
                      levels = c("1", "2", "3", "4", "5", "6", "7"),
                      labels = c("인문", "사회", "교육", "공학", "자연", "의학", "예체"))

table(data3$full_time)

data3$full_time <- ifelse(data3$full_time < 0, NA, data3$full_time)

summary(data3$income)
data3$income<- ifelse(data3$income < 0, NA, data3$income)

mean(data3$income, na.rm = T)
median(data3$income, na.rm = T)
sd(data3$income, na.rm = T)
IQR(data3$income, na.rm = T)
max(data3$income, na.rm = T)
min(data3$income, na.rm = T)
range(data3$income, na.rm = T)
data3$income<- ifelse(data3$income > 500, NA, data3$income)

hist(data3$income, breaks = 30, main = "소득", col = "pink", border = "blue")
library(moments)
skewness(data3$income, na.rm = T)
kurtosis(data3$income, na.rm = T)

table2 <- table(data3$full_time)
print(table2)
ratio_table2 <- round(prop.table(table2)*100, 3)
print(ratio_table2)
crosstable2 <- table(data3$sex, data3$full_time)
print(crosstable2)
ratio_cross2 <- round(prop.table(crosstable2)*100, 2)
print(ratio_cross2)

crosstable3 <- table(data3$major, data3$full_time)
print(crosstable3)
ratio_cross3 <- round(prop.table(crosstable3)*100, 2)
print(ratio_cross3)
sum_crosstable <- addmargins(ratio_cross3, margin = c(1,2))
print(sum_crosstable)

aggregate1 <- aggregate(data3$income ~ data3$sex, data = data3, FUN = mean)
print(aggregate1)

aggregate2 <- aggregate(data3$income ~ data3$major, data = data3, FUN = mean)
print(aggregate2)

aggregate3 <- aggregate(data3$income ~ data3$full_time, data = data3, FUN = mean)
print(aggregate3)


###############################################
################ Chapter 6 ####################
###############################################

par(mfrow=c(1,2))
#graph 1
major <- table(data3$major)
barplot(major,
        xlab = "전공",
        ylab = "횟수",
        main = "전공빈도",
        col = "royalblue",
        horiz = F,
        cex.main = 1.2,
        cex.axis = 0.8,
        cex.names = 1.1
)

#graph2
cross_table1 <- table(data3$sex, data3$major)
barplot(cross_table1,
        col = c("royalblue", "skyblue"),
        main = "성별과 전공 누적",
        xlab = "전공",
        ylab = "빈도",
        cex.main = 1.2,
        cex.axis = 0.8,
        cex.names = 1.1
)
legend("topright",              
       legend = c("남", "여"),  
       fill = c("royalblue", "skyblue"))

dev.off()

#graph 3
data3$income2 <- cut(data3$income,
                     breaks = c(-Inf, 100, 200, 300, 500, Inf),
                     labels = c("100이하", "200이하", "300이하", "400이하", "500이상"))

income.table <- table(data3$income2)
income.graph <- barplot(income.table,
        xlab = "소득",
        ylab = "회수",
        main = "소득구간별 빈도",
        col = "red",
        horiz = F,
        cex.main = 1.4,
        cex.axis = 0.8,
        cex.names = 0.9,
        ylim = c(0,6000) 
)
text(x = income.graph,
     y = income.table, 
     labels = income.table, 
     pos = 3,        # 막대 위쪽에 표시
     cex = 0.8,      # 글씨 크기
     col = "black")  # 글씨 색

#graph4
pc1<- table(data3$sex)
pie(pc1,
    main = "성별",
    col = c("royalblue", "darkgrey"),
    labels = c("남성", "여성"),
    border = "red",
    cex.main = 1.4)

#graph 1
boxplot(data3$income, data = data3,
        main = "월급 상자그림",
        xlab = "",
        ylab = "incomes",
        col = c("lightgreen"),
        outline = TRUE,
        horizontal = TRUE)

#graph 2
boxplot(data3$income ~ sex, data = data3,
        main = "incomes by sex",
        xlab = "sex",
        ylab = "incomes",
        col = c("skyblue", "pink"),
        outline = FALSE)

data4 <- subset(data1, select = c("g191a125", "g191i033", "g191sex") )
colnames(data4)[1:3] <- c("income", "eng_abil", "sex")
plot(data4$eng_abil, data4$income,
     main = "소득과 영어능력간 산점도",
     pch = 4,
     xlab = "영어능력",
     ylab = "소득",
     col = ifelse(data4$sex == "1", "royalblue", "deeppink"), 
     ylim = c(0,1000),
     cex.lab = 1.2)
legend("topright",                       # 범례 위치
       legend = c("남자", "여자"),       # 라벨
       col = c("royalblue", "deeppink"), # 색상
       pch = 4,                          # 점 모양
       bty = "n")    
m1 <- mean(data4$income, na.rm = T)
m2 <- mean(data4$eng_abil, na.rm = T)
abline(v=m2, col="red", lty="dashed", lwd=1)
abline(h=m1, col="green", lty="solid", lwd=2)

data3 <- data3[complete.cases(data3), ]

library(ggplot2)

ggplot(data = data3,
       aes(x = major, fill = sex)) +
  geom_bar(position = "dodge") +
  labs(
    title = "성별과 전공 분포",
    x = "전공",
    y = "빈도"
  ) +
  scale_fill_manual(values = c("royalblue", "skyblue"),
                    name = "성별",
                    labels = c("남", "여")) +
  theme(
    plot.title = element_text(size = 14, face = "bold"),
    axis.title = element_text(size = 13),
    axis.text = element_text(size = 12)
  ) 


library(ggplot2)

df <- as.data.frame(table(data3$sex))   # 빈도 계산
colnames(df) <- c("sex", "n")          # 열 이름 변경
df$prop <- df$n / sum(df$n)            # 비율 계산
df$perc <- paste0(round(df$prop * 100, 1), "%")  # %결합

ggplot(df, aes(x = "", y = prop, fill = sex)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  geom_text(aes(label = perc),
            position = position_stack(vjust = 0.5)) +
  labs(title = "성별 비율") +
  theme_void() +
  theme(plot.title = element_text(
    size = 15, 
    face = "bold",
    hjust = 0.5))

library(ggplot2)
ggplot(data = data3, aes(x= major, y=income))+
  geom_boxplot(
    outlier.color = "royalblue",
    outlier.shape = 4,
    outlier.size = 2,
    outlier.alpha = 0.6
  ) +
  labs(title = "전공별 월소득",
       x = "전공계열",
       y = "월소득") +
  theme(
    plot.title = element_text(size = 14, 
                              face = "bold",
                              hjust = 0.5),
    axis.title = element_text(family = "serif", 
                              size = 14,
                              face = "bold"),
    axis.text = element_text(size = 13)
  ) 

data4$sex <- factor(data4$sex, 
                    levels = c("1", "2"), 
                    labels = c("Male", "Female"))
summary(data4)
data4 <- data4[complete.cases(data4), ]

library(ggplot2)
ggplot(data = data4, 
       aes(x=eng_abil, y=income,  shape = sex, color = sex))+
  geom_point(size=1.5)+
  labs(title = "Income vs. English Ability",
       x="English Score(TOEIC)",
       y="Salary per Month") +
  scale_y_continuous(limits = c(0, 1000))+
  theme(
    plot.title = element_text(
      family = "serif", 
      face = "bold", 
      size = 14,
      color = "darkred",
      hjust=0.5),
    legend.title = element_text(size = 14),
    legend.text = element_text(size = 12)
  )


###############################################
################ Chapter 7 ####################
###############################################

#Poisson Distribution#
set.seed(123)
S = rpois(100, 5) #n=100, 모수평균=5
hist(S, breaks=24, main = "Poisson Distribution", col = "pink", border = "blue")

#CLM of Poisson Distribution
means =numeric(0)         
for (i in 1:1000) {        
  S = rpois(100, 5)            
  means[i]= (mean(S)) 
}
hist(means, breaks=seq(4, 6, 0.1), main = "Result of CLT", col = "pink", border = "blue")

mean(means)

#Binomial Distribution#
set.seed(12345)
f=10; p=.5; # mean = 10*0.25#
S= rbinom(100, f,p)
hist(S, breaks=24, main = "Binomial Distribution", col = "pink", border = "blue")

#CLM of Binomial Distribution
means2 =numeric(0)        #계산결과 저장할 빈 벡터 생성
for (i in 1:1000) {       #for 반복문
  S = rbinom(100,f,p)     #100개의 이항분포 표본 한 번 생성       
  means2[i]= (mean(S))    #표본 S의 평균을 i번째 위치에 저장
}
hist(means2, breaks=seq(4, 6, 0.1), main = "Result2 of CLT", col = "pink", border = "blue")

mean(means2)
sd(means2)

#Uniform Distribution#
set.seed(12345)
S = runif(100, 1, 5)
hist(S, breaks=24, main = "Uniform Distribution", col = "pink", border = "blue")
#Central Limit Theorem
means3 =numeric(0)          
for (i in 1:1000) {           
  S = runif(100,1,5)          
  means3[i]= (mean(S)) #표본 S의 평균을 i번째 위치에 저장
}
hist(means3, breaks=seq(2.5, 3.5, 0.01), main = "Result3 of CLT", col = "pink", border = "blue")
mean(means3)
sd(means3)

#Normal Distribution#
set.seed(12345)
S = rnorm(1000, 0, 1)
hist(S, breaks=24, main = "Normal Distribution", col = "pink", border = "blue")

#CLM of Normal Distribution#
means4 =numeric(0)          
for (i in 1:1000) {           
  S = rnorm(100,0,1)          
  means4[i]= (mean(S))
}
hist(means4, breaks=seq(-1, 1, 0.05), main = "Result4 of CLT", col = "pink", border = "blue")

mean(means4)
sd(means4)

#Standardization
set.seed(12345)
korean = round(rnorm(460000, 60, 30), 0)
math = round(rnorm(460000, 80, 10), 0)

mean(korean)
sd(korean)

mean(math)
sd(math)

stand_korean <- (korean-59.99695)/1.503224+100
mean(stand_korean)
sd(stand_korean)

stand_math <- (math-80.00857)/0.5004385+100
mean(stand_math)
sd(stand_math)

round(((70-59.99695)/1.503224+100),0)

round(((80-80.00857)/0.5004385+100),0)

#Practice of Standardization
mean(data3$income, na.rm = T)
sd(data3$income, na.rm = T)

data3$stad_income <- (data3$income-205.352)/77.28852
mean(data3$stad_income, na.rm = T)
sd(data3$stad_income, na.rm = T)

#t distribution simulation
set.seed(12345)
df <- 100
n <- 10000

simulated_t_values <- rt(n, df)
hist(simulated_t_values, breaks = 30, col = "skyblue", main = "",
     xlab = "t-values", border = "white")

#find a critical point
qt(p=0.025, df = 30, lower.tail = T)
qt(p=0.025, df = 30, lower.tail = F)

qt(p=0.025, df = 1000, lower.tail = T)
qt(p=0.025, df = 1000, lower.tail = F)

#calculation p-value
pt(q=2.5,df=30, lower.tail=T)
pt(q=-2.5, df=30, lower.tail=T)

p_value <- (pt(q=-2.5,df=30, lower.tail=T) + pt(q=2.5,df=30, lower.tail=F))
print(p_value)

#Calculating confidence interval
sample1 <- rnorm(1000,10,20) 
print(mean(sample1))
print(sd(sample1))

sample1.n <- length(sample1)
sample1.mean <- mean(sample1)
sample1.sd <- sd(sample1)
sample1.se <- sample1.sd/sqrt(sample1.n)
print(sample1.se)

degrees.freedom = sample1.n - 1
t.score1 <- qt(p=0.025, df=degrees.freedom,lower.tail=F) #upper bound
t.score2 <- qt(p=0.025, df=degrees.freedom,lower.tail=T) #lower bound

lower.bound <- sample1.mean +t.score2*sample1.se
upper.bound <- sample1.mean +t.score1*sample1.se
print(c(lower.bound,upper.bound))


###############################################
################ Chapter 8 ####################
###############################################

aggregate1 <- aggregate(income ~ sex, data = data3, 
                        FUN = function(x) c(mean = mean(x), sd = sd(x)))
print(aggregate1)

boxplot(data3$income ~ sex, data = data3,
        main = "incomes by sex",
        xlab = "sex",
        ylab = "incomes",
        col = c("skyblue", "pink", "lightgreen"),
        outline = FALSE)

t.test1 <- t.test(income ~ sex, data = data3, var.equal = TRUE)
print(t.test1)

#Basic Statistics
n1 <- sum(!is.na(data3$income[data3$sex == "Male"]))  # 남성 결측치 제외 표본수
n2 <- sum(!is.na(data3$income[data3$sex == "Female"])) #여성 결측치 제외 표본수
mean1 <- mean(data3$income[data3$sex == "Male"], na.rm = TRUE)
mean2 <- mean(data3$income[data3$sex == "Female"], na.rm = TRUE) 
var1 <- var(data3$income[data3$sex == "Male"], na.rm = TRUE)
var2 <- var(data3$income[data3$sex == "Female"], na.rm = TRUE)  

#DF
df <- n1+n2-2
print(df)

#t-value
pooled_var <- ((n1 - 1) * var1 + (n2 - 1) * var2) / (n1 + n2 - 2)
se <- sqrt(pooled_var * (1 / n1 + 1 / n2))
t_value <- (mean1 - mean2) / se
print(t_value)

#p-value
p_value <- (pt(q=-22.93681,df=11751, lower.tail = T) + pt(q=22.93681,df=11751, lower.tail = F))
print(p_value)

#confidence interval
t_critical <- qt(0.025, df, lower.tail = F)  # 95% 신뢰수준에서의 t-분포 임계값
lower.bound <- (mean1 - mean2) - t_critical * se
upper.bound <- (mean1 - mean2) + t_critical * se
print(c(lower.bound, upper.bound))

#Levene test
library(car)
leveneTest(income ~ sex, data = data3)

t.test2 <- t.test(income ~ sex, data = data3, var.equal = FALSE)
print(t.test2)

aggregate2 <- aggregate(income ~ major, data = data3, 
                        FUN = function(x) c(mean = mean(x), sd = sd(x)))
print(aggregate2)

boxplot(income ~ major, data = data3,
        main = "incomes by major",
        xlab = "Major",
        ylab = "Incomes",
        col = c("skyblue", "pink", "lightgreen"),
        outline = FALSE)

set.seed(123)
n <- 1000 #각 집단의 표본 수
mean_income <- 200 #모수 평균 소득
sd_income <- 77 #모수 표준편차

#4개 하위 범주 명목변수 생성
group1 <- rnorm(n, mean = mean_income, sd = sd_income)
group2 <- rnorm(n, mean = mean_income, sd = sd_income)
group3 <- rnorm(n, mean = mean_income, sd = sd_income)
group4 <- rnorm(n, mean = mean_income, sd = sd_income)

#데이터 프레임 생성
data <- data.frame(Income = c(group1, group2, group3, group4), Group = factor(rep(c("Group1", "Group2", "Group3", "Group4"), each = n)))

#집단별 요약 통계 확인
summary_stats <- aggregate(Income ~ Group, data = data, function(x) c(mean = mean(x), sd = sd(x)))

print(summary_stats)

#분산 동질성 검정 (Levene's test)
if (!require("car")) install.packages("car")
library(car)
leveneTest(Income ~ Group, data = data)

#데이터 시각화: 집단별 분포 확인(박스플롯)
boxplot(Income ~ Group, data = data,
        main = "Incomes by Group",
        xlab = "Group",
        ylab = "Incomes",
        col = c("skyblue", "pink", "lightgreen"),
        outline = FALSE)

#TSS= SSB+SSW Proof
group1 <- c(60, 67, 42, 67, 56, 62, 64, 59, 72, 71)
group2 <- c(50, 52, 43, 67, 67, 59, 67, 64, 63, 65)
group3 <- c(48, 49, 50, 55, 56, 61, 61, 60, 59, 64)
group4 <- c(47, 67, 54, 67, 68, 65, 65, 56, 60, 65)

data_anv <- data.frame(
  value = c(group1, group2, group3, group4),
  group = factor(rep(1:4, each = 10))
)

mean_grand <- mean(data_anv$value)
print(mean_grand)

mean_group <- aggregate(value ~ group, data = data_anv, FUN = mean)
print(mean_group)

#TSS
total_var <- sum((data_anv$value - mean_grand)^2)
print(total_var)

#SSB
mean_groups <- tapply(data_anv$value, data_anv$group, mean)
group_n <- table(data_anv$group)
ssb <- sum(group_n*(mean_groups - mean_grand)^2)
print(ssb)

#SSW
ssw <- sum(tapply(data_anv$value, data_anv$group, function(x) sum((x - mean(x))^2)))
print(ssw)

#TTS = SSB+SSW
print(ssw+ssb)

anova_result <- aov(value ~ group, data =data_anv)
summary(anova_result)

p_value <- pf(1.144, 3, 36, lower.tail = FALSE)
print(p_value)

TukeyHSD(anova_result)
plot(TukeyHSD(anova_result))

aggregate2 <- aggregate(income ~ full_time, data = data3, 
                        FUN = function(x) c(mean = mean(x), sd = sd(x)))
print(aggregate2)


boxplot(data3$income ~ full_time, data = data3,
        main = "incomes by employment Status",
        xlab = "employment Status",
        ylab = "incomes",
        col = c("skyblue", "pink", "lightgreen"),
        outline = FALSE)

t.test2 <- t.test(income ~ full_time, data = data3, var.equal = TRUE)
print(t.test2)

library(car)
leveneTest(income ~ full_time, data = data3)

anova_result2 <- aov(income ~ full_time, data =data3)
summary(anova_result2)

sqrt(2807)

anova_result3 <- aov(income ~ major, data = data3)
summary(anova_result3)

library(car)
TukeyHSD(anova_result3)
plot(TukeyHSD(anova_result3))


###############################################
################ Chapter 9 ####################
###############################################

X <- c(2, 4, 5, 6, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 24, 25, 26)
Y <- c(3, 5, 7, 9, 10, 11, 13, 14, 16, 18, 20, 21, 23, 24, 27, 28, 30, 31, 33, 34)

covariance <- cov(X, Y)
print(covariance)

correlation <- cor(X, Y)
print(correlation)

sdX <- sd(X)
sdY <- sd(Y)
corr <- covariance/(sdX*sdY)
print(corr)

#상관계수 통계적 검정
correlation2 <- cor.test(X, Y, method = "pearson")
print(correlation2)

# t-통계량 계산
t_value <- (correlation * sqrt(20 - 2)) / sqrt(1 - correlation^2)
print(t_value)

# p-value (양측검정)
p_value <- (pt(q=-t_value,df=18, lower.tail = T) + pt(q=t_value,df=18, lower.tail = F))
print(p_value)

#데이터 전처리
data4 <- subset(data1, select = c("g191a010","g191a125", "g191i033") )
colnames(data4)[1:3] <- c("org_size", "income", "eng_abil")
data4 <- data4[complete.cases(data4), ]


plot(data4$eng_abil, data4$income, 
          pch = 16, 
          main = "Correlation", 
          xlim = c(0, 1000),
          ylim = c(0, 1000),
          xlab = "영어능력", 
          ylab = "월소득",
          cex.lab = 1.2)
     
correlation2 <- cor.test(data4$income, data4$eng_abil)
print(correlation2)

#상관관계 분석
correlation3 <- cor(data4, method = "pearson")
print(correlation3)

#편상관관계 분석
#install.packages("ppcor") 
library(ppcor)      
partial_cor1 <- pcor.test(data4$income, data4$eng_abil, data4$org_size)
print(partial_cor1)

#시뮬레이션 데이터생성
set.seed(123)
X <- rnorm(30, mean = 50, sd = 10)
Y <- 2 * X + 5 + rnorm(30, mean = 0, sd = 5)
reg_data <- data.frame(X = X, Y = Y)

#회귀분석
reg_model1 <- lm(Y ~ X, data = reg_data)
summary(reg_model1)

#회귀모형 Y 예측값
reg_data$predicted_Y <- predict(reg_model1)
cor2 <- cor(reg_data$Y, reg_data$predicted_Y)
print(cor2)

#회귀분석 실습
str(data4)
reg_model2 <- lm(income ~ org_size + eng_abil, data = data4)
summary(reg_model2)

summary(data4)


###############################################
############### Chapter 10 ####################
###############################################

install.packages("rpart")
install.packages("rpart.plot")
library(rpart)
library(rpart.plot)

#Setting Datset
data3$employed <- ifelse(data3$income >= 200, 1,0)
View(data3)

data3$employed <- factor(data3$employed, 
                         levels = c("0", "1"), 
                         labels = c("not_employed", "employed"))

dc.data <- data3[complete.cases(data3), ]
str(dc.data)


#Decision Tree

employed.tree <- rpart(
  employed ~ sex + major,
  data = dc.data,
  method = "class",
)

prp(employed.tree, 
    type = 2, 
    extra = 104,
    fallen.leaves = T,
    box.palette = "Blues",
    roundint = FALSE)

#Random Forest
#install.packages("randomForest")

library(randomForest)
set.seed(12345)
rf_model1 <- randomForest(fulltime_job ~ college_types + degree_types 
                          + sex + major + inseoul, 
                          data = dc.data,
                          ntree = 500, mtry = 3, importance = TRUE)
print(rf_model1)
importance(rf_model1)
varImpPlot(rf_model1)

#Data Setting
str(iris)
iris.km <- iris[1:4]
#Kmeans analysis
iris.kms <- kmeans(iris.km, centers = 3, nstart = 25)
#visualization
install.packages("factoextra")
library(factoextra)
fviz_cluster(iris.kms, data = iris.km)
#accuracy 
actual_species <- iris$Species
predicted_clusters <- iris.kms$cluster
table(predicted_clusters, iris$Species)

#Data Setting
nn.data1 <- rf.data  
nn.data1$fulltime_job <- as.numeric(rf.data$fulltime_job)
nn.data1$college_types <- as.numeric(rf.data$college_types)
nn.data1$degree <- as.numeric(rf.data$degree)
nn.data1$sex <- as.numeric(rf.data$sex)
nn.data1$major <- as.numeric(rf.data$major)
nn.data1$inseoul <- as.numeric(rf.data$inseoul)

#Neural Network
#install.packages("neuralnet")
library(neuralnet)
?neuralnet
nn.model1 <- neuralnet(fulltime_job ~ college_types + degree 
                       + sex + major + inseoul, data = nn.data1,
                       hidden = c(3,3),
                       learningrate = 0.01,
                       act.fct = "tanh",
                       algorithm = "rprop+",
                       linear.output = F)
nn.model1
plot(nn.model1)


###############################################
################## 부록 ########################
###############################################

#tidyverse 패키지 설치 및 로드
install.packages("tidyverse")
library(tidyverse)

#결측치 확인 및 제거
colSums(is.na(mydata))
mydata5 <- mydata %>% na.omit()

#PID와 ID 변수를 제외하고 나머지 데이터 선택
mydata3 <- mydata %>% select(-PID, -ID)

#'par'로 시작하는 변수 선택하고, par_age_1_w1이 30 이상인 행만 필터링
mydata2 <- mydata %>% select(starts_with("par")) %>% filter(par_age_1_w1 >= 30)

#S_GENDER_w1이라는 변수명을 S_GENDER로 변경
mydata2 <- mydata %>% rename(S_GENDER = S_GENDER_w1)

#표준화된 변수 생성
mydata5 <- mydata %>% na.omit() %>% mutate(sage1 = (par_age_1_w1 - mean(par_age_1_w1)) / sd(par_age_1_w1), sage2 = (par_age_2_w1 - mean(par_age_2_w1)) / sd(par_age_2_w1))

#변수 재코딩 및 값의 빈도 확인
mydata5 %>% count(par_nat_1_w1)

#조건에 따라 변수 값 변경(재코딩)
mydata5 %>% mutate(par_nat_1_w1 = ifelse(par_nat_1_w1 ==1, 0, par_nat_1_w1)) %>% count(par_nat_1_w1)

#값이 특정 조건 이상일 때 재코딩
mydata6 <- mydata %>% mutate(par_nat_1_w1 = ifelse(par_nat_1_w1 >= 4, 1, 0)) %>% count(par_nat_1_w1)

mydata7 <- mydata %>% mutate(S_GENDER = as.factor(S_GENDER), S_AREA_w1 = as.factor(S_AREA_w1))

m.data1 <- data1 %>% full_join(data2, by=join_by("NO"))

m.data2 <- data1 %>% inner_join(data2, by=join_by("NO"))

#Data Setting
data5 <- subset(data1, select = c("g191found","g191course", "g191school", "g191sex", 
                                  "g191majorcat", "g191a059", "g191province") )

colnames(data5)[1] <- "college_types"
colnames(data5)[2] <- "degree_types"
colnames(data5)[3] <- "univ"
colnames(data5)[4] <- "sex"
colnames(data5)[5] <- "major"
colnames(data5)[6] <- "fulltime_job"
colnames(data5)[7] <- "inseoul"


data5$college_types <- ifelse(data5$college_types == 3, 2,
                             ifelse(data5$college_types == 6, 3, 1))
data5$college_types <- factor(data5$college_types, 
                             levels = c(1, 2, 3), 
                             labels = c("국립", "사립", "기타"))
data5$degree_types <- ifelse(data5$degree_types == 3, 1, 2)
data5$degree_types <- factor(data5$degree_types, levels = c(1,2), labels = c("일반","위탁"))
data5$univ <- factor(data5$degree, 
                     levels = c(1, 2, 3), 
                     labels = c("전문대", "대학", "교육대"))
data5$sex <- factor(data5$sex, 
                    levels = c(1, 2), 
                    labels = c("Male", "Female"))
data5$major <- factor(data5$major,
                      levels = c("1", "2", "3", "4", "5", "6", "7"),
                      labels = c("인문", "사회", "교육", "공학", "자연", "의학", "예체"))

data5$fulltime_job <- ifelse(data5$fulltime_job < 0, NA, data5$fulltime_job)
data5$fulltime_job <- factor(data5$fulltime_job,
                             levels = c("1", "2"),
                             labels = c("Yes", "No"))

data5$inseoul <- ifelse(data5$inseoul <= 2, 1, 2)
data5$inseoul <- factor(data5$inseoul, 
                        levels = c(1, 2), 
                        labels = c("서울경기", "그외"))

rf.data <- data5[complete.cases(data5), ]