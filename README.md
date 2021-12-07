# MAPO_노인장애인과 업무시스템
 Be_숲 - 전자정부프레임워크

## **[ Development deadline ]**

개발 기간 : 2021년 8월 13일 ~ 2021년 10월 29일

---

## **[ About ]**

**마포구청 노인장애인과와 복지지설의 함께 사용하는 업무시스템**

[ 프로젝트 성장배경 ]
> 마포구청은 서울시에서 업무를 받아 250여개의 복지시설로 공지하고 복지시설로부터 회신받아 취합합니다.
> 하지만 업무시스텝이 구축되 있지 않아 업무가 효율적이지 않다는 문제점이 있습니다.
> 비숲은 이러한 문제점을 개선하고 업무 환경을 개선하기 위해 만들어졌습니다.

비숲의 업무 처리 프로세스는 크게 *업무생성* *업무배포* *업무확인* 입니다.

1. 마포구청은 업무를 생성하고 복지시설에 배포합니다
2. 복지시설에서는 배포된 업무를 확인하고 항목에 대해 값을 입력하여 회신합니다
3. 마포구청은 회신받은 업무를 확인하여 승인하거나 수정 요청할 수 있습니다
4. 업무결과는 엑셀로 다운로드할 수 있습니다
5. FAQ 게시판을 통해 복지시설로 부터 반복적으로 들어오는 질문을 공지할 수 있습니다.
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

2.  Front-end
    - HTML5 & CSS
    - Jquery
    - Bootstrap4

3. ERD URL
   - https://www.erdcloud.com/d/ntPFTDGRPsxWruRRQ

4. Test Server URL
    - http://118.33.61.3:8091/mapo_project/mapo/main.do
      ID: TEST1
      Password: rhdxhd12
    - http://118.33.61.3:8091/mapo_project/	

## **[ Role ]**

 * 업무생성 화면 개발
 * 업무배포결과 상세 개발
 * 복지시설 관리 화면 개발
 
---

## **[ Feature Implementation ]**

- 업무생성 : 업무생성과 항목입력
 -  첨부파일 
 
- 업무생성확인 상세 화면
 - 생성한 업무를 수정/삭제/배포 
 - 업무생성에서 항목입력,업무수정 화면 CRUD 개발

- 업무배포결과 리스트 
 - 복지시설로 배포된 리스트 페이징, 검색 처리 
 - jQuery를 이용해  check box 전체 선택/해지 및 전체 체크박스 선택 시, disabled 된 check 박스 제외하고 checked하기 
   
- 업무배포결과 상세
 - 컬럼의 데이터가 가변적이라서 동적쿼리를 이용해서 복지시설이 입력한 항목 값을 가로로 나타내서 보여준다.???
 - 배포결과 엑셀 다운로드

- 사용자 정보 수정(비밀번호 초기화)

- 복지시설 관리, 등록, 수정
 - 복지시설 리스트 페이징 
 - 복지시설 CRUD 개발
     
---

시현한 결과 아쉬웠던 점

모든 사람들이 한꺼번에 질문을 하시다보니까 갈때는 사용자 메뉴얼을 만들어가는 점이 좋겠다.
공무원분들이 사용하시는 모니터가 정사각형 구조여서 이미지,글씨가 깨진 점이 아쉬웠다!! 


