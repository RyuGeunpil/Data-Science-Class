<h2 style="text-align: center;">제7장 모수의 추정과 검정 </h2>

### 1.추론통계학의 이해
- **통계적 추론이란:** 표본(Sample)으로부터 얻은 정보를 바탕으로 모집단(Population)의 특성치인 모수(Parameter)를 추정하는 과정을 의미
---

### 2.중심극한정리 이해
- **중심극한 정리:** _모집단의 분포에 상관없이_ 충분히 큰 표본을 반복적으로 추출하면 표본평균의 분포가 정규분포를 따르고, 이들 평균들의 전체 평균은 모수평균(μ)과 같고, 모수의 표준편차(σ)는 평균들의 표준편차(s) 값에 √N을 곱한 값과 같다. 이러한 특성에 의하여 모수를 추정할 수 있게 된다.

- **모집단이 포아송 분포와 중심극한 정리 시뮬레이션:**
```
#Poisson Distribution#
set.seed(123) #임의의 난수 설정
S = rpois(100, 5) #n=100은 100개의 표본 추출, 포아송 분포의 모수를 5로 설정
hist(S, breaks=24, main = "Poisson Distribution", col = "pink", border = "blue")

#CLM of Poisson Distribution
means =numeric(0)         
for (i in 1:1000) {        
  S = rpois(100, 5)            
  means[i]= mean(S) 
} #위 분포로부터 100개의 표본을 추출하여 평균값을 계산하는 것을 1000회 반복실행하여 means 값으로 저정한다는 의미
hist(means, breaks=seq(4, 6, 0.1), main = "Result of CLT", col = "pink", border = "blue") #1000개 표본평균들의 분포를 확인함
mean(means) #1000개 표본평균들의 이론적 표준오차 값과 일치함을 확인할 수 있다
``` 
  
- **모집단이 이항분포와 중심극한 정리 시뮬레이션:**
```
#Binomial Distribution#
set.seed(12345)
f=10; p=.5; # f=10은 10번 실행, p=0.5는 성공할 확률, 따라서 이론적 평균값 mean = 5(10*0.5)가 됨
S= rbinom(100, f,p)
hist(S, breaks=24, main = "Binomial Distribution", col = "pink", border = "blue") #이항분포의 형태를 파악하여 정규분포가 아님을 확인함

#CLM of Binomial Distribution
means2 =numeric(0)          # a place to store the results
for (i in 1:1000) {           # the for loop
  S = rbinom(100,f,p)            # just 1 this time
  means2[i]= mean(S) # store the answer
} #위 분포로부터 100개 추출하여 이들의 평균값을 계산하는 1000회 반복실행 값을 means2에 저장  
hist(means2, breaks=seq(4, 6, 0.1), main = "Result2 of CLT", col = "pink", border = "blue") #정규분포임을 확인

mean(means2) #이론적 평균인 5와 일치함을 확인

sd(means2) #1000개 평균값들의 표준오차인 sqrt(F*p*(1-p))값과 일치함을 확인
```

- **모집단이 균등분포와 중심극한 정리 시뮬레이션:**
```
#Uniform Distribution#
set.seed(12345)
S = runif(100, 1, 5) #모집단이 최소값 1, 최대값 5 균등분포에서 표본 100개를 추출 
hist(S, breaks=24, main = "Uniform Distribution", col = "pink", border = "blue") #균등분포의 형태를 확인

#Central Limit Theorem
means3 =numeric(0)          
for (i in 1:1000) {           
  S = runif(100,1,5)          
  means3[i]= mean(S) # store the answer
} #위 모집단으로부터 100개의 표본을 추출한 후 이들의 평균값을 계산하는 1000회 반복하여 평균값들을 mean3에 저장함 
hist(means3, breaks=seq(2.5, 3.5, 0.01), main = "Result3 of CLT", col = "pink", border = "blue") #정규분포임을 확인할 수 있음

mean(means3) #균등분포의 이론적 평균값인 3(=(1+5)/2)임을 확인할 수 있음

sd(means3) # 1000개 평균들의 표준오차 값인 0.116((=1.155/10)과 거의 일치함을 확인할 수 있음
``` 

- **모집단이 정규분포인 중심극한 정리 시뮬레이션:**
```
#Normal Distribution#
set.seed(12345)
S = rnorm(1000, 0, 1) #모집단의 평균이 0, 표준편차가 1인 정규분포로부터 1000개의 표본을 추출함
hist(S, breaks=24, main = "Normal Distribution", col = "pink", border = "blue") #모집단과 같은 정규분포임을 확인

#CLM of Normal Distribution#
means4 =numeric(0)          
for (i in 1:1000) {           
  S = rnorm(100,0,1)          
  means4[i]= (mean(S))
} #위 모집단으로부터 추출된 100개의 표본을 추출한 다음에 이들의 평균값을 계산하는 1000회 수행하여 평균값들을 mean4에 저장
hist(means4, breaks=seq(-1, 1, 0.05), main = "Result4 of CLT", col = "pink", border = "blue") #정규분포임을 확인

mean(means4) #모집단의 평균과 일치함을 확인

sd(means4) #1000개 평균표본의 표준오차의 값과 일치
```
---

### 3.t-분포와 t-검정의 이해
- **데이터의 표준화:** 서로 다른 단위나 측정 범위를 가진 데이터를 공통의 평균과 표준편차를 기준으로 변환하여 비교 가능하게 만드는 과정

```
#평균이 0, 표준편차 1이 되도록 표준화
mean(data3$income, na.rm = T)
sd(data3$income, na.rm = T)

data3$stad_income <- 
(data3$income-205.352)/77.28852 #기존 데이터에 평균값을 빼준 후 표준편차로 나누어준다면 평균 0, 표준편차가 1이 됨

mean(data3$stad_income, na.rm = T)
sd(data3$stad_income, na.rm = T)
```

- **t-분포:** 평균이 0이고 표준편차가 1인 정규분포
```
#t distribution simulation
set.seed(12345)
df <- 100
n <- 10000

simulated_t_values <- rt(n, df)
hist(simulated_t_values, breaks = 30, col = "skyblue", main = "T-Distribution (df = 100)",
     xlab = "t-values", border = "white") #t-분포의 형태를 확인할 수 있음
```
##신뢰수준에 따른 임계치의 편화
```
qt(p=0.025, df = 30, lower.tail = T)
qt(p=0.025, df = 30, lower.tail = F)
qt(p=0.025, df = 1000, lower.tail = T)
qt(p=0.025, df = 1000, lower.tail = F)
```

##유의확률의 의미: 귀무가설이 맞을 확률
```
#calculating p-value
pt(q=2.5,df=30, lower.tail = T)

pt(q=-2.5,df=30, lower.tail = T)

p_value <- (pt(q=-2.5,df=30, lower.tail = T) + pt(q=2.5,df=30, lower.tail = F))
print(p_value)
```
