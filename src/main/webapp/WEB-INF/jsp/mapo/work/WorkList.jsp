<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
 /**
  * @ Class Name 	: WorkList.jsp
  * @ Description 	: WorkList 화면
  * @ Modification Information
  * @
  * @  수정일             	 수정자              수정내용
  * @ -----------  --------    ---------------------------
  * @ 2021.09.14 	이도경              최초 생성
  * @ 2021.09.19 	서지혜              레이아웃 수정 및 기능 추가
  * @ 2021.09.27    서지혜              상세기능 추가
  *  
  */
%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>마포구청 업무 사이트</title>

<!-- Custom fonts for this template-->
<link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrapthema/vendor/fontawesome-free/css/all.min.css"/>">
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- Custom styles for this template-->
<link rel="stylesheet" href="<c:url value="/css/bootstrapthema/css/sb-admin-2.css"/>">

<!-- 공통 CSS 호출 -->
<link rel="stylesheet" href="<c:url value="/css/mapo/custom.css"/>">
<!-- Font-Awesome 5 호출 -->

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />

<!-- favicon -->
<link rel="shortcut icon" type="image/x-icon" href="<c:url value="/css/mapo/favicon.ico"/>">

</head>


<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

<!-- Sidebar -->
<c:import url="../MapoMainLeft.jsp" />

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">
<div id="content">

<!-- Topbar -->
<c:import url="../MapoMainTop.jsp" />

