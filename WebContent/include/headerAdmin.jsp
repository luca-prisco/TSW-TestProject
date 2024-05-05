<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/admin/headerAdmin.css" />
</head>
<body>
	<div class="header">
		<div class="logo">
			<img src="${pageContext.request.contextPath}/img/TechITEase.svg" alt="LOGO">
		</div>
		<div class="menu">
			<ul>
				<li><a href="${pageContext.request.contextPath}/admin/dashboard.jsp">Dashboard</a></li>
				<li><a href="${pageContext.request.contextPath}/admin/gestioneProdotti.jsp">Prodotti</a></li>
				<li><a href="">Ordini</a></li>
				<li><a href="">Admins</a></li>
				<li><a href="">Logout</a></li>
			</ul>
		</div>
	</div>	
</body>
</html>