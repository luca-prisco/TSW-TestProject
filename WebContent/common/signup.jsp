<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>SignUp</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/signup.css" />
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<script src="scripts/validateSignup.js"></script>

	<div class="content">
		<div class="signup-form">
			<h1>Registrazione</h1><br>
			<form id="formSignup" method="post" action="Signup">
				<label for="firstname">Nome</label>
				<input id="firstname "type="text" name="firstname" placeholder="Mario" onchange="validateFormElem(this, nameOrLastnamePattern, document.getElementById('errorName'), nameErrorMessage)">
				<span id="errorName"></span><br>
					
				<label for="lastname">Cognome</label>
				<input id="lastname" type="text" name="lastname" onchange="validateFormElem(this, nameOrLastnamePattern, document.getElementById('errorLastname'), lastnameErrorMessage)">
				<span id="errorLastname"></span><br>
					
				<label for="emailUtente">Email</label>
				<input id="emailUtente" type="text" name="emailUtente"><br>
				
				<label for="phone">Numero di telefono</label>
				<input id="phone" type="text" name="phone" onchange="validateFormElem(this, phonePattern, document.getElementById('errorPhone'), phoneErrorMessage)">
				<span id="errorPhone"></span><br>
					
				<label for="password">Password</label>
				<input id="password" type="password" name="password" placeholder="enter password" onchange="validateFormElem(this, )"><br>
				
				<input id="registrati" type="submit" value="Registrati">	
			</form>
		</div>
	</div>

</body>
</html>