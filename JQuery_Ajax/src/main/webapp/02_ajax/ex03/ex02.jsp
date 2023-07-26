<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){	
	$("#btn2").on("click", function() {
		$("#res2").load("data02.jsp")
	});
});
</script>
</head>
<body>
<div>
 	<h2>jQuery을 활용해서 data(문서) 가져오기</h2>
 		<iframe src="data02.jsp"></iframe>
 			<p id="res2"></p>
 		<button id="btn2">가져오기</button>
 	</div>
 	<hr>
</body>
</html>