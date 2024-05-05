<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Product</title>
</head>
<body>
	<form id="addProduct" method="post" action="${pageContext.request.contextPath}/admin/AggiungiProdotto">
	    <label for="nomeProdotto">Nome prodotto</label> 
		<input id="nomeProdotto" type="text"name="nomeProdotto"><br> 
		<label for="brand">Brand</label> 
		<input id="brand" type="text"name="brand"><br> 
		<label for="categoria">Categoria</label> 
		<input id="categoria" type="text"name="categoria"><br> 
		<label for="descrizione">Descrizione</label>
		<textarea id="descrizione" name="descrizione"></textarea><br>
		<label for="dettagli">Dettagli</label>
		<input id="dettagli" type="text" name="dettagli"><br>
		<label for="colore">Colore</label>
		<input id="colore" type="text" name="colore"><br>
		<label for="hdd">Memoria hdd</label>
		<input id="hdd" type="number" name="hdd"><br>
		<label for="ram">Memoria ram</label>
		<input id="ram" type="number" name="ram"><br> 
		<label for="quantita">Quantità</label>
		<input id="quantita" type="number" name="quantita"><br>
		<label for="prezzo">Prezzo</label>
		<input id="prezzo" type="text" name="prezzo"><br>
		
	    <input id="add" type="submit" value="Aggiungi prodotto">
	</form>
	
	<form id="addPhoto" action="UploadPhoto" enctype="multipart/form-data" method="post">
		 <input class="file" type="file" name="productImage" value="" maxlength="255">
	</form> 


</body>
</html>