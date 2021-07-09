<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<!-- jQuery가 datepicker 라이브러리 위에 있어야 한다. (데이터피커가 jquery를 사용하기 때문) -->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>        

<!-- bootstrap CDN link -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <style>
  	header {height:100px; background-color:rgb(255,127,80);}
  	nav {height:80px; background-color:rgb(255,127,80); font-size:20px;}
  	section {height:700px;}
  	article {height:320px; width:360px; border:2px solid rgb(255,127,80);}
  	.picture {height:200px; width:340px;}
  	.title {font-size:20px; color:black;}
  	.price {font-size:15px; color:grey;}
  	.nickname {font-size:20px; color:orange;}
  	.inputBox {height:600px; width:900px;}
  	.inputTitle {width:900px; height:150px;}
  	.inputChoiceBox {height:50px; width:880px;}
  	.selectBox {height:50px; width:200px; color:grey;}
  	.inputTitleBox {height:40px; width:350px; color:grey;}
  	.inputButton {height:40px; width:900px; color:black; background-color: rgb(239, 239, 239);}
  	footer {height:50px; color:rgb(133,140,147); font-size:12px;}
  </style>
</head>
<body>
	<div class="container">
		<jsp:include page="header.jsp"/>
		<jsp:include page="nav.jsp"/>
		<jsp:include page="section.jsp"/>
		<jsp:include page="section2.jsp"/>
		
		<jsp:include page="footer.jsp"/>
	</div>
	
	<script>
		$(document).ready(function(){
			$('.inputButton').on('submit',function(e){ // 이런 경우 class로 만들어 하는 것이 더 좋다.
                e.preventDefault();
                // radio에서 받은 value 값을 기준으로 if를 활용하여 값을 가져오는 방식도 있다.
                var id = $('#id').val();
                var title = $('#title').val();
                var price = $('#price').val();
                var url = $('#url').val();
                
                if(title==null || title=""){
                    alert("제목을 확인하세요");
                    return;
                }
                if(price==null || price=""){
                    alert("가격을 확인하세요");
                    return;
                }
				if(url==null || url=""){
               	 alert("url을 확인하세요");
               	 return;
            	}
                
                alert("등록이 완료되었습니다.");
                
                /*$('#signup').submit(function() {
                    if ($('#username').val() == '') {
                        alert('Please supply a name in the Name field.');
                        return false;
                    }
                });*/
                // 이걸로 해보기

            });
		}
	</script>
</body>
</html>