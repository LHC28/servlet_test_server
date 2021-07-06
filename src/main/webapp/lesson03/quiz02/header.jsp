<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="d-flex">
	<%-- 로고 영역 --%>
	<div id="logo" class="d-flex align-items-end">
	<%-- 로고 클릭시 원래 화면으로 돌아가는 것 --%>
	<a href="template.jsp" class="text-success aC">Melong</a>
	</div>
	<%-- 검색 영역 --%>
	<%-- text에 적힌 내용을 보내기 위한 form --%>
	<form method="get" action="template.jsp"> 
		<div class="searchbox d-flex input-group align-items-end">
			<input type="text" name="title" class="form-control">
			<%-- section에 있는 값을 여기 가져와서 활용할 수 있을 것 같다. --%>
			<%-- name에 있는 값이 서버로 넘어가게 된다. --%>
			<div class="input-group-pretend">
				<input type="submit" class="btn btn-success text-white" value="검색">				
			</div>
		</div>
	</form>
</header>