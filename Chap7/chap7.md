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
} #모수가 5인 포아송 본포로부터 100개의 표본을 추출하여 평균값을 계산하는 것을 1000회 반복실행하여 means 값으로 저정한다는 의미
hist(means, breaks=seq(4, 6, 0.1), main = "Result of CLT", col = "pink", border = "blue") #1000개 표본평균들의 분포를 확인함
mean(means) #평균값을 확인하면 모수와 거의 일치함을 확인할 수 있다
``` 
  



 
