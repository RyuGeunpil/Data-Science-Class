<h2 style="text-align: center;">제8장 평균값의 차이검정 </h2>

### 1.독립표본 t-검정(Independent Two Sample t-test)
- **독립표본 t-검정이란:** 독립적인 두 개의 표본의 평균들이 일치하는가를 통해 1개 모집단으로부터 추출된 것인지를 추론하는 통계

#### 두개 집단(남녀) 간의 평균값 기초통계 분석
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


![독립표본 t-검정 결과](/Chap8/chap8_1.jpg)



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
### 2.일원배치 분산분석(One-Way ANOVA)
- **ANOVA란:** 2개 이상의 집단간의 분산 구조를 분석하여 집단간의 평균값 차이를 검증하늩 통계적 기법

#### 집단 간의 평균값 기초통계 분석
```
#집단간 평균값 기초통계 분석
#각 집단 데이터 입력
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
```

#### aov() 함수를 통한 ANOVA 분석과 f-검정 결과
```
anova_result <- aov(value ~ group, data =data_anv)
summary(anova_result)

p_value <- pf(1.144, 3, 36, lower.tail = FALSE)
print(p_value)
```

![ANOVA 결과](/Chap8/chap8_2.jpg)

#### ANOVA f-검정 계산 결차
```
#TSS(전체 통 변량)
total_var <- sum((data_anv$value - mean_grand)^2)
print(total_var)

#SSB(집단내 총변량)
mean_groups <- tapply(data_anv$value, data_anv$group, mean)
group_n <- table(data_anv$group)
ssb <- sum(group_n*(mean_groups - mean_grand)^2)
print(ssb)

#SSW(집단내 총변량)
ssw <- sum(tapply(data_anv$value, data_anv$group, function(x) sum((x - mean(x))^2)))
print(ssw)

#TTS = SSB+SSW
print(ssw+ssb)
```
#### ANOVA 사후검정
```
TukeyHSD(anova_result)
plot(TukeyHSD(anova_result))
```
![ANOVA 시흐검정](/Chap8/chap8_3.jpg)
