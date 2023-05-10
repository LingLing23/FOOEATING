<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-3.6.4.js"></script>
<script type="text/javascript">
 </script>
</head>
<body>
     <% request.setCharacterEncoding("UTF-8"); %>
     
   
     ${ow1 }
     ${ow2 }
    
     
     
	<h1>ownerChangeForm4.jsp</h1>
	<fieldset>
		<legend>step4</legend>
		<form action="./ownerRequestSuccess.on">
			<textarea rows="5" cols="50">약관 내용</textarea><br>
			약관에 동의하시겠습니까? <input type="checkbox"><br>
			<textarea rows="5" cols="50">약관 내용</textarea><br>
			약관에 동의하시겠습니까? <input type="checkbox"><br>
			<textarea rows="5" cols="50">약관 내용</textarea><br>
			약관에 동의하시겠습니까? <input type="checkbox"><br>
			<br>
			<input type="button" value="이전" onclick="location.href='ownerChangeForm3.on'">
			<input type="submit" value="다음">
		</form>
	</fieldset>
</body>
</html>