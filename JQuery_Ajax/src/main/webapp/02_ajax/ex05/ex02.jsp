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
		border: 1px solid red; text-align: center; 
	}
	
</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){	
	$("#btn").on("click", function() {
		$("#out").empty();
		$.ajax({
			url: "data02.xml",
			method: "get",
			dataType: "xml",
			success: function(data) {
				var table = "<table>";
				table += "<thead><tr><th>이름</th><th>보유차량 수</th></tr></thead>";
				table += "<tbody>";
				// 원하는 태그 검색
				$(data).find("product").each(function() {
					var name = $(this).attr("name");
					var count = $(this).attr("count");
					table += "<tr>";
					table += "<td>"+name+ "</td><td>"+count+ "</td>";
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
});

</script>
</head>
<body>
	<div id="btn">xml 파일 가져오기</div>
	<div id="out"></div>
</body>
</html>