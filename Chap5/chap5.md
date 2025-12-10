<h2 style="text-align: center;">제5장 기초통계의 이해 </h2>

### 1.변수의 측정과 척도

---
### 2.자료의 중심경향성과 흩어짐 측정

- **자료의 중심경향성 측정:** 자료가 얼마나 중심에 모여 있는지를 보여주는 지표를 의미함
  
**평균:** mean() 함수를 통해 자료의 평균값을 구함, 극단값에 의하여 영향을 받는 단점이 존재함
```
a <- c(1,2,3,5,6,7,7,7,9,10,11,13,13,14,15)
b <- c(1,2,3,5,6,7,7,7,9,10,11,13,13,14,15, 100)

mean(a)
mean(b)
```

**중위값:** median() 함수를 통해 자료의 중위값을 구함, 극단값에 영향을 받지 않음
```
median(a)
median(b)
```

- **자료의 흩어짐의 측정:** 자료가 얼마나 흩어져 있는가를 측정함
**분산값:** var() 함수를 통해 자료의 흩어짐 측정
**표준편차:** 분산값에 sqrt()를 취한 값이며, sd() 함수를 통해 계산
**범윌값:** 최대값에서 최소값을 뺀 수치이며, range() 함수를 통해 계산
**범위값:** 1분위수와 3분위수 간의 차이를 의미하며, IQR() 함수를 통해 계산

```
var(a)
sd(a)
range(a)
IQR(a)
```
---
### 3.데이터의 분포

- **모집단의 분포와 표본의 분포:** 모집단의 분포를 알 수 없기 때문에 표본을 통해 모집단의 분포를 추정
- **연속형 vs 이산형 분포:** 자료의 형식에 의하여 분포가 달라짐
- **정규분포 추정:** 좌우대칭의 종 모양 곡선을 갖고, t-검정, z-검정에서 활용되는 분포가 바로 이 분포임
**왜도(Skewness):** 데이터의 평균값이 어느 정도 치우쳐 있는지를 측정함
**첨도(Kurtosis):** 데이터가 정규분포에 비하여 어느 정도 솟아 있는지를 측정함

```
hist(data2$g191age, breaks = 100, main = "연령 분포1", col = "pink", border = "blue") #연속형 변수인 age를 히스토그램으로 표본의 형태 파착
data2$age_under30 <- ifelse(data2$g191age > 30, NA, data2$g191age) #30대 이상을 결측치로 처리하여 age_under30으로 저장함
hist(data2$age_under30, breaks = 10, main = "연령 분포2", col = "pink", border = "blue") #break 인자를 조정하여 자료를 짤라 보여짐    

install.packages("moments") #기본 패키지에는 왜도와 첨도 구하는 함수가 없어서 외부 패키지 설치 후 아래 함수 입력하여 계산
library(moments) #moment 패키지를 탑재
skewness(data2$age_under30, na.rm = T) #왜도
kurtosis(data2$age_under30, na.rm = T) #첨도는 3을 기준으로 함
```
   
### 4.범주형 변수의 빈도와 비율 분포
- **단일 변수 빈도분석:** 1개 범주형 변수에 대한 빈도 분석을 실시
**빈도 도수표 만들기:** table() 함수를 통해 범주형 변수의 하위 범주에 대한 빈도를 계산함
**빈도 비율표 만들기:** prop.table() 함수를 통해 범주형 변수의 하위 범주에 대한 비율을 계산함
```
table1 <- table(data2$g191majorcat)
print(table1)

data2$g191majorcat <- factor(data2$g191majorcat,
  levels = c("1", "2", "3", "4", "5", "6", "7"),
labels = c("인문", "사회", "교육", "공학", "자연", "의학", "예체")) #범주형 변수에 factor 함수를 통해 하위범주 레이블 작성

x1 <- table(data2$g191majorcat) #빈도 도수표 
print(x1)
x2 <- round(prop.table(x1),2) #빈도의 비율 계산
print(x2)
```

- **2차원 빈도분석:** 2개 범주형 변수에 대한 빈도 분석을 실시
**교차표 만들기:** addmargin() 함수를 통해 2개 범주형 변수의 하위 범주에 대한 전체 빈도를 총합 계산함

```
crosstable1 <- table(data2$g191sex, data2$g191majorcat)
print(crosstable1)

sumtable1 <- addmargins(crosstable1)
print(sumtable1)
```

**교차 비율표 만들기:** prop.table 함수를 통해 2개 범주형 변수의 하위 범주에 대한 비율을 통합적으로 계산함 <br>
addmargin 함수를 통해 비율을 계사할 수 있음
```
prop.table(crosstable1)
percent <- round(prop.table(crosstable1)*100,2) #100 곱하여 %로 변환하였으며, round() 함수를 통해 소수점 2자리로 표현
print(percent)

addmargins(percent, margin = 1) #열기춘 합
addmargins(percent, margin = 2) #행기준 합
addmargins(percent, margin = c(1,2)) #행렬 모두 총합 계산
```
  
  
