<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{
		width: 600px;
		margin-top: 50px;
		border-collapse: collapse;
	}
	table,th,td{
		border: 1px solid purple; text-align: center;
	}
	
</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){	
	$("#btn").on("click", function(){
		// 클릭을 하면 계속 추가 되는 현상을 방지하기 위해 초기화 한다.
		$("#out").empty();
		
		var table ="<table>";
		table += "<thead><tr><th>이름</th><th>가격</th></tr></thead>";
		table += "<tbody>";
		
		// jQuery에서 (xml, html, txt)가져오는 메서드 : .get()
		// jQuery에서 (json)가져오는 메서드 : .getJSON()
		$.get("data01.xml", function(data) {
									//여기서 data는 'data01.xml'의 전부~~모든~~ 데이터
			
			
			// consol.log("data");
			// 태그 찾는 방법 : js 			=> getElementsByTagName("태그이름");
			//				jQuery 		=> find("태그이름")
			
			// 반복문 : js 		=> for문, for in문
			//		  jQuery  	=> each()
			
			// 받아온 data에서 product 태그를 찾아라
			// 여러개이므로 반목문을 실행하자
			$(data).find("product").each(function() {
				                      //each= for문이다, 콜백함수이므로 for문이 다 돌고나야 다음일을 실행
				var name = $(this).find("name").text(); //java에서 this랑은 좀 다르다.
				var price = $(this).find("price").text(); 
				                      
				 table += "<tr>";
				 table += "<td>"+name+"</td>";
				 table += "<td>"+price+"</td>";
				 table += "<tr>";
			});
		table += "</tbody></table>";
		$("#out").append(table);
		});
	});
});

</script>
</head>
<body>
	<div id="btn">가져오기</div>
	<div id="out"></div>
</body>
</html>