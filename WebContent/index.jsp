<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<!--common core-->
<%@include file="commonHead.jsp"%>

<br>
<br>


<div class="row" style="z-index: 999;">
	<div class="col gu1">&nbsp;</div>
	<div class="col gu6">
		<div class="backp">
			<!-- 		<div class="col gu6"> -->
			<span> style="font-size: 35px; letter-spacing: normal;
				position: relative; top: 0px; text-align: center;"> <marquee
					behavior="alternate" onmouseover="stop()" onmouseout="start()">
					<img src="images/aile.jpg" alt="images/carrosserie.jpg"> <img
						src="images/pare choc.jpg" alt="images/carrosserie.jpg"> <img
						src="images/porte.jpg" alt="images/carrosserie.jpg"> <img
						src="images/capot.jpg" alt="images/carrosserie.jpg"> <img
						src="images/pare brise.jpg" alt="images/carrosserie.jpg"> <img
						src="images/vitre.jpg" alt="images/carrosserie.jpg"> <img
						src="images/poignee.jpg" alt="images/carrosserie.jpg">

				</marquee>
			</span>
			<br>
			 <br> <a href="commonSearchNew.jsp" title="chercher Pièce Neuve"
				style="font-size: 16px; letter-spacing: 2px; background-color: #99ddff;">
				<span style="position: relative; top: 10px; color: black;"
				data-tag="search"></span><br> <span
				style="font-size: 25px; letter-spacing: normal; position: relative; top: 0px; color: black;"
				data-tag="newPiece"></span>
			</a> <a href="commonSearchOld.jsp" title="chercher Pièce d'Occasion"
				style="margin-right: 0px; font-size: 16px; background-color: #99ddff;">
				<span style="position: relative; top: 10px; color: black;"
				data-tag="search"></span><br> <span
				style="font-size: 25px; letter-spacing: 1px; position: relative; top: 0px; color: black;"
				data-tag="usedPiece"></span>
			</a> <br class="clear">
		</div>
	</div>
</div>

<br> <br> 
<jsp:include page="footer.jsp" />
</div>

<!--end common core -->


</div>
</body>
</html>