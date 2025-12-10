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
