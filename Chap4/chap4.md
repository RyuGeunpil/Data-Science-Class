<h2 style="text-align: center;">제4장 자료의 전처리 </h2>

### 1.데이터 탑재 및 저장하기

- **데이터 세트 탑재:** 다양한 형식의 파일을 데이터프레임 형식으로 원자료를 읽는 과정
 
**데이터 세트 탑재 세팅:**  
```
getwd() #현재 작업창 폴더의 위치를 알려줌
setwd("C:/R Book") #작업창 취치를 지정함(슬래시/를 통해 위치 지정함)
getwd()
```

**탑재 함수**  

| 패키지     | 함수          | 목적                          |
|:----------:|:-------------:|:-----------------------------:|
| 기본 패키지 | read.csv()    | CSV 파일을 읽을 때 사용       |
| 기본 패키지 | read.table() | TXT 파일을 읽을 때 사용       |
| readxl     | read_excel()  | Excel 파일을 읽을 때 사용     |
| openxlsx  | read.xlsx()  | XLSX 파일을 읽을 때 사용      |
| haven  | read_sav()  | spss 파일을 읽을 때 사용      |
| haven  | read_sas()  | sas 파일을 읽을 때 사용      |
| haven  | read_dta()  | stata 파일을 읽을 때 사용      |

#### 기본 패키지 외 위 외부 패키지 설치하기 위해서는 install.packages()을 사용한다. 예를 들어, haven 패키지를 설치하기 위해서는 
```install.packages("haven")```을 입력한다.

**csv 형식 파일 탑재** 
```
data1 <- read.csv("dataset2.csv", 
header = T)
str(data1)
```

**excel 형식 파일 탑재** 
```
install.packages("readxl") #readxl 패키지 설치
library(readxl) #readxl() 함수 탑재
data2 <- read_excel("dataset1.xlsx")
str(data2)
```

- **데이터세트 저장 함수**  

| 패키지     | 함수          | 목적                          |
|:----------:|:-------------:|:-----------------------------:|
| 기본 패키지 | write.csv()    | CSV 파일 형식으로 저장       |
| 기본 패키지 | write.table() | TXT 파일 형식으로 저장       |
| writexl     | write_excel()  | Excel 파일 형식으로 저장     |
| openxlsx  | write.xlsx()  | XLSX 파일 형식으로 저장      |
| haven  | write_sav()  | spss 파일 형식으로 저장      |
| haven  | write_sas()  | sas 파일 형식으로 저장      |
| haven  | write_dta()  | stata 파일 형식으로 저장      |


```
write.csv(df_1, "example1.csv")
write.table(df_1, "example2.txt", 
sep = "\t")
getwd()
df_2 <- read.csv("example1.csv", header=T)
df_3 <- read.table("example2.txt", header=T)
```

### 2.데이터 세트 탐색 및 결측치 처리

- **데이터 세트 탐색:** 데이터 탐색(Exploratory Data Analysis, EDA)은 수집된 데이터를 본격적으로 분석하기 전에 자료의 전반적인 구조와 특성을 이해하는 과정을 의미

**데이터 세트 구조 파악:** 데이터 프레임의 변수, 케이스 수를 파악함
```
data1 <- read.csv("dataset2.csv", header = T) #데이터 탑재
str(data1)

class(data1$g191dpmt_n) #변수의 형식 파악
dim(data1) #데이터 프레임의 변수와 케이스 수를 파악
nrow(data1) #케이스 수 파악
ncol(data1) #변수의 수를 파악
length(data1) #케이스 수를 파악
```

**데이터 세트 변수명 및 개괄적 파악:** 변수의 수와 입력 형태를 파악함
```
names(data1) #변수명을 보여줌

head(data1): 데이터 세트의 앞 6줄을 보여줌
tail(data1): 데이터 세트의 뒤 6줄을 보여줌

head(data1, 10): 데이터 세트의 앞 10줄로 변경하여 보여줌
tail(data1, 10): 데이터 세트의 뒤 10줄로 변경하여 보여줌
```

- **결측치(Missings) 확인과 처리 :** 결측치(Missing value)란 특정 변수에서 값이 존재하지 않는 경우를 의미함. 결측치 파악은 결과에서의 오류를 사전에 예방할 수 있음

