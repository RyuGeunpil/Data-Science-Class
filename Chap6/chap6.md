<h2 style="text-align: center;">제6장 데이터의 시각화 </h2>

### 1.데이터의 시각화란?
- **데이터의 시각화:** 데이터의 정보를 보다 효과적으로 전달하기 위해서 그래프 등의 시각적 표현을 활용하는 것을 의미함

**데이터 형식과 시각화**  

| 데이터 형식                     | 예시           | 시각화 방법 예시                                      |
|----------------------------------|----------------|--------------------------------------------------------|
| **1변수(범주형)**               | 성별/종교      | 막대그래프(Bar Chart), 원그래프(Pie Chart)            |
| **1변수(연속형)**             | 연봉/키        | 히스토그램(Histogram), 상자그림(Box Plot)             |
| **2변수(범주/연속)**          | 성별 & 성적    | 막대그래프(범주별), 상자그림(범주별)                  |
| **2변수(연속/연속)**          | 키 & 몸무게    | 산점도(dot plot)                                      |
| **3변수(연속/연속/연속)**     | 키 & 몸무게 & 성적 | 등치선도(contour plot)                           |

**데이터 시각화를 위한 plot() 함수**: 시각화를 위해서는 기본 패키지의 plot()함수를 활용하며, 이 함수는 좌표축(axis)은 X와 Y로 구성되며, 좌표축의 라벨(label), 제목(title), 범례(legend), 표현요소, 보조요소 등의 인자로 구성됨 

---

### 2.범주형 자료의 시각화
- **막대 그래프:**

```
data3$income2 <- cut(data3$income,
   breaks = c(-Inf, 100, 200, 300, 500, Inf),
   labels = c("100이하", "200이하", "300이하", "400이하", "500이상"))

income.table <- table(data3$income2)
income.graph <- barplot(income.table,
        xlab = "소득",
        ylab = "회수",
        main = "소득구간별 빈도",
        col = "red",
        horiz = F,
        cex.main = 1.4,
        cex.axis = 0.8,
        cex.names = 0.9,
        ylim = c(0,6000) 
)
text(x = income.graph,
     y = income.table, 
     labels = income.table, 
     pos = 3,        # 막대 위쪽에 표시
     cex = 0.8,      # 글씨 크기
     col = "black")  # 글씨 색

```
  
![막대 그래프 실습결과](/Chap6/Pics/chap6_1.jpg)

- **파이 차트:**

```
#graph 4
pc1<- table(data3$sex)
pie(pc1,
    main = "성별",
    col = c("royalblue", "darkgrey"),
    labels = c("남성", "여성"),
    border = "red",
    cex.main = 1.4)
```
![파이 차트 실습결과](/Chap6/Pics/chap6_2.jpg)
---

### 3.연속형 자료의 시각화
- **상자 그래프:**연속형 자료의 데이터의 중위값(median), 흩어짐, 이상치(outlier) 등을 시각적으로 한눈에 보여줌

```
boxplot(data3$income ~ sex, data = data3,
        main = "incomes by sex",
        xlab = "sex",
        ylab = "incomes",
        col = c("skyblue", "pink"),
        outline = FALSE)
```

![상자 그래프 실습결과](/Chap6/Pics/chap6_3.jpg)

- **산점도:** 산점도(scatter plot)란 두 개의 연속형 변수 X, Y에 대응하는 케이스를 점의 형태로 표시하는 그래프

```
data4 <- subset(data1, select = c("g191a125", "g191i033", "g191sex") )
colnames(data4)[1:3] <- c("income", "eng_abil", "sex")
plot(data4$eng_abil, data4$income,
     main = "소득과 영어능력간 산점도",
     pch = 4,
     xlab = "영어능력",
     ylab = "소득",
     col = ifelse(data4$sex == "1", "royalblue", "deeppink"), 
     ylim = c(0,1000),
     cex.lab = 1.2)
legend("topright",                       # 범례 위치
       legend = c("남자", "여자"),       # 범례 라벨
       col = c("royalblue", "deeppink"), # 색상
       pch = 4,                          # 점 모양
       bty = "n")    
m1 <- mean(data4$income, na.rm = T)
m2 <- mean(data4$eng_abil, na.rm = T)
abline(v=m2, col="red", lty="dashed", lwd=1)
abline(h=m1, col="green", lty="solid", lwd=2)
```

![산점도 실습결과](/Chap6/Pics/chap6_4.jpg)
---

### 4.시각화 고급(ggplot2)

- **그래픽 전문함수 ggplot2 패키지:** ggplot2 패키지는 보다 전문화된 데이터 시각화 도구임

**ggplot2 그래프 구성**

##### Data Layer(data): 시각화를 위해 활용될 데이터세트를 지정함
##### Aesthetics Layer(aes): 변수 지정과 시각화를 지정함
##### Geom Layer(geom): 그래프의 형태를 지정(예: geom_point, geom_bar, …)
##### 기타 layer:

- **막대 그래프:**
```
data3 <- data3[complete.cases(data3), ]
install.packages("ggplot2") #ggplot2 패키지설치
library(ggplot2) #패키지 탑재
ggplot(data = data3,
       aes(x = major, fill = sex)) +
  geom_bar(position = "dodge") +
  labs(
    title = "성별과 전공 분포",
    x = "전공",
    y = "빈도"
  ) +
  scale_fill_manual(values = c("royalblue", "skyblue"),
                    name = "성별",
                    labels = c("남", "여")) +
  theme(
    plot.title = element_text(size = 14, face = "bold"),
    axis.title = element_text(size = 13),
    axis.text = element_text(size = 12)
  )
```

![ggplot2 막대그래프 실습결과](/Chap6/Pics/chap6_5.jpg)

- **ggplot2 활용한 산점도:**
```
data4$sex <- factor(data4$sex, 
                    levels = c("1", "2"), 
                    labels = c("Male", "Female"))
summary(data4)
data4 <- data4[complete.cases(data4), ]

library(ggplot2)

library(ggplot2)
ggplot(data = data4, 
       aes(x=eng_abil, y=income,  shape = sex, color = sex))+
  geom_point(size=1.5)+
  labs(title = "Income vs. English Ability",
       x="English Score(TOEIC)",
       y="Salary per Month") +
  scale_y_continuous(limits = c(0, 1000))+
  theme(
    plot.title = element_text(
      family = "serif", 
      face = "bold", 
      size = 14,
      color = "darkred",
      hjust=0.5),
    legend.title = element_text(size = 14),
    legend.text = element_text(size = 12)
  )
```

![ggplot2 산점도 실습결과](/Chap6/Pics/chap6_9.jpg)

