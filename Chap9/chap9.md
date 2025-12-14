<h2 style="text-align: center;">제9장 연속형 변수간의 관계 검정 </h2>

### 1.공분산(Covarince)
- **공분산이란?:** 공분산이란 두 개의 연속형 변수가 함께 변동하는 정도, 즉 공유하는 분산의 크기를 의미

<img src="/Chap9/9_1.jpg" alt="공분산 의미" width="50%">
  

- **공분산계산**
#### 공분산 계산 식

<img src="/Chap9/9_2.jpg" alt="공분산 계산" width="50%">

#### cov() 함수를 통한 공분산 분석 실습
```
X <- c(2, 4, 5, 6, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 24, 25, 26)
Y <- c(3, 5, 7, 9, 10, 11, 13, 14, 16, 18, 20, 21, 23, 24, 27, 28, 30, 31, 33, 34)

covariance <- cov(X, Y)
print(covariance) #공분산 값 확인, 위 값과 일치함을 확인할 수 있음
```

### 2.상관분석(Correlational Analysis)
- **상관분석이란?:** 두 연속형 변수(예, 몸무게-키, 소득-행복도) 간의 선형적인 관계에서의 방향과 강도를 분석하는 통계 기법(공분산의 표준화 값)

#### 상관계수 계산: cor() 함수 사용
<img src="/Chap9/9_3.jpg" alt="상관계수" width="50%">

```
#위 데이터 사용
correlation <- cor(X, Y)
print(correlation)

sdX <- sd(X)
sdY <- sd(Y)
corr <- covariance/(sdX*sdY)
print(corr)
```

#### 상관계수의 t-검정: cor.test()함수
```
# 상관계수 통계적 검정
correlation2 <- cor.test(X, Y, method = "pearson")
print(correlation2)

# t-값 계산
t_value <- (correlation * sqrt(20 - 2)) / 
sqrt(1 - correlation^2)
print(t_value)


# p-value (양측검정)
p_value <- (pt(q=-t_value,df=18, lower.tail = T) + pt(q=t_value,df=18, lower.tail = F))
print(p_value)
```
---

### 3.선형 회귀분석(Linear Regression)
- **선형 회귀분석이란?:** X 변수들과 Y의 관계를 선형으로 가정하고, X가 Y에 미치는 영향 정도를 파악하는 분석

#### 회귀 계수와 최소자승법(OLS)


<img src="/Chap9/9_3.jpg" alt="회귀계수" width="50%">
