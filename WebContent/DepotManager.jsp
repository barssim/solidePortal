<!DOCTYPE html>
<html>
<!--common core-->
<%@include file="commonHead.jsp"%>
<!--end common core -->
<br>
<br>

<!-- 					<a class="link" href="NewArticle.jsp"><input type="submit" value="Inserer nouveau article"></a> -->
<form action="ReservedArticlesServlet" method="post">
	<a class="link" href="reservedArticles.jsp"><input type="submit"
		value="Consulter les Articles reservé"></a>
</form>
<form action="http://localhost:8080/articleDiscover/articles"
	method="POST">
	<label> ArticleNo: <input name="artNo" placeholder="Article No" />
	</label> <input type="submit" value="Submit" />
</form>

<a class="link" href="profileUpdate.jsp"><input type="submit"
	value="Editer votre profile"></a>
<br>

<!-- 	<br> -->
<!-- 	<br> -->
<!-- 	<br> -->
<!-- 	<div class="row"> -->
<!-- 		<div class="col gu2">&nbsp;</div> -->
<!-- 		<div class="loginform col gu5"> -->

<%-- 				<h3><%=request.getAttribute("Message")%></h3> --%>

<br>
<br>
<jsp:include page="footer.jsp" />
<!-- 	</div> -->
</html>