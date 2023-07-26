<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{
		background-color: orange;
	}
	#movie{
		position: absolute;
	}
	#movie2{
		position: absolute;
		left:450px;
	}
	#close{
		padding: 30px;
		text-align: right;
	}
	#close2{
	
		padding: 30px;
		text-align: right;
	}
</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
 $(document).ready(function(){	
	 $("#close").on("click", function() {
		$("#movie").css("display","none")	
	});
	 $("#close2").on("click", function() {
			$("#movie2").css("display","none")	
		});
	 
 });

</script>

</head>
<body>
	<div id="movie">
		<img alt="" src="../images/dd.jpg">
		<div id="close" style="background-color: red">닫기</div>
	</div>
	<div id="movie2">
		<img alt="" src="../images/dog.jpg">
		<div id="close2" style="background-color: pink">닫기</div>
	</div>
	<div>
		<h2>ICT 사진관</h2>
		<div>
			<p>사진관오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관오시는 길</p>
			<p>2호선 신촌역</p>
			<p>사진관오시는 길</p>
			<p>2호선 신촌역</p>
		</div>
	</div>
</body>
</html>