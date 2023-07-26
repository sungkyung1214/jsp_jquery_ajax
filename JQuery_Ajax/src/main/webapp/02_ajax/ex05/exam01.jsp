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
	table, th, td{
		border: 1px solid pink; text-align: center; 
	}
	
</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){	
	$("#btn").on("click", function() {
		$("#out").empty();
		$.ajax({
			url: "weather.xml",
			method: "get",
			dataType: "xml",
			success: function(data) {
				var table = "<table>";
				table += "<thead><tr><th>지역</th><th>날씨</th><th>온도</th></tr></thead>";
				table += "<tbody>";
				// 원하는 태그 검색
				$(data).find("local").each(function() {
					var desc = $(this).attr("desc");
					var ta = $(this).attr("ta");
					var local =$(this).text();
					table += "<tr>";
					table += "<td>"+local+ "</td><td>"+desc+ "</td><td>"+ta+"</td>";
					table += "</tr>";
				});
				
				
				table += "</tbody></table>";
				$("#out").append(table);
			},
			error : function(data) {
				alert("가져오기실패");
			}
			
		});
	});
	
	
	
	$("#btn1").on("click", function() {
		$("#out1").empty();
		$.ajax({
			url: "https://raw.githubusercontent.com/paullabkorea/coronaVaccinationStatus/main/data/data.json",
			method: "get",
			dataType: "json",
			success: function(data) {
				var table = "<table>";
				table += "<thead><tr><th>시도별</th><th>총인구</th><th>1차접종누계</th><th>2차접종누계</th><th>1차접종퍼센트</th><th>2차접종퍼센트</th></tr></thead>";
				table += "<tbody>";
				// 원하는 태그 검색
					$.each(data, function(k,v) {
					table +="<tr>"
					table +="<td>" +v["시·도별(1)"] +"</td>";
					table +="<td>" +v["총인구 (명)"] +"</td>";
					table +="<td>" +v["1차 접종 누계"] +"</td>";
					table +="<td>" +v["2차 접종 누계"] +"</td>";
					table +="<td>" +v["1차 접종 퍼센트"] +"</td>";
					table +="<td>" +v["2차 접종 퍼센트"] +"</td>";
					table +="</tr>"

				});
				
				
				table += "</tbody></table>";
				$("#out1").append(table);
			},
			error : function(data) {
				alert("가져오기실패");
			}
			
		});
	});
	
	
});

</script>
</head>
<body>
	<div id="btn">xml 파일 가져오기</div>
	<div id="out"></div>
	<div id="btn1">json 파일 가져오기</div>
	<div id="out1"></div>
</body>
</html>