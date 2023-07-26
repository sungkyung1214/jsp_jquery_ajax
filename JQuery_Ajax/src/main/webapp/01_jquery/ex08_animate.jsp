<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>애니메이션 효과 : animate</title>
<style type="text/css">
div {
	background-color: skyblue;
	width: 100px;
	height: 100px;
	position: absolute;
}
</style>

<%-- jQuery 라이브러리 CDN --%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var i = 0;
		$("#btn").on("click", function() {
			// 이동
			/* 
			$("#div").animate({
			left:"250px",
			top:"250px"
			},3000); 
			 */
			//확대
			/* 	
			$("#div").animate({
				width:"+=250px",
				height:"+=250px"
				},3000);
			 */
			/* 
				$("#div").animate({
				left:"250px",
				top:"250px",
				width:"+=250px",
				height:"+=250px"
				},3000); 
			 */
			/* 
			$("#div").animate({
			height:"toggle"
			},400);
			 */

			if (i++ % 2 == 0) {
				$("#div").animate({
					width : "+=250px",
					height : "+=250px"
				}, 3000);

			} else {
				$("#div").animate({
					width : "-=250px",
					height : "-=250px"
				}, 3000);
			}
		});

		$("#div").on("click", function() {
			$(this).stop();
		});
	});
</script>
</head>
<body>
	<button id="btn">애니메이션 시작</button>
	<hr>
	<div id="div"></div>
</body>
</html>