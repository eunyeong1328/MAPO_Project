# MAPO_노인자애인과 업무시스템

# Be_숲 - 전자정부프레임워크

## **[ Development deadline ]**

개발 기간 : 2021년 8월 13일 ~ 2021년 10월 29일

---

## **[ About ]**

**마포구청 노인장애인과와 복지지설의 함께 사용하는 업무시스템**

[ 프로젝트 성장배경 ]

마포구청은 서울시에서 업무를 받아 250여개의 복지시설로 공지하고 복지시설로부터 회신받아 취합합니다.
하지만 업무시스텝이 구축되 있지 않아 업무가 효율적이지 않다는 문제점이 있습니다.
비숲은 이러한 문제점을 개선하고 업무 환경을 개선하기 위해 만들어졌습니다.

비숲의 업무 처리 프로세스는 크게 *업무생성* *업무배포* *업무확인* 입니다.

> 마포구청은 업무를 생성하고 복지시설에 배포합니다.
> 복지시설에서는 배포된 업무를 확인하고 항목에 대해 값을 입력하여 회신합니다.
> 마포구청은 회신받은 업무를 확인하여 승인하거나 수정 요청할 수 있습니다.
> 업무결과는 엑셀로 다운로드할 수 있습니다.
> 또한 FAQ 게시판을 통해 복지시설로 부터 반복적으로 들어오는 질문을 공지할 수 있습니다.

---
## **[ Preview ]**

 [User Manual PDF file](https://github.com/eunyoung56/MAPO_Project/blob/main/UserManual.pdf)
---

![1](https://github.com/eunyoung56/MAPO_Project/blob/main/mapoBusinessSystem.png)
---

## **[ Develop Environment ]**

1. Server & Back-end
- JDK 1.8   
- Tomcat 8.5
- My-SQL 5.6.21
- Jenkins
- Visual SVN Server 4.3.1    
- eGovFramework(전자정부프레임워크) 3.10
- Eclipse 3.10
- Maven 3.6.3
- MyBatis

2. Front-end
- HTML5 & CSS
- Jquery
- Bootstrap4

3. ERD URL
- https://www.erdcloud.com/d/ntPFTDGRPsxWruRRQ

4.Test Server URL
- http://118.33.61.3:8091/mapo_project/mapo/main.do
  ID: TEST1
  Password: rhdxhd12
- http://118.33.61.3:8091/mapo_project/	

## **[ Role ]**

* 은영
 * 업무생성 화면 개발
 * 업무배포결과 상세 개발
 * 복지시설 관리 화면 개발
 
---
### **[ Feature Implementation ]**

- 스톱워치 페이지 데이터 연동 구현

  - FireBase와 스톱워치 시간 데이터 연동 
  
- FirebaseData와 연동하여 데이터 관리

   - MVVM패턴으로 ViewModeal를 사용하여 livedata와 dataBinding으로 일간,주간,월간 실시간 연동
  
   - 스티커 페이지에서 공부시간 기록 연동

- 통계 페이지 구현
    
  - Tap Layout 

  - 일간,주간,월간 페이지
    
        - LocalDataTime에서 날짜 분류 작업 
       
        - button 클릭 시 주간,월간 날짜 이동 구현
       
        - MpAndroidChart를 이용한 barchart, stackChart, pieChart Custom

  - 주간 페이지
 
        - MpAndroidChart에서 Limit Line(제한선) 구현


  - PieChart(원 차트)
 
        - RecyclerView Adapter와 PieChart를 연동하여 일간 공부시간 나타내기

- 공유 페이지 구현

      — 카메라 나타내기 구현
      
      - 캡처 버튼 리스너 등록

      — 카메라 전환(앞면/후면)
      
      - 카메라 줌 기능 구현
      
      — 외부 저장소에서 가장 최근의 사진을 가져오기
      
      
- 스티커 페이지 구현

      — 찍힌 사진에 Sticker 설정 후 공유하기
     
---

