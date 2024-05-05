<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="model.Utente.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/header.css" />
</head>
<body>
	<div class="header">
		<div class="logo">
			<img src="${pageContext.request.contextPath}/img/TechITEase.svg" alt="LOGO">
		</div>
		<div class="menu">
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/common/index.jsp">Home</a></li>
				<li><a
					href="${pageContext.request.contextPath}/Catalogo">Catalogo</a></li>
				<li><a href="HomeSelection?action=aboutus">Chi siamo</a></li>
			</ul>
		</div>

		<div class="account">
			<div class="search">
				<input type="text" placeholder="Search">
			</div>

			<% 
			UtenteBean utente = (UtenteBean) session.getAttribute("utente");
			if(utente != null) {%>

				<div class="account">
					<a href=""><button>${utente.nome}</button></a>
				</div>
				<div class="logout">
					<a href=""><button>LogOut</button></a>
				</div>
				<div class="cart">
					<a href="HomeSelection?action=cart"><button><img src="img/icon/cart.png" alt="cart"></button></a>
				</div>
			<%}
			else {%>
				<div class="login">
					<a href="${pageContext.request.contextPath}/common/login.jsp"><button>LogIn</button></a>
				</div>
				<div class="signin">
					<a href="${pageContext.request.contextPath}/common/signup.jsp"><button>SignUp</button></a>
				</div>
				<div class="cart">
					<a href="HomeSelection?action=cart"><button>
							<img src="img/icon/cart.png" alt="cart">
						</button></a>
			<%}%>
			</div>
		</div>
	</div>
</body>
</html>