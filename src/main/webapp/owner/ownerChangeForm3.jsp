<%@page import="javax.swing.SwingConstants"%>
<%@page import="javax.swing.JLabel"%>
<%@page import="javax.swing.ImageIcon"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="org.apache.commons.collections4.bag.SynchronizedSortedBag"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>onerChangeForm3.jsp</title>

<body>
	<% request.setCharacterEncoding("UTF-8");

     %>


       
           <%
         // 업로드된 파일이 저장될 공간 => upload 폴더생성
         
         String uploadPath = application.getRealPath("/upload");
         	System.out.println(uploadPath);
         	// -> 톰캣에 저장되는 경로
       
         
         // 업로드 할 파일의 크기 10mb
         int maxSize = 10 * 1024 * 1024;
         
         //  파일 업로드
         MultipartRequest multis = new MultipartRequest(
        		 request,
        		 uploadPath,
        		 maxSize,
        		 "UTF-8",
        		 new DefaultFileRenamePolicy()
        		 );
         System.out.println("MultipartRequest 객체 생성-파일 업로드 성공!");
//          MultipartRequest multi = new MultipartRequest(
//         		 request,
//         		 uploadPath,
//         		 maxSize,
//         		 "UTF-8",
//         		 new DefaultFileRenamePolicy()
//         		 );
          // 업로드 된 정보를 저장(DB)
          // multipart/form-data form 태그 이므로 일반적인 방법으로는 정보를 못가져옴
          // 작성자
          //String name = request.getParameter("name");
  
          // 파일
       
          // String file = multi.getParameter("file");
            
           //  String file_out = multi.getFilesystemName("file_out");
       String convenience = "";
       String[] conveniences = multis.getParameterValues("convenience");
       
       if(conveniences!=null){
    	   for(int i = 0 ; i<conveniences.length; i++){
    		   if(conveniences.length-1 == i){
    			   convenience+=conveniences[i];
    		   }else{
    		   convenience+=conveniences[i]+",";    			   
    		   }   		   
    	   }
       }
         String descriptions = multis.getParameter("descriptions");
         String file_out = multis.getFilesystemName("file_out");
         String file_in = multis.getFilesystemName("file_in");
         String file_menu = multis.getFilesystemName("file_menu");
         String name = multis.getParameter("name");  
         String category = multis.getParameter("category");  
         String addr_city = multis.getParameter("addr_city");  
         String addr_district = multis.getParameter("addr_district");  
         String addr_etc = multis.getParameter("addr_etc");  
         String rest_tel = multis.getParameter("rest_tel");  
         String runtime = multis.getParameter("runtime");  
         String dayoff = multis.getParameter("dayoff"); 
         %>  
         
          <%=file_out %>
          <%=file_in %>
          <%=file_menu %>
          <%=name %>
          <%=category %>
          <%=addr_city %>
          <%=addr_district %>
          <%=rest_tel %>
          <%=runtime %>
          <%=dayoff %>
          <%=convenience %>
          <%=descriptions %>
 
           <img src="./upload/<%=file_out%>"><br>	
          
          ${file_out }
          <br>
     

 
	<h1>ownerChangeForm3.jsp</h1>
	
	<fieldset>
		<legend>step3</legend>
		<form action="./ownerChangeForm4.on" method="post" enctype="multipart/form-data">
			1. <br>
			메뉴 이름 : <input type="text" name="name"> <br>
			메뉴 소개 : <input type="text" name="menu_descriptions"> <br>
			메뉴 가격 : <input type="text" name="price"> <br>
			<input type="text"> 
			<input type="button" value="첨부파일"> <br>
			<br>
			2. <br>
			메뉴 이름 : <input type="text" name="name"> <br>
			메뉴 소개 : <input type="text" name="menu_descriptions"> <br>
			메뉴 가격 : <input type="text" name="price"> <br>
			<input type="text"> 
			<input type="button" value="첨부파일"> <br>
			<br>
			3. <br>
			메뉴 이름 : <input type="text" name="name"> <br>
			메뉴 소개 : <input type="text" name="menu_descriptions"> <br>
			메뉴 가격 : <input type="text" name="price"> <br>
			<input type="text"> 
			<input type="button" value="첨부파일"> <br>
			<br>
			<input type="hidden" name="dayoff" value="<%=dayoff %>">
		    <input type="hidden" name="runtime" value="<%=runtime %>">
	  	    <input type="hidden" name="category" value="<%=category %>">
		    <input type="hidden" name="addr_city" value="<%=addr_city %>">
		    <input type="hidden" name="addr_district" value="<%=addr_district %>">
		    <input type="hidden" name="addr_etc" value="<%=addr_etc %>">
		    <input type="hidden" name="rest_tel" value="<%=rest_tel %>">
		    <input type="hidden" name="descriptions" value="<%=descriptions %>">
		    <input type="hidden" name="file_out" value="<%=file_out %>">
		    <input type="hidden" name="file_in" value="<%=file_in %>">
		    <input type="hidden" name="file_menu" value="<%=file_menu %>">
			<input type="button" value="이전" onclick="location.href='ownerChangeForm2.on'">
			<input type="submit" value="다음" >
		</form>
	</fieldset>
</body>
</head>
</html>