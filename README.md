# MAPO_노인자애인과 업무시스템

# Be_숲 - 전자정부프레임워크

## **[ Development deadline ]**

개발 기간 : 2021년 8월 13일 ~ 2021년 10월 29일

---

## **[ About ]**

**마포구청 노인장애인과와 복지지설의 함께 사용하는 업무시스템**

비숲의 업무 처리 프로세스는 크게 업무생성, 업무배포, 업무확인 입니다.

- 마포구청은 업무를 생성하고 복지시설에 배포합니다.
- 복지시설에서는 배포된 업무를 확인하고 항목에 대해 값을 입력하여 회신합니다.
- 마포구청은 회신받은 업무를 확인하여 승인하거나 수정 요청할 수 있습니다.
- 업무결과는 엑셀로 다운로드할 수 있습니다.
- 또한 FAQ 게시판을 통해 복지시설로 부터 반복적으로 들어오는 질문을 공지할 수 있습니다.

---

## **[ Preview ]**

 [MAPO User Manual PDF file](https://github.com/GooroomeeDEV/TP_GooroomeeLite/blob/master/GOOROOMEELITE.pdf)
---

![1](https://user-images.githubusercontent.com/79887378/127723015-b90a1d22-5b8d-49b9-b600-e5ff83f2ec45.PNG)

---

## **[ Development deadline 개발기한 ]**

---

## **[ Develop Environment ]**

- Language : Kotlin
- Android Depolyment Target : Android 6.0(Mashmallow)
---

## **[ Library ]**

1. Server
- Firebasedatabase
- Firebasestorage

 2. Layout

- [Glide](https://github.com/bumptech/glide)
- [ScaleRatingBar](https://github.com/williamyyu/SimpleRatingBar)
- [gridlayout](https://mvnrepository.com/artifact/androidx.gridlayout/gridlayout/1.0.0-rc01)
- ConstraintLayout
- RelativeLayout
- [ViewPager2](https://developer.android.com/jetpack/androidx/releases/viewpager2?hl=ko)

 3. Function

- [TedPermission](https://github.com/ParkSangGwon/TedPermission)
- [ColorPicker](https://github.com/Dhaval2404/ColorPicker)
- [MPAndroidChart](https://github.com/PhilJay/MPAndroidChart)

---

## **[ Role ]**

- 은영
- FirebaseData Management, Statistic Page, Share Page, Sticker Page

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

### **[ Tools ]**

- AndroidStudio

- Figma

- Slack

- Github

- Notion
