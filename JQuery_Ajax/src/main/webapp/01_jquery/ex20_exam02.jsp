<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
<%-- jQuery 라이브러리 CDN --%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>
<script type="text/javascript">
 // prop() : 지정한 선택자를 가진 첫번째 요소의 속성값을 가져오거나 추가한다.
 $(document).ready(function(){	
	$(".check-all").on("click" , function() {
		$(".ab").prop('checked',this.checked);
	});
 });

</script>

</head>
<body>
	<h2>체크박스 전체선택/전체해제</h2>
	<form> 
		<p><input type="checkbox" name="all" class="check-all" id="conn"><label for="conn">Check All</label></p>
		<hr>
		<p><input type="checkbox" name="cb1" class="ab" id="conn"><label for="conn">Check 1</label></p>
		<p><input type="checkbox" name="cb2" class="ab"><label>Check 2</label></p>
		<p><input type="checkbox" name="cb3" class="ab"><label>Check 3</label></p>
		<p><input type="checkbox" name="cb4" class="ab"><label>Check 4</label></p>
		<p><input type="checkbox" name="cb5" class="ab"><label>Check 5</label></p>
		<p><input type="checkbox" name="cb6" class="ab"><label>Check 6</label></p>
	</form>
</body>
</html>