<!-- 메인 컨테이너  -->
<div class="container col-auto">
	<div class="row">
		<div class="col-sm-6">
			<p class="pageTitle">| 업무생성확인</p>
		</div>				
		<div class="col-sm-6 text-right mb-1">
				<a href="<c:url value='/mapo/addWork.do' />"  class="btn btn-primary text-right mr-1" title="업무생성">업무생성</a>		
		</div>
	</div>


	<!-- 업무 검색 -->
	<form name="searchForm" action="<c:url value='workList.do'/>" method="post">

	<div class="card" >
		<div class="card-header">

			<!-- 업무검색 1행 -->
			<div class="form-group row" >
				<label for="step" class="col-sm-1 col-form-label text-right"><strong>업무진행</strong></label>
				<div class="col-sm-2">
						<select name="step" id="step" class="form-control" aria-label="Default select example">
							<option value="">전체</option>
							<c:forEach var="resultStep" items="${resultStep}" varStatus="status">
								<option value="${resultStep.code}" ${resultStep.code == step ? 'selected="selected"' : ''}>${resultStep.codeNm}</option>
							</c:forEach>
						</select>
				</div>
					
				<!-- 검색 : 마감일 시작일 선택 -->
				<label for="title" class="col-sm-1 col-form-label text-right"><strong>마감기간 </strong></label>
				<div class="col-sm-4 form-inline">
					<div class="form-group">
						<div class="input-group date mr-2" data-target-input="nearest">
							<input type="text" class="form-control datetimepicker-input" data-target="#startDt" id="startDt" name="startDt" />
							<div class="input-group-append" data-target="#startDt" data-toggle="datetimepicker">
								<div class="input-group-text">
									<i class="fa fa-calendar"></i>
								</div>
							</div>
						</div>
						~					
						<!-- 검색 : 마감일 최종일 선택 -->
						<div class="input-group date ml-2" data-target-input="nearest">
							<input type="text" class="form-control datetimepicker-input" data-target="#endDt" id="endDt" name="endDt" />
							<div class="input-group-append" data-target="#endDt" data-toggle="datetimepicker">
								<div class="input-group-text">
									<i class="fa fa-calendar"></i>
								</div>
							</div>
						</div>
					</div>		
				</div>
				
					
				<!-- 검색 : 업무담당자 선택 -->
				<%-- <label for="manager" class="col-md-1 col-form-label text-right"><strong>담당자</strong></label>
				<div class="col-md-2">
					<select name="manager" id="manager" class="form-control">
						<option value="">전체</option>
						<c:forEach var="resultManager" items="${resultManager}" varStatus="status">
							<option value="${resultManager.codeNm}" ${resultManager.codeNm == manager ? 'selected="selected"' : ''}>${resultManager.codeNm}</option>
						</c:forEach>
					</select>
				</div>		 --%>
			</div>

			<!-- 업무검색 2행 -->
			<div class="form-group row" style="margin-bottom:0px;">
				<!-- 검색 : 업무구분 선택 -->
				<label for="taskIdx" class="col-sm-1 col-form-label text-right"><strong>업무구분</strong></label>
				<div class="col-sm-2">
					<select name="taskIdx" id="taskIdx" class="form-control" onchang="">
						<option value="">전체</option>
						<c:forEach var="resultGubun" items="${resultGubun}" varStatus="status">
							<option value="${resultGubun.code}" ${resultGubun.code == taskIdx ? 'selected="selected"' : ''}>${resultGubun.codeNm}</option>
						</c:forEach>
					</select>
				</div>

				
				<!-- 검색 : 검색어 입력 -->
				<label for="taskNm" class="col-sm-1 col-form-label text-right"><strong>제목/내용</strong></label>		
					<div class="col-sm-4">
						<input type="text" class="form-control" name="taskNm" id="taskNm" maxlength=255 value="${taskNm }" placeholder="검색어를 입력하세요.">
					</div>		
				<button id="btnSearch" type="submit" class="btn btn-primary" >검색</button>
			</div>		
		</div> <!--  card-header -->


		<!-- START : 업무 확인 리스트 -->
		<div class="card-body">
			<!-- <div class="card-body" style="height:64vh;overflow-y:scroll;"> -->
			<div class="table-responsive">
				<table class="table table-hover mt-2 ">
			 		<colgroup>
						<col style="width: 5%;">
						<col style="width: 7%;">
						<col style="width: 10%;">
						<!-- 업무구분 -->
						<col style="width: 10%;">
						<!-- 업무제목 -->
						<col style="width: 34%;">
						<col style="width: 14%;">
						<col style="width: 8%;">
						<col style="width: 14%;">		
					</colgroup> 
					<thead>
						<tr class="text-center">
							<!-- <th scope="col" width="7%">번호</th> -->
							<th>업무ID</th>
							<th>긴급여부</th>
							<th>진행상태</th>
							<th class="text-left">업무구분</th>
							<th class="text-left">업무제목</th>
							<th>담당자(ID)</th>
							<th>첨부파일</th>
							<th>마감일시</th>
						</tr>
					</thead>

					<tbody>
						<c:set var="total" value="${total }" />
						<c:forEach var="result" items="${resultWorkList }" varStatus="status">
							<tr class="text-center">
								<!-- 순번 -->
								<%-- <td><c:set var="cnt" value="${status.index }" />${total - cnt}</td> --%>
								<!-- 업무ID -->
								<td>${result.taskId }</td>
								<!-- 긴급공지 -->
								<td>${result.urgent }</td>
								<!-- 진행상태 -->
								<td>${result.steNm }</td>
								<!-- 업무구분 -->
								<td class="text-left">${result.tasNm }</td>
								<!-- 업무제목 -->
								<td class="text-left"><a href="AddWorkDetail.do?taskId=${result.taskId}&mode=view">${result.taskNm }</a></td>
								<!-- 담당자 -->
								<td>${result.userNm }(${result.manager })</td>
								<!-- 첨부파일 여부 -->
								<td>${result.atchYn }</td>
								<!-- 마감일 -->
								<td>${result.closeDt }&nbsp;${result.closeTm }</td>
							</tr>
						</c:forEach>
						<c:if test="${total eq 0}">
							<tr><td colspan='9' class='col-auto text-center'>검색된 데이터가 없습니다</td></tr>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
		<!-- END : 업무 확인 리스트 -->


		<!-- START : 페이징 처리 -->
		<div class="card-footer">
			<!-- paging navigation -->
			<div class="pagination" style="height: 4vh;">
				<ul class="pagination justify-content-center" style="width: 100%;">
					<ui:pagination paginationInfo="${paginationInfo}" type="image" jsFunction="linkPage" />
				</ul>
			</div>
		</div>
		<!-- END : 페이징 처리 -->

	</div> <!--  END CARD -->

	</form>

</div> 
</div>
</div>
</div>

<!-- Modal & Script-->
<%@ include file="../modal/common.jsp"%>

<!-- script 호출 -->
<script src="<c:url value="/js/mapo/checkWork.js"/>"></script>

<script>
$(document).ready(function(){
	
	// 왼쪽 메뉴 아이콘 활성화
	$("#menuWorkList").addClass("active");
	
	// 마감일자 설정
	var startDay = getStartDay();
	var endDay = getEndDay();

	$("#startDt").val(startDay);
	$("#endDt").val(endDay);
	
	
});

function linkPage(pageNo) {
	location.href = "<c:url value='/mapo/workList.do'/>?pageIndex="+ pageNo+"&startDt=${startDt}&endDt=${endDt}&taskNm=${taskNm}&taskIdx=${taskIdx}&manager=${manager}&step=${step}";
};
	</script>
</body>
</html>