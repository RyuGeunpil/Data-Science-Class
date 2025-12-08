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

### 2.자료 구조의 이해

#### 자료 형식의 유형 구분
- **같은 형식의 자료:** 같은 데이터 형식의 원소로 구성된 1차원 벡터(vector), 행과 열을 가지고 있는 행렬(matrix), 다차원의 배열(array)가 있음
- **다른 형식의 자료:** 다양한 데이터 형식이 존재하지만 행과 열로 구성된 데이터프레임(dataframe)과 다양한 차원으로 구성된 리스트(list) 구조가 있음

- **벡터(vector) 구조:** 데이터 원소 값들이 여러 개 모이면 벡터(Vector)가 되며, 벡터는 주로 c() 함수를 사용하여 생성
 ```
num_vec <- c(1, 2, 3, 4, 5) # 숫자형 벡터
num_vec
char_vec <- c("apple", "banana",
 "cherry") #문자형 벡터
char_vec
log_vec <- c(TRUE, FALSE, TRUE) # 논리형 벡터
log_vec
```

