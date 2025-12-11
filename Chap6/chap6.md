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

### 2.범주형 자료의 시각화
- **막대 그래표:**

![막대 그래프 실습결과](/Chap6/Pics/chap6_1.jpg)

(images/plot.png

```
par(mfrow=c(1,2)) #두개 그래프 통합

#graph 1
major <- table(data3$major)
barplot(major,
        xlab = "전공",
        ylab = "회수",
        main = "전공비율",
        col = "royalblue",
        horiz = F,
        cex.main = 1.2,
        cex.axis = 0.8,
        cex.names = 1.1
)

#graph 2
cross_table1 <- table(data3$sex, data3$major)
barplot(cross_table1,
        col = c("royalblue", "skyblue"),
        main = "성별과 전공 누적",
        xlab = "선택",
        ylab = "빈도",
        cex.main = 1.2,
        cex.axis = 0.8,
        cex.names = 1.1
)
legend("topright",              
       legend = c("남", "여"),  
       fill = c("royalblue", "skyblue"))

dev.off() # 그래프 통합 해지
```
  
