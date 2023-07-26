<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addClass : 스타일을 지정된 클래스 추가(적용)</title>
<style type="text/css">
	.silver{background-color: silver;}
	.orange{background-color: orange;}
	.mystyle{color: white;}
	.mystyle2{color: green; font-size: 20px;}
	.mystyle3{ background-color: skyblue;color: green; font-size: 20px;}
	.mystyle4{ background-color: black;color: green; font-size: 20px;}
	.mystyle5{ background-color: blue;color: green; font-size: 20px;}
</style>
<script type="text/javascript">
	function send_go() {
		alert("hi~하이힝")
	}
</script>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){	
	// 스타일에서 만든 오렌지를 적용한다.
	//$("#k1").addClass("orange").addClass("mystyle");
	$("#k1").addClass("orange mystyle2");
	
	// 이벤트 처리
//	$("#k3").click(function(){
	//	alert("hi~gdgdgdgd")
	//});
	
	$("#k3").on("click",function(){
		alert("Handler for 'click' called.");		
	});
	 
	 // a요소 전체에 적용
	 $("a").addClass("silver")
	 
	 
	 $("a:first").addClass("mystyle")
	 $("a:last").addClass("mystyle2")
	 
	 // 요소[속성] : 해당 속성이 있는 요소
	 $("a[href]").addClass("mystyle3")
	 
	  // 요소[속성 = '값'] : 해당 속성이 값과 일치하는 요소
	 $("a[href='https://www.daum.net']").addClass("mystyle4");
	  
	  // 요소[속성 ^= '값'] : 값으로 시작하는 요소
	 $("a[href ^= 'mailto:']").addClass("mystyle4");
	  
	  // 요소[속성 $= '값'] : 값으로 끝나는 요소
	 $("a[href $= 'net']").addClass("mystyle5");
	  
	  // 요소[속성 *= '값'] : 값을 포함하는 요소
	  
	 
	
	
	
		
});

</script>

</head>
<body>
	<div style="background-color: yellow;" onclick="send_go()">안녕하세요 jQuery-1입니다.</div>
	<div class="silver" onclick="send_go()">안녕하세요 jQuery-2입니다.</div>
	<div id="k1">안녕하세요 jQuery-3입니다.</div>
	<div id="k2">안녕하세요 jQuery-4입니다.</div>
	<div id="k3">안녕하세요 jQuery-5입니다.</div>
	<hr>
	<a href="https://www.naver.com">네이버</a>
	<a href="https://www.google.com">구글</a>
	<a href="https://www.daum.net">다음</a>
	<a href="mailto:ske703@naver.com">네이버 메일</a>
	<a href="mailto:bibleee@gmail.com">구글 메일</a>
	<a href="mailto:nojm73@daum.net">다음 메일</a>

</body>
</html>