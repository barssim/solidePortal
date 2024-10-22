<%@page
	import="com.sun.xml.internal.bind.v2.runtime.reflect.ListIterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.ArrayList"%>
<%@page import="models.ArticleBean"%>
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
<script src='js_files/jquery.min.js'></script>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

#myImg {
	border-radius: 5px;
	cursor: pointer;
	transition: 0.3s;
}

#myImg:hover {
	opacity: 0.7;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	padding-top: 100px; /* Location of the box */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
	margin: auto;
	display: block;
	width: 80%;
	max-width: 700px;
}

/* Caption of Modal Image */
#caption {
	margin: auto;
	display: block;
	width: 80%;
	max-width: 700px;
	text-align: center;
	color: #ccc;
	padding: 10px 0;
	height: 150px;
}

/* Add Animation */
.modal-content, #caption {
	-webkit-animation-name: zoom;
	-webkit-animation-duration: 0.6s;
	animation-name: zoom;
	animation-duration: 0.6s;
}

@
-webkit-keyframes zoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes zoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* The Close Button */
.close {
	position: absolute;
	top: 15px;
	right: 35px;
	color: #f1f1f1;
	font-size: 40px;
	font-weight: bold;
	transition: 0.3s;
}

.close:hover, .close:focus {
	color: #bbb;
	text-decoration: none;
	cursor: pointer;
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px) {
	.modal-content {
		width: 100%;
	}
}
</style>
<!--common core-->
<%@include file="commonHead.jsp"%>
<html>

<body>


	<br>
	<br>


	<!-- <form action="SelectedArticleServlet"  method="post" > -->


	<table border="1">
		<tr class="cell">
			<td width="600" style="vertical-align: top" width="800"><span
				style="font-size: 25px; letter-spacing: normal; position: relative; top: 0px;"><b><%=request.getParameter("articleName")%></b></span>
				<br> <span
				style="font-size: 15px; letter-spacing: normal; position: relative; top: 0px;"><b>ArticleNo:
						<%=request.getParameter("articleNo")%></b></span> <br> <br> <span
				style="font-size: 15px; letter-spacing: normal; position: relative; top: 0px;"><b><%=request.getParameter("articleDesc")%></b></span>
				<br>
			<br>

				<h3><%=request.getParameter("articlePrice")%>
					DH
				</h3></td>
		</tr>

		<tr class="row">

			<td width="20"></td>
			<td width="100"><img id="myImg"
				src="<%=request.getParameter("articleImg")%>"
				onerror="this.src='images/carrosserie.jpg';" border=10 width="200">
			</td>
			<td width="100" border=10><img id="myImg2"
				src="<%=request.getParameter("articleImg2")%>"
				onerror="this.src='images/carrosserie.jpg';" border=10 width="200">
			</td>
			<td width="100" border=10><img id="myImg3"
				src="<%=request.getParameter("articleImg3")%>"
				onerror="this.src='images/carrosserie.jpg';" border=10 width="200">
			</td>
			<td width="20"></td>


		</tr>
	</table>
	<div id='myDivId'></div>


	<br>
	<br>
	<form action="RemoveArticleServlet" method="post">
		<%
		   String artNo = request.getParameter("articleNo");
		   session.setAttribute("articleNo", artNo);
		   %>
		<input type="submit" value="Supprimer">
	</form>
	<br>
	<input type="submit" value="Editer"
		onclick="location.href='articleUpdate.jsp?articleNo=<%=request.getParameter("articleNo")%>&articleName=<%=request.getParameter("articleName")%>&articleDesc=<%=request.getParameter("articleDesc")%>&articlePrice=<%=request.getParameter("articlePrice")%>&articleCategory=<%=request.getParameter("articleCategory")%>&articleOldNew=<%=request.getParameter("articleOldNew")%>'">
	<br>
	<br>
	<br>
	<br>







	<!-- The Modal -->
	<div id="myModal" class="modal">
		<span class="close">&times;</span> <img class="modal-content"
			id="img01">
		<div id="caption"></div>
	</div>

	<script>
		// Get the modal
		var modal = document.getElementById('myModal');

		// Get the image and insert it inside the modal - use its "alt" text as a caption
		var img = document.getElementById('myImg');
		var img2 = document.getElementById('myImg2');
		var img3 = document.getElementById('myImg3');
		var modalImg = document.getElementById("img01");
		var captionText = document.getElementById("caption");
		img.onclick = function() {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img2.onclick = function() {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}
		img3.onclick = function() {
			modal.style.display = "block";
			modalImg.src = this.src;
			captionText.innerHTML = this.alt;
		}

		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}
	</script>
	<br>
	<br>
	<jsp:include page="footer.jsp" />
</body>
</html>