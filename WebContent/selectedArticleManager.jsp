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
<html>
<head>
<!--common core-->
<%@include file="commonHead.jsp"%>
</head>
<body>

	<br>

	<div class="col gu2">&nbsp;</div>

	<br>
	<br>


	<!-- <form action="SelectedArticleServlet"  method="post" > -->


	<table border="1">
		<tr class="cell">

			<td width="20"></td>
			<td width="100"><img
				src=<%=request.getParameter("articleImg")%> alt="Image not found"
				onerror="this.src='images/carrosserie.jpg';" border=1 width="200"></img>

			</td>
			<td width="20"></td>

			<td width="600" style="vertical-align: top" width="800">
				<!--         <a class="link" href="selectedArticle.jsp" > --> <%--         <h2> <%=aBean.getArticleName()%></h2>         --%>
				<%--         <h2><%=aBean.getArticleDescription()%></h2>  </a>   --%>

				<span
				style="font-size: 25px; letter-spacing: normal; position: relative; top: 0px;"><b><%=request.getParameter("articleName")%></b></span>
				<br>
			<span
				style="font-size: 15px; letter-spacing: normal; position: relative; top: 0px;"><b>ArticleNo:
						<%=request.getParameter("articleNo")%></b></span><br> <br>
			<br>
			<br> <span
				style="font-size: 15px; letter-spacing: normal; position: relative; top: 0px;"><b><%=request.getParameter("articleDesc")%></b></span><br>



				<%--         <%=aBean.getArticleName()%> --%> <%--         <%=aBean.getArticleDescription()%> --%>

			</td>

			<td width="100" style="vertical-align: top"><h3><%=request.getParameter("articlePrice")%>
					DH
				</h3></td>
		</tr>


	</table>
	<br></br>
	<form action="RemoveReservationServlet" method="post">
		<%
		   String artNo = request.getParameter("articleNo");
		   session.setAttribute("articleNo", artNo);
		   %>
		<input type="submit" value="Supprimer la réservation">
	</form>
	<br>
	<!-- 		<form action="articleUpdate.jsp" method="post">  -->
	<input type="submit" value="Editer"
		onclick="location.href='articleUpdate.jsp?articleNo=<%=request.getParameter("articleNo")%>&articleName=<%=request.getParameter("articleName")%>&articleDesc=<%=request.getParameter("articleDesc")%>&articlePrice=<%=request.getParameter("articlePrice")%>'">
	<!-- 					</form> -->
	<br>
	<form action="MyReservedArticlesServlet" method="post">
		<a class="link" href="reservedArticles.jsp"><input type="submit"
			value="Retour au reservations"></a>
	</form>

	<br>
	<br>
	<jsp:include page="footer.jsp" />
</html>