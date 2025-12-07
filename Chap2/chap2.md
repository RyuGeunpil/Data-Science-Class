<h2 style="text-align: center;">제2장 R 기본 문법</h2>

### 1.기본연산

#### 기본연산자

- **산술연산자:** 숫자의 사칙연산을 수행한다.
```
1+5
3-5
2*3
4/5
2^5
2**5
```
- **비교연산자:** 수의 크기를 비교하여 결과를 논리값(TRUE 또는 FALSE)으로 반환한다.
```
3==5
3<5
3>5
3!=5 # not equal
```
  
- **논리연산자:** 주로 if 조건문에서 사용되며, 논리값을 조합하거나 비교하여 다시 논리값을 반환한다. 대표적인 예는 “&”(AND)와 “|”(OR)이다.
```
a <- c(TRUE, FALSE, TRUE, FALSE)
b <- c(FALSE, FALSE, TRUE, TRUE)
c <- TRUE
d <- FALSE

a & b #벡터와 벡터 and(그리고) 논리결합
a | b #벡터와 벡터 or(혹은) 논리결합
c & d #원소와 원소 and(그리고) 논리결합
c || d #원소와 원소 or(혹은) 논리결합
```
- **기타연산자:** 위의 연산자 외에도 특정 작업에서 자주 활용되는 연산자가 있으며, 이에 대한 자세한 설명은 이후 자료 생성 부분에서 다룬다.

### 2.자료생성
- **객체할당:** 객체화란 데이터를 특정 이름(문자)으로 지정하여, 데이터 형식에 더 큰 자율성을 제공하기 위해 도입된 개념이다. 한 번 데이터를 객체화하면, 이후에는 그 이름만 불러도 해당 데이터가 자동으로 불러와져 프로그래밍을 효율적으로 진행할 수 있다
```
Object1 <- 1	# Object1에 1을 할당
Object1	# Object1 출력

Object2 <- 2
Object2

age <- 15
age
```

- **수 자료생성** <br>

**c() 함수:** 벡터를 생성할 때 사용함
```
var1 <- c(1, 3, 5, 7, 9)
var1

var2 <- c(1:5)		
var2
```

  **seq() 함수:** 연속되는 수를 생성할 때 사용함
```
var6 <- seq(1,5) #1~5까지 연속 값으로 var6 생성
var6

var7 <- seq(1, 10, by=2) #1에서 10까지 2씩 증가
var7

var8 <- seq(1, 10, length =5)
var8
```

  **rep() 함수:** 반복되는 수를 생성할 때 사용함
```
var9 <- rep(3, times = 5) 
var9

var10 <- rep(T, times = 5)
var10
```

- **문자 자료생성** <br>

**따옴표(""):** 문자형 자료를 생성
```
crt1 <- "Hello, R!"	
crt1


crt2 <- c("a", "b", "c")	
crt2
```

  **LETTERS()/letters() 함수:** 영어 문자를 생성
```
LETTERS[1]

letters[3]
```

  **paste() 함수:** 문자간 결합
```
paste("Hello", "World")

paste("Hello", "World", sep = "-")

v1 <- c("Hello", "World")
paste(v1, collapse = "~")
```

 ### 3. 조건문과 반복문을 통한 자료의 생성
- **조건문 자료생성** 
   **if 조건문:** 조건에 맞는 경우에 자료를 생성, 그렇치 않을 경우 생성하지 않음
```
x <- 10
if (x > 5) {
  print("x는 5보다 크다")
}

x <- 3
if (x > 5) {
  print("x는 5보다 크다")
}
```

   **if~else 조건문:** 조건에 맞는 경우와 안닌 경우를 맞춰 자료를 생성
```
x <- 3

if (x >= 5) {
  print("x는 5 이상이다")
} else {
  print("x는 5 미만이다")
}
```

- **반목문 자료생성** 
  **for~loop 반복문:** 시퀀스 값까지 반복하여 자료를 생성
```
for(i in 1:5){ 
  print(i) # print 함수는 결과를 출력
}

for(i in 1:10){ 
  print(i+i^2) 
}
```

- **난수를 통한 자료생성**
 **sample() 함수:** 랜덤으로 표본을 추출하는 함수
 ```
R <- c(1:10000)
sampled_data <- sample(R, 10)
sampled_data
```

- **사용자 정의함수를 통한 자료생성**
 **function() 함수:** 사용자가 활용 목적에 맞게 함수를 자율적으로 사용할 수 있음
  ```
  plus_function <- function(x, y) {
  result <- x + y
  return(result)
}

plus_function(10, 15)
```     

  
