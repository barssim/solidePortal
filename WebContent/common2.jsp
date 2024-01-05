<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8" />
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
<script src='js_files/jquery.min.js'></script>

<!--common core-->
<%@include file="commonHead.jsp"%>

</head>
<body>
			<div class="row">
			<div class="col gu1"></div>
			<div class="col gu2">
	<br> <br> 
					<a class="link" href="NewArticle.jsp"><input type="submit" value="Inserer nouveau article"></a>
					<form action="MyArticlesServlet" method="post"> 
					<a class="link" href="myArticles.jsp"><input type="submit" value="Consulter vos offres"></a> 
					</form>
					<a class="link" href="profileUpdate.jsp"><input type="submit" value="Editer votre profile"></a>
<br>
	<div class="col gu1">
<!-- 	<br> -->
<!-- 	<br> -->
<!-- 	<br> -->
<!-- 	<div class="row"> -->
<!-- 		<div class="col gu2">&nbsp;</div> -->
<!-- 		<div class="loginform col gu5"> -->
		   		   
<%-- 				<h3><%=request.getAttribute("Message")%></h3> --%>
	
	
<!-- 	</div> -->
<br>
	<br>
</html>