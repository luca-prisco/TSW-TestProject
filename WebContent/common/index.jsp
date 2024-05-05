<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/index.css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" />
</head>
<body>
	
	<jsp:include page="/include/header.jsp"/>

	<div class="content">
		<!-- Slider container -->
		<div class="slideshow-container">
			<div class="mySlides">
				<img src="${pageContext.request.contextPath}/img/IPhone15ProBianco.png" alt="prova" style="width: 55%">
				<div class="info__prodotto">
					<h1 style="margin: 20px 0 10px 0;">MacBook Air 13"</h1>
					<div class="descrizione__prod">
						<p>Portabilità senza compromessi e prestazioni eccezionali: il
							MacBook Air 13" è il compagno perfetto per chi cerca stile e
							potenza in un unico dispositivo.</p>
					</div>
					<a href="HomeSelection?action=signup" style="margin-top: 20px;"><button>Scopri
							di più</button></a>
				</div>
			</div>

			<div class="mySlides">
				<img src="${pageContext.request.contextPath}/img/IPhone15ProBlu.png" alt="prova" style="width: 55%">
				<div class="info__prodotto">
					<div class="nome__prod"></div>
					<div class="descrizione__prod"></div>
					<a href="HomeSelection?action=signup"><button>Scopri
							di più</button></a>
				</div>
			</div>

			<div class="mySlides">
				<img src="${pageContext.request.contextPath}/img/IPhone15ProTitanio.png" alt="prova" style="width: 55%">
				<div class="info__prodotto">
					<div class="nome__prod"></div>
					<div class="descrizione__prod"></div>
					<a href="HomeSelection?action=signup"><button>Scopri di più</button></a>
				</div>
			</div>

			<!-- The dots/circles -->
			<div style="text-align: center">
				<span class="dot" onclick="currentSlide(1)"></span> 
				<span class="dot" onclick="currentSlide(2)"></span> 
				<span class="dot" onclick="currentSlide(3)"></span>
			</div>
		</div>

		<div class="bottom-container">
			<h1>I più venduti</h1>
			<div class="product-cards-container">
				<div class="product-card">
					<img src="${pageContext.request.contextPath}/img/IPhone15ProBlu.png" alt="prova" style="width: 100%">
					<div class="product-details">
						<h3 style="margin: 0 0 15px 20px;">Macbook Air 13"</h3>
						<div class="product-price-buy">
							<h3>1.399</h3>
							<a href="HomeSelection?action=signup"><button>Acquista</button></a>
						</div>
					</div>
				</div>
				<div class="product-card">
					<img src="${pageContext.request.contextPath}/img/IPhone15ProTitanio.png" alt="prova" style="width: 100%">
					<div class="product-details">
						<h3 style="margin: 0 0 15px 20px;">Macbook Air 13"</h3>
						<div class="product-price-buy">
							<h3>1.399</h3>
							<a href="HomeSelection?action=signup"><button>Acquista</button></a>
						</div>
					</div>
				</div>
				<div class="product-card">
					<img src="${pageContext.request.contextPath}/img/IPhone15ProNero.png" alt="prova" style="width: 100%">
					<div class="product-details">
						<h3 style="margin: 0 0 15px 20px;">Macbook Air 13"</h3>
						<div class="product-price-buy">
							<h3>1.399</h3>
							<a href="HomeSelection?action=signup"><button>Acquista</button></a>
						</div>
					</div>
				</div>
				<div class="product-card">
					<img src="${pageContext.request.contextPath}/img/IPhone15ProBianco.png" alt="prova" style="width: 100%">
					<div class="product-details">
						<h3 style="margin: 0 0 15px 20px;">Macbook Air 13"</h3>
						<div class="product-price-buy">
							<h3>1.399</h3>
							<a href="HomeSelection?action=signup"><button>Acquista</button></a>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script src="scripts/slider.js"></script>
</body>
</html>