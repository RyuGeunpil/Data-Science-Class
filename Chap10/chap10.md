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

<img src="/Chap10/10_1.jpg" alt="의사결정나무 결과" width="50%">

---


### 2.랜덤포레스트(RandomForest)
- **랜텀포레스트?:** 의사결정나무의 단점을 보완하기 위해서 하위 표본을 중심으로 다수의 의사결정나무 결과를 종합하여 최종적으로 분류를 시도함

#### 앙상블 기법: 앙상블이란 여러 개의 모형 결과를 최종적으로 다시 평가하여 최적의 결과를 도출하는 방법

#### randomForest()함수를 통한 랱덤포레스트 실습

```
#Random Forest
#install.packages("randomForest") #랜덤포레스트 패키지 설치
library(randomForest) #랜덤포레스트 함수 탑재

set.seed(12345) #임의의 난수 설정으로 알고리즘 실시
rf_model1 <- randomForest(fulltime_job ~ collge_types + degree_types 
                          + univ + major + inseoul, 
                          data = dc.data,
                          ntree = 500, mtry = 3, importance = TRUE)
print(rf_model1)
importance(rf_model1) #importance 함수를 통해 중요도 파악
varImpPlot(rf_model1) #중요도 값을 확인
```

<img src="/Chap10/10_2.jpg" alt="랜덤포레스트 특징 중요도" width="50%">

---
