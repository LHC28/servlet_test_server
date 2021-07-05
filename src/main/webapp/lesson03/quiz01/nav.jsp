<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 클릭시 표가 바뀜. --%>
<nav class = "bg-danger d-flex align-items-center">
		<ul class="nav nav-fill w-100">
			<li class="nav-item"><a href="layout.jsp" class="nav-link text-white">전체</a></li>
			<li class="nav-item"><a href="layout.jsp?category=지상파" class="nav-link text-white">지상파</a></li>
			<li class="nav-item"><a href="layout.jsp?category=드라마" class="nav-link text-white">드라마</a></li>
			<li class="nav-item"><a href="layout.jsp?category=예능" class="nav-link text-white">예능</a></li>
			<li class="nav-item"><a href="layout.jsp?category=영화" class="nav-link text-white">영화</a></li>
			<li class="nav-item"><a href="layout.jsp?category=스포츠" class="nav-link text-white">스포츠</a></li>
			<%-- a 태그를 쓰게 되면 form 태그를 사용핮 못하는 것을 기억하자 --%>
		</ul>
</nav>