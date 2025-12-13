<h2 style="text-align: center;">제8장 평균값의 차이검정 </h2>

### 1.독립표본 t-검정(Independent Two Sample t-test)
- **독립표본 t-검정이란:** 독립적인 두 개의 표본의 평균들이 일치하는가를 통해 1개 모집단으로부터 추출된 것인지를 추론하는 통계

#### 두개 집단(남녀) 간의 평균값을 비교 실습
```
#1개 변수내에 두 개의 범주(남/녀)간의 평균값이 일치하는가를 확인
aggregate1 <- aggregate(income ~ sex, data = data3, FUN = function(x) c(mean = mean(x), sd = sd(x)))
print(aggregate1)
boxplot(data3$income ~ data3$sex, data = data3,
        main = "incomes by sex",
        xlab = "sex",
        ylab = "incomes",
        col = c("skyblue", "pink", "lightgreen"),
        outline = FALSE)
```

#### ttest() 함수를 통한 결과 확인
```
t.test1 <- t.test(income ~ sex, data = data3, var.equal = TRUE)
print(t.test1)
```






#### ttest() 함수 결과값의 계산절차
```
#Basic Statistics
n1 <- sum(!is.na(data3$income[data3$sex == "Male"]))  # 남성 결측치 제외 표본수: n1=5768, 
n2 <- sum(!is.na(data3$income[data3$sex == "Female"])) #여성 결측치 제외 표본수: n2=5985
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
```


---

### 2.중심극한정리 이해
- **중심극한 정리:** _모집단의 분포에 상관없이_ 충분히 큰 표본을 반복적으로 추출하면 표본평균의 분포가 정규분포를 따르고, 이들 평균들의 전체 평균은 모수평균(μ)과 같고, 모수의 표준편차(σ)는 평균들의 표준편차(s) 값에 √N을 곱한 값과 같다. 이러한 특성에 의하여 모수를 추정할 수 있게 된다.

- **모집단이 포아송 분포와 중심극한 정리 시뮬레이션:**
```
