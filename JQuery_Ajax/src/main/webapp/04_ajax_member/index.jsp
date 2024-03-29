<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
   span { width: 150px; color: red;}
    input{border:1px solid red; margin: 5px; }
    table{width: 80%; margin: 0 auto;}
    table,th,td {border: 1px solid gray; text-align: center;}
    h2{text-align: center;}
</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){	
	// 실행하자마자 DB 정보 가져오기
	function getList() {
		$("#tbody").empty();
		$.ajax({
			url : "/MyController8",
			dataType: "xml",
			method: "get",
			success: function(data) {
				//console.log(data);
				
				var tbody="";
				$(data).find("member").each(function() {
					tbody += "<tr>";
					tbody += "<td>" +$(this).find("idx").text() +"</td>";
					tbody += "<td>" +$(this).find("id").text() +"</td>";
					tbody += "<td>" +$(this).find("pw").text() +"</td>";
					tbody += "<td>" +$(this).find("name").text() +"</td>";
					tbody += "<td>" +$(this).find("age").text() +"</td>";
					tbody += "<td>" +$(this).find("reg").text() +"</td>";
					tbody += "<td><input type ='button' value='삭제' class='del' name='"+$(this).find("idx").text()+"'></td>";
					tbody += "</tr>";
				});
				
				$("#tbody").append(tbody);
					
			},
			error: function() {
				alert("가져오기 실패");
			}
			
		});
	}
		// 삭제
		$("table").on("click", ".del", function() {
			// alert($(this).attr("name"));
			// 파라미터를 보내야 한다.(data: ) 여기부분에 넣어주기 ,파라미터는 이름아니면 값으로 간다.
			// 두가지이다. 폼인경우와, 폼이 아닌경우
			// 지금은 폼태그 아니면서 한개짜리 파라미터 보내기
			$.ajax({
				url : "/MyController9",
				dataType: "text",
				method: "get",
				data: "m_idx=" + ($(this).attr('name')),
				success: function(data) {
					//console.log(data);
					if(data == 0 ){
						alert("삭제 실패");	
					}else {
						alert("삭제 성공");
						getList();
					}
					
		
						
				},
				error: function() {
					alert("가져오기 실패");
				}
				
			});			
		});
		
		//keyup 키보드를 눌렀다가 뗄 때
		$("#m_id").keyup(function() {
			$.ajax({
				url : "/MyController10",
				dataType : " text",	
				method : "get",
				data : "m_id="+$("#m_id").val(),
				async :false, //비동기 안하고 순서대로 하겠다는 뜻
				success: function(data) {
					if(data == 1){
						//console.log("사용불가");
						$("span").text("사용불가,중복된 아이디입니다.")
						$("#btn").attr("disabled","disabled");
					}else{
						//console.log("사용가능");
						$("span").text("사용가능")
						$("#btn").removeAttr("disabled");
					
						
					}
				},
				error: function() {
					alert("읽기실패");
				}
			});
		});
		
		// 회원가입
		// form 태그를 이용해서  데이터를 전달할때는 직렬화를(serialize()) 해야한다. 
		// form 요소만 가능
		$("#btn").on("click", function() {
			var param= $("#myform").serialize();
			$.ajax({
				url : "/MyController11",
				dataType : " text",	
				method : "get",
				data : param,
				success: function(data) {
					if(data == 0){
						// alert("가입실패");
						}else{
						//alert("가입성공");
						getList();
						
					}
				},
				error: function() {
					alert("읽기실패");
				}
			});
		});
		
		
	getList();
});

</script>
</head>
<body>
	<h2>회원 정보 입력하기</h2>
	<form name="myform" method="post" id="myform">
		<table>
			<thead>
				<tr>
					<th>아이디</th>
					<th>패스워드</th>
					<th>이름</th>
					<th>나이</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" size="14" name="m_id" id="m_id"><br>
					<span>중복여부</span></td>
					<td><input type="password" size="8" name="m_pw" ></td>
					<td><input type="text" size="14" name="m_name" ></td>
					<td><input type="number" size="25" name="m_age"></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="7" align="center"><button id="btn" disabled>가입하기</button></td>
				</tr>
			</tfoot>
		</table>
	</form>
	<br />
	<br />
	<br />
	<h2>회원 정보 보기</h2>
	<div>
		<table id="list">
			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>패스워드</th>
					<th>이름</th>
					<th>나이</th>
					<th>날짜</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody id="tbody"></tbody>
		</table>
	</div>
</body>
</html>