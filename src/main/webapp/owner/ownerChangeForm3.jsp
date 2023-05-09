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
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("UTF-8");
	   
	%>
<%-- 	 <jsp:useBean id="ow1" class="com.fooeating.javabean.JavaBeanpt1" />
	 <jsp:setProperty property="*" name="ow1"/> 
	 <jsp:useBean id="ow2" class="com.fooeating.javabean.JavaBeanpt2" />
	 <jsp:setProperty property="*" name="ow2"/>  --%>
	  
	  <!-- 정보 넘어오는지 확인 -->
	  <!-- 정보 넘어오는지 확인 -->
     <% 
     String convenience = "";
     String[] conveniences = request.getParameterValues("convenience");
       if(conveniences!=null){
    	   for(int i = 0 ; i<conveniences.length; i++){
    		   if(conveniences.length-1 == i){
    			   convenience+=conveniences[i];
    		   }else{
    		   convenience+=conveniences[i]+",";    			   
    		   }   		   
    	   }
       }
     %>
      
         <%
         // 업로드된 파일이 저장될 공간 => upload 폴더생성
         String uploadPath = request.getRealPath("/upload");
      //   System.out.println(uploadPath);
         // -> 톰캣에 저장되는 경로
       
         
         // 업로드 할 파일의 크기 10mb
         int maxSize = 10 * 1024 * 1024;
         
         //  파일 업로드
         MultipartRequest multi = new MultipartRequest(
        		 request,
        		 uploadPath,
        		 maxSize,
        		 "UTF-8",
        		 new DefaultFileRenamePolicy()
        		 );
         System.out.println("MultipartRequest 객체 생성-파일 업로드 성공!");
         
          // 업로드 된 정보를 저장(DB)
          // multipart/form-data form 태그 이므로 일반적인 방법으로는 정보를 못가져옴
          // 작성자
          //String name = request.getParameter("name");
  
          // 파일
          // String file = request.getParameter("file");
          // String file = multi.getParameter("file");
             String file_out = multi.getOriginalFileName("file_out");
           
         %>
         <img src="D://새 폴더//workspace_jsp7//.metadata//.plugins//org.eclipse.wst.server.core//tmp0//wtpwebapps//FOOEATING//upload" alt="flower.jpg" />
        <%
       /*  ImageIcon mario = new ImageIcon("D://새 폴더//workspace_jsp7//FOOEATING//src//main//webapp//uploadimg"); 
        JLabel lblOne;
        lblOne = new JLabel("ONE", mario ,SwingConstants.CENTER); */
        %>
        
          <br>
     
     <%=convenience %>
   	
    <jsp:useBean id="ow2" class="com.fooeating.javabean.JavaBeanpt2" scope="session"/>
	<jsp:setProperty property="*" name="ow2"/> 
    ${ow1 }
    <%=ow2 %> 
	<h1>ownerChangeForm3.jsp</h1>
	
	<fieldset>
		<legend>step3</legend>
		<form action="./ownerChangeForm4.on" method="post">
			1. <br>
			메뉴 이름 : <input type="text" name="name"> <br>
			메뉴 소개 : <input type="text" name="descriptions"> <br>
			메뉴 가격 : <input type="text" name="price"> <br>
			<input type="text"> 
			<input type="button" value="첨부파일"> <br>
			<br>
			2. <br>
			메뉴 이름 : <input type="text" name="name"> <br>
			메뉴 소개 : <input type="text" name="descriptions"> <br>
			메뉴 가격 : <input type="text" name="price"> <br>
			<input type="text"> 
			<input type="button" value="첨부파일"> <br>
			<br>
			3. <br>
			메뉴 이름 : <input type="text" name="name"> <br>
			메뉴 소개 : <input type="text" name="descriptions"> <br>
			메뉴 가격 : <input type="text" name="price"> <br>
			<input type="text"> 
			<input type="button" value="첨부파일"> <br>
			<br>
			<input type="button" value="이전" onclick="location.href='ownerChangeForm2.on'">
			<input type="submit" value="다음" >
		</form>
	</fieldset>
</body>
</html>