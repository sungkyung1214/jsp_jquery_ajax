<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한줄 뉴스 - 자바스크립트</title>
<script type="text/javascript">
	var news=[
		"바이오 세액공제 내건 정부…정작 송도 12조 투자는 미적용?",
		"한미일,다음달 18일 美캠프데이비드서 정상회담 조율 중",
		"中 기술규제하면 맞대응할 것",
		"인구구조 변화에 맞춘 자산관리 모색",
		"스크래치 스스로 셀프 힐링…현대차, 꿈의 車 나노 기술 공개",
		"사고경제법률 정보 갈증, 아시아경제가 풀어드립니다"];
	var index =0;
	var timer;
	function start_news(){
		// 2초마다 showNews()를 실행하자   (showNews() 콜백함수)
		timer = setInterval(showNews,2000);
	}
	function showNews(){
		var div = document.getElementById("mydiv");
		div.innerHTML = news[index++];
		if(index==news.length){
			index=0;
		}
	}
	function stop_news(){
		// setInterval()를 중지시키는 함수
		clearInterval(timer);
	}
	



</script>

</head>
<body>
	<div id="mydiv"></div>
	<button onclick="start_news()">뉴스보기</button>
	<button onclick="stop_news()">뉴스중지</button>
</body>
</html>