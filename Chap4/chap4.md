<h2 style="text-align: center;">제4장 자료의 전저 </h2>

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

**데이터 세트 변수명 및 개괄적 파악:**변수의 수와 입력 형태를 파악함
```
names(data1) #변수명을 보여줌

head(data1): 데이터 세트의 앞 6줄을 보여줌
tail(data1): 데이터 세트의 뒤 6줄을 보여줌

head(data1, 10): 데이터 세트의 앞 10줄로 변경하여 보여줌
tail(data1, 10): 데이터 세트의 뒤 10줄로 변경하여 보여줌
```

- **결측치(Missings) 확인과 처리 :** 결측치(Missing value)란 특정 변수에서 값이 존재하지 않는 경우를 의미함. 결측치 파악은 결과에서의 오류를 사전에 예방할 수 있음

**변수 별 결측치의 확인:**해당 변수의 결측치 수를 파악함
```
is.na(data1$g191age) #이 변수의 결측치가 있는지 논리값으로 변환하여 보여줌
sum(is.na(data1$g191age)) #TRUE수를 계산하여 보여줌

col_missings <- colSums(is.na(data1)) #데이터 세트 전체 변수별 결측치를 보여줌
print(col_missings)

row_missings <- rowSums(is.na(data1)) #데이터 세트의 케이스별 결측치의 수를 보여줌
print(row_missings)
```
