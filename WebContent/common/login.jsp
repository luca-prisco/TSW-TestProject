<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login.css" />
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<script src="scripts/validateSignup.js"></script>

	<div class="content">
		<div class="login-form">
			<h1>Login</h1><br>
			<form id="formLogin" method="post" action="${pageContext.request.contextPath}/common/Login">
				<label for="emailUtente">Email</label>
				<input id="emailUtente" type="text" name="emailUtente"><br>
					
				<label for="password">Password</label>
				<input id="password" type="password" name="password" placeholder="enter password" onchange="validateFormElem(this, )"><br>
				
				<input id="login" type="submit" value="Login">	
			</form>
		</div>
	</div>

</body>
</html>