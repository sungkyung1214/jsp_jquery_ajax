<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div{
	width: 80%; height: 50%;
	}
</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){	
	$("#btn1").on("click", function() {
		$("#res").load("data01.jsp")
	});
});

</script>

</head>
<body>
 	<div>
 		<h2>iframe을 활용해서 data(문서) 가져오기</h2>
 		<iframe src="data01.jsp"></iframe>
 	</div>
 	<hr>
 	
 	<div>
 		<h2>include을 활용해서 data(문서) 가져오기</h2>
 		<jsp:include page="data01.jsp" />
 	</div>
 	<hr>
 	
 	<div>
 		<h2>jQeuryf를 활용해서 data(문서) 가져오기</h2>
 		<p id="res"></p>
 		<button id="btn1">가져오기</button>
 	</div>
 	
</body>
</html>