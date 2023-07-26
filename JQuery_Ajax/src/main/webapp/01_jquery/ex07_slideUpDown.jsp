<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숨기기/표시하기</title>
<style type="text/css"></style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
 //$(선택자).slideDown(),   $(선택자).slideDown(speed)
 //$(선택자).slideUp(),   $(선택자).slideUp(speed)
 //$(선택자).slideToggle(), $(선택자).slideToggle(speed)

 
 
 $(document).ready(function(){	
		$("#hide").on("click",function(){
			$("img, #p1").slideUp(600);
			//$("#p1").hide();
		});
		$("#show").on("click",function(){
			$("img, #p1").slideDown(600);
			//$("#p1").show();
		});
		$("#toggle").on("click",function(){
			$("img, #p1").fadeTo("slow",0.1);
			//$("#p1").slideToggle();
		});
 });

</script>
</head>
<body>
	<p>아래 버튼을 누르면 숨겨지거나 나타나게 된다.</p>
		<button id="hide">숨기기</button>
		<button id="show">표시하기</button>
		<button id="toggle">숨기기/표시하기</button>
		<hr>
		
		<p><img src="../images/pic_bulboff.gif"></p>
	<p id="p1">Hello, World</p>
	
	
</body>
</html>