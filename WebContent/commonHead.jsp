
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Solide: piece d'automobile</title>
<link rel="stylesheet" href="css_files/style.css" type="text/css">
<link rel="stylesheet" href="css_files/style3.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css_files/style2.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css_files/reset.css" type="text/css">
<link rel="stylesheet" href="css_files/reponse.css" type="text/css">
<link rel="stylesheet" href="css_files/superfish.css" type="text/css">
<link rel="stylesheet" href="css_files/formulaire.css" type="text/css">
<link rel="stylesheet" href="css_files/reset1.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css_files/text1.css" type="text/css"
	media="all">
<link rel="stylesheet" href="css_files/last.css" type="text/css"
	media="all">
<!-- 	 <link rel="stylesheet" href="css_files/footer.css"> -->
<script src='js_files/jquery.min.js'></script>
<script src="js_files/translate.js"></script>
<script src="js_files/script.js"></script>
</head>
<body onload="load()">
	<!--header menu-->
	<!-- <form action="ChangeLangServlet" method="post"> -->
	<div class="canvas gu9" style="background-color: #e6f7ff;">

		<div class="row">
			<div class="col gu1"></div>
			<div class="col gu2">
				<div class="headerlink">
					<span> <a class="link" href="Apropos.jsp"><label
							data-tag="aPropos"></label></a> <!-- 							&nbsp;&nbsp;&nbsp;&nbsp; -->
						<br> <a class="link" href="QuiSommesNous.jsp"><label
							data-tag="whoAreWe"></label></a> <!-- 						&nbsp;&nbsp;&nbsp;&nbsp;  -->
						<br><br> <img src="images/call_person.png" alt="" width="30%">
					</span>
				</div>
			</div>
			<div class="col gu1">
				<!-- 					&nbsp;&nbsp;&nbsp;&nbsp;  -->
				<a href="index.jsp"><img
					src="images/maroc.jpg" onclick="setLanguage('ar')" width="30%"></a>

				<a href="index.jsp"><img
					src="images/frensh.jpg"  onclick="setLanguage('fr')" width="30%"></a>
					
						
			</div>
			<div class="col gu2">
				<div class="headerlink">
					<img src="images/solideLogo.jpg" width="60%">
				</div>
			</div>
			<div class="col gu1">
				<div class="headerlink">
					<%
						if (request.getSession().getAttribute("loggedInUser") == null) {
					%>
					<span class="spancenter"> <a class="link" href="login.jsp"><label
							data-tag="connection"></label></a> <!-- 							&nbsp;&nbsp;&nbsp;&nbsp; -->
						<br> <a class="link" href="register.jsp"><label
							data-tag="registration"></label></a>
					</span>
					<%
						} else {
					%>
					<span class="spanright"><%=request.getSession().getAttribute("loggedInUser")%>
						<form action="LogOutServlet" method="post">
							<input type="image" src="images/deconnection.png" title=""
								alt="Submit" width="40%">
						</form> &nbsp;&nbsp;
						<form action="MyReservedArticlesServlet" method="post">
							<input type="image" src="images/shopcart.jpg" alt="Submit"
								width="40%">
						</form> </span>
					<%
						}
					%>
				</div>
			</div>
			<div class="col gu1"></div>

		</div>
		<!-- end header annonce-->
		<div class="row" style="z-index: 999;">
			<div class="col gu1">&nbsp;</div>
			<div class="col gu6">
				<a href="index.jsp"> <span
					style="font-size: 35px; letter-spacing: normal; position: relative; top: 0px; text-align: center;"
					data-tag="whatWeDo"></span><br> <span
					style="font-size: 20px; letter-spacing: normal; position: relative; top: 0px; text-align: center;"
					data-tag="overTheTime"></span><br> <br>
				</a>
				<!-- 				<span -->
				<!-- 					style="font-size: 35px; letter-spacing: normal; position: relative; top: 0px; text-align: center;"> -->
				<!-- 					<marquee behavior="alternate" onmouseover="stop()" -->
				<!-- 						onmouseout="start()"> -->
				<!-- 						<img src="images/aile.jpg" alt="images/carrosserie.jpg"> <img -->
				<!-- 							src="images/pare choc.jpg" alt="images/carrosserie.jpg"> <img -->
				<!-- 							src="images/porte.jpg" alt="images/carrosserie.jpg"> <img -->
				<!-- 							src="images/capot.jpg" alt="images/carrosserie.jpg"> <img -->
				<!-- 							src="images/pare brise.jpg" alt="images/carrosserie.jpg"> <img -->
				<!-- 							src="images/vitre.jpg" alt="images/carrosserie.jpg"> <img -->
				<!-- 		                    src="images/poignee.jpg" alt="images/carrosserie.jpg"> -->

				<!-- 					</marquee> -->
				<!-- 				</span> -->
				<div class="col gu2">&nbsp;</div>
			</div>
		</div>

		<br> <br>
		
		<!-- 	</form>	 -->
</html>