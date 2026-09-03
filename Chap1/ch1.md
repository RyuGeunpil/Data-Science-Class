<h2 style="text-align: center;">제1장 R 설치</h2>

### 1.R과 RStudio 설치하기

#### R 설치
- 아래 홈페이제 접속하여 R version 확인
```
https://cran.r-project.org/bin/windows/base/ 
```
#### RStudio 설치
- 아래 홈페이제 접속하여 RStudio Download, 본인 컴퓨터 OS 확인 필
```
https://posit.co/downloads
```
### 2. RStudio 구성이해
- Source창
- Console창
- Environment창
- Files/Plot/Packages/Help창
![RStudio구성창](/Chap1/구성창.jpg)

### 3. 패키지와 함수 개념 이해
- 패키지란? 개발자가 데이터 분석의 활용성을 높이기 위해 테이터, 코드, 함수, 설명서의 모듬
- 함수: 패키지 내에서 분석/데이터 전처리 등을 활용하기 위해서 미리 프로그램된 언어
- 라이브러리(library): 패키지를 설치한 후 패키지 내 함수를 활용하기 위해서 탑재하기 위한 함수
```
install.packages("ggplot2")
library(ggplot2)
```
