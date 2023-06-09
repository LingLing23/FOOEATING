<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<!-- css파일 -->
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">
<link rel="stylesheet" href="assets/css/templatemo-klassy-cafe.css">
<link rel="stylesheet" href="assets/css/owl-carousel.css">
<link rel="stylesheet" href="assets/css/lightbox.css">
<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/question.css">


<title>가게 관리</title>

<link href="./css/sideMenu.css" rel="stylesheet">

<script type="text/javascript">
	function rest_onoff(onoff, rest_id) {
		let popupX = (window.screen.width / 2) - (500 / 2);
		let popupY= (window.screen.height / 2) - (300 / 2);
		
		window.open("RestOnOffAction.on?on_off=" + onoff + "&rest_id=" + rest_id, "", 
		"width=500,height=400,left="+ popupX + ',top='+ popupY + ',screenX='+ popupX + 
		 ',screenY= '+ popupY);
	}
</script>

</head>
<body>

<!-- ***** Preloader Start ***** --> <!-- !!가운데 로딩 점!! -->
<div id="preloader">
    <div class="jumper">
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>
<!-- ***** Preloader End ***** -->


<!-- ***** Header Area Start ***** -->
	<jsp:include page="../inc/headerDiv.jsp" />
<!-- ***** Header Area End ***** -->


<!-- sidemenu -->
<div style="float: left">
	<jsp:include page="../inc/sideMenuOwner.jsp" />
</div>
<!-- sidemenu -->


<!-- main -->
<main>
<div id="top">
<div id="category" style="margin: 85px 410px 0 410px; min-width: 850px;">
	<h2>나의 가게 정보</h2>
	
	<fieldset>
	<div style="height:240px; margin-right: 35%;">
	
	   <div style="text-align: right;" >
 	    <a href="./RestaurantUpdateProAction.on" style="text-decoration: none; color: #ff4742;"><b>수정</b></a>
		<a href="./RestaurantDeleteAction.on" style="text-decoration: none; color: #ff4742;"><b>삭제</b></a><br>
   	   </div>
   	   <div style="float: right;">
   	    <img src="./upload/${restal.outfile}" width="230px">
   	   </div>
		<div style="margin-left: 1px">
		
		<table>
        	
			<tr>
			<td><b>상&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;호</b> : ${restal.name}</td>
			</tr>
			<tr>
			<td><b>가게 업종</b> : ${restal.category}	</td>
			</tr>
			<tr>
			<td><b>가게 주소</b> : ${restal.addr_city}	</td>
			</tr>
			<tr>
			<td><b>가게 번호</b> : ${restal.rest_tel }	</td>
			</tr>
			<tr>
			<td><b>영업 시간</b> : ${restal.runtime }	</td>
			</tr>
			<tr>
			<td><b>정기 휴무</b> : ${restal.dayoff }	</td>
			</tr>
			<tr>
			<td ></td>
			</tr>
			
			<tr>
			<td><b>가게 on/off</b> <br>
			  <c:if test="${restal.status == 1}">
				<c:if test="${restal.on_off == true}">
					<span style="color: #0064FF;"><b>&lt;open&gt;</b></span> <br>
					<button class="btn-2" onclick="rest_onoff(${restal.on_off}, '${restal.rest_id}');">
						가게 닫기
					</button>
				</c:if>
				<c:if test="${restal.on_off == false}">
					<span style="color: #FF0000;"><b>&lt;closed&gt;</b></span> <br>
					<button class="btn-2" onclick="rest_onoff(${restal.on_off}, '${restal.rest_id}');">
						가게 열기
					</button>
				</c:if>
			  </c:if>
			  <c:if test="${restal.status == 0}">
			  	&lt;현재 가게는 대기 중이므로, 가게를 열 수 없습니다!&gt;
			  </c:if>
			</td>
			</tr>
		</table>
	    <br>
	  	
	  <form action ="./OwnerNoticeAction.on " method="post">
		<textarea name="rest_notice" rows="2"placeholder="공지사항" style="width:100%"></textarea>
		<input type="hidden" name="rest_id" value="${restal.rest_id }" >
		<input class="btn-2" type="submit" value="저장" style="margin-bottom: 2px; float: right;">
	  </form>
	</div>
	
	</div>
	</fieldset> <!-- 영역 구분하려고 일단 넣어놓음 나중에 필요없으면 뺄거임 -->
	</div>
	</div>
</main>
<!-- main -->


<!-- ***** Footer Start ***** -->
	<jsp:include page="../inc/footerDiv.jsp" />
<!-- ***** Footer End ***** -->

<!-- jQuery -->
<script src="assets/js/jquery-2.1.0.min.js"></script>

<!-- Bootstrap -->
<script src="assets/js/popper.js"></script>
<script src="assets/js/bootstrap.min.js"></script>

<!-- Plugins -->
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/accordions.js"></script>
<script src="assets/js/datepicker.js"></script>
<script src="assets/js/scrollreveal.min.js"></script>
<script src="assets/js/waypoints.min.js"></script>
<script src="assets/js/jquery.counterup.min.js"></script>
<script src="assets/js/imgfix.min.js"></script> 
<script src="assets/js/slick.js"></script> 
<script src="assets/js/lightbox.js"></script> 
<script src="assets/js/isotope.js"></script> 

<!-- Global Init -->
<script src="assets/js/custom.js"></script>
<script>
    $(function() {
        var selectedClass = "";
        $("p").click(function(){
        selectedClass = $(this).attr("data-rel");
        $("#portfolio").fadeTo(50, 0.1);
            $("#portfolio div").not("."+selectedClass).fadeOut();
        setTimeout(function() {
          $("."+selectedClass).fadeIn();
          $("#portfolio").fadeTo(50, 1);
        }, 500);
            
        });
    });
</script>


</body>
</html>