**변수 별 결측치의 확인:** 해당 변수의 결측치 수를 파악함
```
is.na(data1$g191age) #이 변수의 결측치가 있는지 논리값으로 변환하여 보여줌
sum(is.na(data1$g191age)) #TRUE수를 계산하여 보여줌

col_missings <- colSums(is.na(data1)) #데이터 세트 전체 변수별 결측치를 보여줌
print(col_missings)

row_missings <- rowSums(is.na(data1)) #데이터 세트의 케이스별 결측치의 수를 보여줌
print(row_missings)
```

**결측치 변환:** ifelse 조건문을 통해 해당 조건에 만족할 경우 결측치로 처리(예: 이상값 처리 경우)
```
summary(data1$g191age)
data1$g191age <- ifelse(data1$g191age < 23, NA, data1$g191age) #나이가 23 미만일 경우 결측치로 
sum(is.na(data1$g191age)) #결측치가 없어졌음을 확인할 수 있음
```

**결측치 제거:** complete.case() 함수를 통해 결측치를 전체적으로 제거할 수 있음
```
com.data1 <- data1[complete.cases(data1), ]
```

### 3.데이터 자르기와 합치기

- **데이터 자르기 :** 데이터 자르기(Data Subsetting, Slicing)란, 방대한 양의 데이터가 있을 때 특정 분석 목적에 맞는 부분만 선택하고, 불필요한 나머지 데이터를 제외하는 과정을 의미함

**변수기준 데이터 자르기:** 
```
data2 <- data1[, c(1:100)] #대괄호 인덱싱에서 배웠던 것처럼 전체 행을 포함하고, 1~100번째 열(변수)를 추출함
dim(data2)

data3 <- data1[, c("g191pid", "g191branch", "g191dpmt")] #전체 행을 포함하고, 3개 변수만을 지정하여 추출함
dim(data3)
```

**케이스 기준 필터링(filtering):** 특정 변수의 조건에 맞는 케이스 만을 추출할 경우 사용함
```
data4 <- data1[data1$g191age >= 24, ] #연령변수 24세 이상만 추출하여 data4로 저장
dim(data4)
```

**subset()함수 활용:** 데이터 자르기를 하는데 활용되는 함수
```
data5 <- subset(data1, subset= g191age >= 24,
 select = c(1:10) )
dim(data5)

rm(data2, data3, data4, data5) #데이터 세트를 제거함
```

### 4.데이터의 변형과 가공

- **변수명 변경(Variable Rename) :** 변수명을 보다 직관적으로 이해할 수 있도록 변수명을 수정함

**colnames()함수 활용:** 변수명 수정
```
data2 <- data1[, 1:15]
str(data2)

colnames(data2)[1] <- "id" #1열을 id 명으로 변경
str(data2)

colnames(data2)[2:5] <- c("branch", "found", "course", "daynight") #변수명을 차례대로 입력하여 변경
str(data2)
```

- **새로운 변수 생성(Generating a New Variabl) :** 새로운 변수를 선형변환을 통해 생성할 수 있음
```
data2$new_age <- data2$g191age*10 #기존 연령변수에 10을 곱한 후 새로운 변수인 new_age로 저정함

mean(data2$g191age, na.rm = T) #기존 변수의 평균값 계산
mean(data2$new_age, na.rm= T) #새로운 변수의 평균값 계신
```

- **변수 리코딩(Data Recoding) 생성 :** ifelse()함수를 활용해 기존 변수에 입력된 코딩을 변경함
 ```
table1 <- table(data2$g191age)
print(table1)
data2$recoding1 <-  ifelse(data2$g191age < 30, 1,
                    ifelse(data2$g191age < 40, 2,
                    ifelse(data2$g191age < 50, 3,
                    ifelse(data2$g191age < 60, 4, 5))))
table2 <- table(data2$recoding1)
print(table2)
```

- **범주형 변수 라벨링(Factor Leveling) :** 범주형 변수에 factor() 함수를 통해 하위 범주에 수를 입력하여 분석에 활용함
```
table3 <- table(data2$g191sex)
print(table3)

data2$g191sex <- factor(data2$g191sex, 
                        levels = c("1", "2"), 
                        labels = c("Male", "Female"))

table4 <- table(data2$g191sex)
print(table4)
```

 
