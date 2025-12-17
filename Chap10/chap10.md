<h2 style="text-align: center;">제10장 데이터사이언스 발전과 미래 </h2>

### 1.의사결정나무(Decision-Tree)
- **의사결정나무란?:** 분류를 위한 특성을 제시하고 이를 바탕으로 분류하는 지도학습의 형태의 대표적 알고리즘

#### 엔트로피: 분류의 복잡성을 의미하며, 엔트로피를 낮추는 방식으로 분류됨

#### rpart()함수와 prp() 함수를 통한 의사결정나무 실습
```
install.packages("rpart") #패키지 설치
install.packages("rpart.plot") #패키지 설치
library(rpart)
library(rpart.plot)

#Setting Datset
data3$employed <- ifelse(data3$income >= 200, 1,0) #데이터탑재
data3$employed <- factor(data3$employed, 
                        levels = c("0", "1"), 
                        labels = c("not_employed", "employed")) #라벨 작업
dc.data <- data3[complete.cases(data3), ] #결측값 제거

#Decision Tree
employed.tree <- rpart(
  employed ~ sex + major,
  data = dc.data,
  method = "class"
) #rpart 모형 지정

prp(employed.tree, 
    type = 2, 
    extra = 104,
    fallen.leaves = T,
    box.palette = "Blues",
    roundint = FALSE) #prp 그림 구성 지정
```

### 2.상관분석(Correlational Analysis)
- **상관분석이란?:** 두 연속형 변수(예, 몸무게-키, 소득-행복도) 간의 선형적인 관계에서의 방향과 강도를 분석하는 통계 기법(공분산의 표준화 값)
