<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jQuery 콜백함수</title>
<style type="text/css"></style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	//콜백함수는 현재 효과가 100%가 완료된 후에 실행 됩니다.
	
$(document).ready(function(){	
	// 콜백 함수
	$("#btn").on("click",function(){
		// 콜백
		// 콜백함수의 증거 : 다 숨겨진 후 alert창이 나온다.
		/*$("p").hide("slow",function(){
			alert("hhii")
		});
		*/
		// 콜백함수가 아닌 경우: 다 숨겨지지 않아도 alert 창이 나온다.
		$("p").hide("slow");
		alert("hiihihihihihi")
	});
});

</script>
</head>
<body>
	<button id="btn">눌러주세요</button>
	<p>눌러주시면 해당 내용이 사라집니다.</p>
</body>
</html>