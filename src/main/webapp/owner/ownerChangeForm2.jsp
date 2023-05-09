<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="org.apache.commons.collections4.bag.SynchronizedSortedBag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ownerChangerForm2.jsp</title>
<script src="./js/jquery-3.6.4.js"></script>
<script type="text/javascript">
 $(document).ready(function(){

    $('div').css({
        'font-size' : '0.7em',
        'color' : 'red'
    });
	
	  $("#fr").on("submit", function(e){
		  let descriptions = document.fr.descriptions.value;
		  console.log(descriptions);
		  if(descriptions == ""){
	        	 $('#divdes').html("가게소개를 입력해주세요!");
	        	 alert("빈칸!!");
	        	 e.preventDefault();
		  }
	
	  });
});
 

</script>

</head>
<body>

          <jsp:useBean id="ow1" class="com.fooeating.javabean.JavaBeanpt1" scope="session"/>
		  <jsp:setProperty property="*" name="ow1"/> 
		  
		  <%=ow1%>
		  <%
		  request.setCharacterEncoding("UTF-8");
		  String id = request.getParameter("rest_id");
		  String ow11 = request.getParameter("ow1");
// 		  HttpSession session1 = request.getSession();
// 		  String ow11 = (String) session1.getAttribute("ow1");
		 /*  int rest_id = 0;
		  try{
			  rest_id  = Integer.valueOf(id);
	        }
	        catch (NumberFormatException ex){
	            ex.printStackTrace();
	        } */
		  %>
		
		  
	<h1>ownerChangeForm2.jsp</h1>
	<fieldset>
		<legend>step2</legend>
		<form action="./ownerChangeForm3.on" name="fr" id="fr" method="post" enctype="multipart/form-data" >
		가게 소개<br>
		<textarea rows="5" cols="50" name="descriptions" placeholder="가게 소개를 적어주세요!"></textarea><br>		
		<div id="divdes"></div>
		<br>
		이미지 첨부(가게 외관, 내부, 메뉴판) <br>
		<input type="file" name="file_out"><br>
		<input type="file" name="file_in" ><br>
		<input type="file" name="file_menu"><br>
		<br>
		편의 시설 <br>
		<input type="checkbox" name="convenience" value="parking" > 주차 공간
		<input type="checkbox" name="convenience" value="toilet" > 화장실 (남/여) <br>
		<input type="checkbox" name="convenience" value="nokidszone" > 노키즈존
		<input type="checkbox" name="convenience" value="takeout" > 포장 가능 <br>
		<input type="checkbox" name="convenience" value="animal" > 반려 동물
		<input type="checkbox" name="convenience" value="wifi" > 와이파이 <br>
		<input type="hidden" value="ow1" name="ow1" > 
		<br>    
		<input type="button" value="이전" onclick="location.href='ownerChangeForm.on'">
		<input type="submit" value="다음" >
		</form>
		

	</fieldset>
	

 
 
</body>
</html>