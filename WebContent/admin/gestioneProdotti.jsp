<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<%@ page import="java.util.*" %>
<%@ page import="model.Prodotto.*" %>


<%
Collection<?> prodotti = (Collection<?>) request.getAttribute("prodotti");
if(prodotti == null) 
	response.sendRedirect(request.getContextPath() + "/Catalogo");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>DeviceDepot - Prodotti</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/admin/gestioneProdotti.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
	<jsp:include page="/include/headerAdmin.jsp"/>
	<div class="content">
		<div class="row-container">
			<h1>Luca Prisco</h1>
			<p id="datetime" style="margin: 30px;">
				<%=new java.util.Date()%></p>
		</div>
		<div class="row-container">
			<a href="${pageContext.request.contextPath}/admin/aggiungiProdotto.jsp"><button>Aggiungi prodotto</button></a> 
			<input id="myInput" type="text" placeholder="Search..">
			<div class="filters">
				<a href=""><button>Brand</button></a> <a href=""><button>Categoria</button></a>
			</div>
		</div>
		<div class="prodotti__storage">
			<c:choose>
				<c:when test="${prodotti.size() eq 0}">
					<h1>Nessun prodotto disponibile</h1>
				</c:when>
				<c:otherwise>
					<table>
						<thead>
							<tr>
								<th>Nome</th>
								<th>Id Prodotto</th>
								<th>Memoria HD</th>
								<th>Memoria RAM</th>
							</tr>
						</thead>
						<tbody id="myTable">
							<c:forEach var="i" items="${prodotti}">
								<tr>
									<td>${i.nomeProdotto}</td>
									<td>${i.IDProdotto}</td>
									<td>${i.hdd}</td>
									<td>${i.ram}</td>
									<td>${i.categoria}</td>
									<td style="display:flex; flex-direction: row;">
										<c:choose>
											<c:when test="${empty i.image}">
												<form action="UploadPhoto" enctype="multipart/form-data" method="post">
													<input type="hidden" name="id1" value="${i.IDProdotto}">
													<input type="hidden" name="id2" value="${i.IDSpecifiche}">
													<input class="file" type="file" name="talkPhoto" value="" maxlength="255" placeholder=""> <br> 
													<input type="submit" value="Upload">
												</form>
											</c:when>
											<c:otherwise>
												<img src="./getPicture?id1=${i.IDProdotto}&id2=${i.IDSpecifiche}"
													alt="Immagine" style="width: 70px;">
											</c:otherwise>
										</c:choose>
										<form method="get"
											action="GestioneCatalogo?action=updateProduct">
											<input type="hidden" name="id" value="${i.IDProdotto}">
											<button type="submit">Edit</button>
										</form>
										<form method="get"
											action="<%=response.encodeURL("removeProduct")%>">
											<input type="hidden" name="id" value="${i.IDProdotto}">
											<button type="submit">Delete</button>
										</form>
									</td>
								</tr>
							</c:forEach>
							
							
						</tbody>
					</table>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
<script>
	$(document).ready(
			function() {
				$("#myInput").on(
						"keyup",
						function() {
							var value = $(this).val().toLowerCase();
							$("#myTable tr").filter(
									function() {
										$(this).toggle(
												$(this).text().toLowerCase()
														.indexOf(value) > -1)
									});
						});
			});
</script>
</html>