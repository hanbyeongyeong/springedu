<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<jsp:include page="/main_header.jsp" flush="false"/>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/4.2.1/css/bootstrap.min.css" />

<script src="/webjars/jquery/3.3.1/dist/jquery.min.js"></script>
<script src="/webjars/popper.js/1.14.6/dist/umd/popper.min.js"></script>
<script src="/webjars/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<script>
	$(function(){
		//수정버튼 클릭시
		$(".modify, .delete").on("click",function(){
			$(location).attr("href",$(this).attr("data-memurl"));
		});
		
		//삭제버튼 클릭시
		$("#delete").on("click",function(){
			e.preventDefault();	
			location.href="/member/memberDelete/${user.id}";
		});

	});
</script>
</head>
<body class= "align-items-center">
<div class="container">
<table class="container row flex-nowrap justify-content-between align-items-center">

<div class="text-center mb-4 mr-10"  >
<img class="mb-4" src="/resources/images/man.png" alt=""
                  style="width=100%; height:300px;">
</div>

<table class="table">
  <thead class="thead-dark">
					<tr>
					<th scope="col">#</th>
						<th scope="col">아이디</th>
						<th scope="col">전화번호</th>
						<th scope="col">별칭</th>
						<th scope="col">성별</th>
						<th scope="col">지역</th>
						<th scope="col">생년월일</th>
						<th scope="col">가입일시</th>
						<th scope="col">변경일시</th>
						<th scope="col"></th>
					</tr>
				</thead>
  <tbody>
    <tr>
      <th scope="row">정보:</th>
      <td>${user.id  }</td>
		<td>${user.tel }</td>
		<td>${user.nickName }</td>
		<td>${user.gender }</td>
		<td>${user.region }</td>
		<td>${user.birth }</td>
		<td>${user.cdate }</td>
		<td>${user.udate }</td>
		
    </tr>
     </tbody>
     
   <table class="table"> 
    <tr></br></br></br>
<button type="button" class="btn btn-secondary btn-lg btn-block modify" data-memurl="/member/memberModifyForm/${user.id }">수정하기</button>
<button type="button" class="btn btn-secondary btn-lg btn-block insert" data-memurl="/">메인으로</button>
<!-- Button trigger modal -->
<button type="button" class="btn btn-secondary btn-lg btn-block delete" data-toggle="modal" data-target="#exampleModal">
  계정삭제
</button>
	</tr>
	</table>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">계정삭제</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        정말 계정을 삭제 하시겠습니까? 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" id="delete" data-memurl="/member/memberDeletefrom/${user.id }">예,계정삭제하겠습니다.</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">아니요,돌아가겠습니다</button>
      </div>
    </div>
  </div>
</div>
   

<%-- <table style="margin-left:50px;" border=1 cellpadding=5 cellspacing=0 >

	<tr style="background-color:olivedrab; font-weight:bold; ">

<div class="text-center mb-4 mr-10"  >
<img class="mb-4" src="/resources/images/man.png" alt=""
                  width="280">
</div>
		<td>아이디</td>
		<td>전화번호</td>
		<td>별칭</td>
		<td>성별</td>
		<td>지역</td>
		<td>생년월일</td>
		<td>가입일시</td>
		<td>변경일시</td>
		<td></td>
		
	</tr>
	<c:forEach items="${memberList }" var="mdto">	
	<tr style="font-size:large; font-weight:bold;">
		<td>${user.id  }</td>
		<td>${user.tel }</td>
		<td>${user.nickName }</td>
		<td>${user.gender }</td>
		<td>${user.region }</td>
		<td>${user.birth }</td>
		<td>${user.cdate }</td>
		<td>${user.udate }</td>
		<td>
		<ul colspan="5" align="center"><button class="modify" data-memurl="/member/memberModifyForm/${user.id }">수정하기</button></ul>
	 	<ul colspan="10" align="center"><button class="insert" data-memurl="/">메인으로</button></ul>
		<ul colspan="5" align="center"><button class="delete" data-memurl="/member/memberDelete/${user.id }">계정삭제</button></ul>		
		</td>
	</tr> --%>
		<b>※ 바뀐 정보는 재 로그인시 적용됩니다.</b>
	<%-- </c:forEach> --%>
		 
</table>

</table>
</div>
</body>
</html>
<jsp:include page="/main_footer.jsp" flush="false" />