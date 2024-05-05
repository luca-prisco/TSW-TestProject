<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="model.Prodotto.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
Collection<?> prodotti = (Collection<?>) request.getAttribute("prodotti");
if (prodotti == null)
	response.sendRedirect(request.getContextPath() + "/common/Catalogo");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Catalogo</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/catalogo.css" />
</head>
<body>
	<jsp:include page="/include/header.jsp" />

	<div class="filters"></div>


	<div class="product-cards-container">
		<c:forEach var="prodotto" items="${prodotti}">
			<div class="product-card">
				<img src="img/Fronte.png" alt="prova" style="width: 100%">
				<div class="product-details">
					<h3 style="margin: 0 0 15px 20px;">${prodotto.nomeProdotto}</h3>
					<div class="product-price-buy">
						<h3>${prodotto.prezzo}</h3>
						<a href="HomeSelection?action=signup"><button>Acquista</button></a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>

</body>
</html>