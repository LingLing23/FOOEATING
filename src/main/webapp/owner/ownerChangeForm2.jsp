<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ownerChangerForm2.jsp</title>

</head>
<body>
		  <%
		  request.setCharacterEncoding("UTF-8");
		  %>
		  <jsp:useBean id="ow1" class="com.fooeating.javabean.JavaBeanpt1" />
		  <jsp:setProperty property="*" name="ow1"/> 
		  <%=ow1 %>
		  
	<h1>ownerChangeForm2.jsp</h1>
	<fieldset>
		<legend>step2</legend>
		<form action="./ownerChangeForm3.on" method="post">
		가게 소개<br>
		<textarea rows="5" cols="50" name="descriptions" placeholder="가게 소개를 적어주세요!."></textarea><br>
		<br>
		이미지 첨부(가게 외관, 내부, 메뉴판) <br>
		
		<input type="text" name="file_out"><input type="button" value="첨부파일"><br>
		<input type="text" name="file_in" ><input type="button" value="첨부파일"><br>
		<input type="text" name="file_menu"><input type="button" value="첨부파일"><br>
		<br>
		편의 시설 <br>
		<input type="checkbox" name="convenience" value="parking" > 주차 공간
		<input type="checkbox" name="convenience" value="toilet" > 화장실 (남/여) <br>
		<input type="checkbox" name="convenience" value="nokidszone" > 노키즈존
		<input type="checkbox" name="convenience" value="takeout" > 포장 가능 <br>
		<input type="checkbox" name="convenience" value="animal" > 반려 동물
		<input type="checkbox" name="convenience" value="wifi" > 와이파이 <br>
		<br>
		<input type="button" value="이전" onclick="location.href='ownerChangeForm.on'">
		<input type="submit" value="다음" onclick="location.href='ownerChangeForm3.on'">
		</form>
	</fieldset>
	

 
 
</body>
</html>