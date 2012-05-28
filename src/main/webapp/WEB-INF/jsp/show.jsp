<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<title>VPSA Google Locator</title>
<link href="<c:url value="/assets/stylesheets/style.css"/>" media="all" rel="stylesheet" type="text/css" />
<script src="<c:url value="/assets/javascripts/filtro.js"/>" type="text/javascript"></script>
</head>
<body>
	<div id="topBar">
		<a href="<c:url value="/"/>"><img src="<c:url value="/assets/images/home.png"/>" /></a> <a
			href="<c:url value="/mvc/terceiros"/>"><img src="<c:url value="/assets/images/search_1.png"/>" /></a> <a
			href="<c:url value="/"/>"><img src="<c:url value="/assets/images/help.png"/>" /></a> <a href="<c:url value="/"/>"><img
			src="<c:url value="/assets/images/logo_pequeno.png"/>" class="logo" /></a>
	</div>

	<h1><c:out value="${terceiro.nome}" /></h1>
	<p><img src="<c:url value="/assets/images/note2.png"/>" class="noteImg"/><c:out value="${endereco_formatado}" /></p>
	<p><img src="<c:url value="/assets/images/mail.png"/>" class="mailImg"/><a href="mailto:<c:out value="${terceiro.email}" />"><c:out value="${terceiro.email}" /></a></p>
	
	<h1>Mapa</h1>
	<div id="ImgMapa">
		<img src="http://maps.google.com/maps/api/staticmap?size=450x300&sensor=false&zoom=16&markers=${latitude}%2C${longitude}" %>
	</div>
</body>
</html>
