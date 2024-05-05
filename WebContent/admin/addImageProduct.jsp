<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Prodotto.*" %>
<%@ page import="java.sql.*" %>

<% 
	ProdottoDAO prodottoDAO = new ProdottoDAO();	
	String idProdStr = request.getParameter("id1");
	String idSpecStr = request.getParameter("id2");
	Connection con = (Connection) getServletContext().getAttribute("connection");
	ProdottoBean prodotto = prodottoDAO.doRetrieveById(Integer.parseInt(idProdStr), Integer.parseInt(idSpecStr), con); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add image</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin/headerAdmin.css" />
</head>
<body>
	<%@ include file="/include/headerAdmin.jsp"%>
	
	<div class="content">
		<div class="product-detail">
			<h1><%= prodotto.getNomeProdotto() %></h1>
			<ul>
				<li><%= prodotto.getNomeProdotto() %></li>
				<li><%= prodotto.getNomeProdotto() %></li>
				<li><%= prodotto.getNomeProdotto() %></li>
				<li><%= prodotto.getNomeProdotto() %></li>
				<li><%= prodotto.getNomeProdotto() %></li>
				<li><%= prodotto.getNomeProdotto() %></li>
			</ul>
		</div>
		<div class="product-image"></div>
	</div>

</body>
</html>