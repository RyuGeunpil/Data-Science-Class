<h2 style="text-align: center;">제3장 자료의 형식과 구조 </h2>

### 1.자료 형식의 이해

- **숫자형:** 정수와 싪수를 포함하는 자료
```
num_double <- 1.123
num_double

num_integer <- 10L #정수로 표현
num_integer
```
- **문자형:** 문자로 구성되는 자료로 따옴표("")로 설정함
```
str1 <- "Hello, R!"	
str1

str2 <- c("a", "b", "c")	
str2
```
 
- **논리형:** TRUE 혹은 FALSE 두 개의 값만을 갖는 자료
```
Log_data1 <- 1 == 2
Log_data1

a <- 10
b <- 20
Log_data2 <- a < b
Log_data2
```

- **범주형:** 문자형 자료를 구분하기 위해서 수를 부여한 형태(예: 종교, 성별)
```
new_gender_data <- c("남성", "여성", "기타", 
"여성", "기타")

new_gender_factor <- factor(new_gender_data,
levels = c("여성", "남성", "기타"))

new_gender_factor
```
---
### 2.자료 구조의 이해

#### 자료 형식의 유형 구분
- **같은 형식의 자료:** 같은 데이터 형식의 원소로 구성된 1차원 벡터(vector), 행과 열을 가지고 있는 행렬(matrix), 다차원의 배열(array)가 있음 <br>

**벡터(vector) 구조:** 데이터 원소 값들이 여러 개 모이면 벡터(Vector)가 되며, 벡터는 c() 함수를 사용하여 생성
 ```
num_vec <- c(1, 2, 3, 4, 5) # 숫자형 벡터
num_vec
char_vec <- c("apple", "banana",
 "cherry") #문자형 벡터
char_vec
log_vec <- c(TRUE, FALSE, TRUE) # 논리형 벡터
log_vec
```
**행렬(matrix) 구조:** 자료들이 행과 열로 구성되고 matrix() 함수를 사용하여 생성
```
# 2*2 행렬 구성
A1 <- matrix(1:4, nrow=2, ncol=2)
A1
A2 <- matrix(1:4, 2, 2)
A2
A3 <- matrix(1:4, 2, 2, byrow=TRUE)
A3
```

**배열(array) 구조:** 행렬이 다층(차원)을 이루고 있는 구조이며, array() 함수를 사용하여 생성
```
my_array <- array(data = 1:24, dim = c(3, 4, 2)) #3행, 4열, 2층으로 구성
my_array

my_array2 <- array(data = 1:20, dim = c(3, 4, 2)) #원소가 없을 경우
my_array2
```

- **다른 형식의 자료:** 다양한 데이터 형식이 존재하지만 행과 열로 구성된 데이터프레임(dataframe)과 다양한 차원으로 구성된 리스트(list) 구조가 있음 <br>

**데이터프레임(dataframe) 구조:** 다양한 형식을 갖고 있는 열 벡터들의 모임이며, dataframe() 함수를 사용하여 생성
```
df <- data.frame(name=c("kim", "lee", "park", "choi"), 
                 age=c(32,25,18,39),
                 height=c(170, 175, 168, 180),
                 weight=c(63, 66, 59, 70))
df
```
**리스트(list) 구조:** 모든 유형의 데이터 구조를 형식에 상관없이 하나의 객체로 결합할 수 있는 가장 자유로운 구조로 list() 함수를 활용하여 생성함
```
my_list1 <- list(c(1:5), 
                c(1:50), 
                c("red", "black", "white"))
my_list1
```
---

### 3.자료 구조와 형식의 확인 및 변경

- **데이터의 형식과 구조 확인:** class() 혹은 typeof() 함수를 통해 자료의 형식을, str() 함수를 통해 자료의 구조를 파악할 수 있음

**class() 함수와 typeof() 함수**
```
data_x <- c(1, 2, 3)
class(data_x)
typeof(data_x)
```

**str() 함수를 통한 자료 구조의 확인**
```
df <- data.frame(name=c("kim", "lee", "park", "choi"), 
                 age=c(32,25,18,39),
                 height=c(170, 175, 168, 180),
                 weight=c(63, 66, 59, 70))
str(df)
```

- **데이터의 형식과 구조의 변경:** as.** 함수를 통해 원하는 자료의 형식과 구조로 변경할 수 있음

**데이터 형식의 변경**

| 함수             | 목적               |
|:-----------------:|:-------------------:|
| as.numeric()     | 수로 변환하라      |
| as.integer()     | 정수로 변환하라    |
| as.character()   | 문자로 변환하라    |

```
as.numeric(c("-1", "1.345", "4.5", "gold"))
as.character(11:15)
as.numeric(FALSE)
```

**데이터 구조의 변경**

| 함수             | 목적                           |
|:-----------------:|:-------------------------------:|
| as.vector()      | 벡터 구조로 변환하라           |
| as.matrix()      | 행렬 구조로 변환하라           |
| as.array()       | 배열 구조로 변환하라           |
| as.data.frame()  | 데이터프레임 구조로 변환하라   |
| as.list()        | 리스트 구조로 변환하라         |

```
vec1 <- c(1, 2, 3, 4, 5)
str(vec1)
vec2 <- as.data.frame(vec1)
str(vce2)

vec3 <- c(1, 2, 3, 4, 5)
vec4 <- as.list(vec3)
str(vec4)
```
 
### 4.자료 인덱싱(Indexing)

- **인텍싱이란>:** 벡터, 행렬, 데이터프레임과 같은 자료 구조에서 특정 원소를 추출하거나 수정하기 위해 접근하는 방법을 의미함

**벡터 인덱싱:** 대괄호([])를 사용하여 데이터 원소에 접근
```
v_1<- c(1:10)
v_1

v_1[2] #2번째 원소 인덱싱
v_1[3:5] # 3~5 원소 인덱싱

v_1[-3] # 원소의 제거

v_1[1] <- "a" #원소의 변경
```

**행렬 인덱싱:** 대괄호([])를 사용하여 데이터 원소에 접근
```
m_1 <- matrix(c(1:9),3,3) #행렬 생성
m_1

m_1[3,2] #3행 2열 원소

m_1[2,] #2행과 전체 열

m_1[,3] #전체 행과 3열

m_1[1,c(1,2)] #1행과 1~2열

m_1[-1,] #1행 제거
```
