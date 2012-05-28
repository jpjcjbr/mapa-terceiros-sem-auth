<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>VPSA Google Locator</title>
<link href="<c:url value="/assets/stylesheets/style.css"/>" media="all" rel="stylesheet" type="text/css" />
</head>
<body>
	<img alt="Img_inicial" class="imgInicial" src="<c:url value="/assets/images/img_inicial.png"/>" />

	<p id="SeusCads">Seus cadastros agora geolocalizados!</p>

	<a href="<c:url value="/mvc/terceiros"/>"><img alt="Clique_aqui" class="cliqueAqui"
		onmouseout="this.src='<c:url value="/assets/images/clique_aqui.png"/>'"
		onmouseover="this.src='<c:url value="/assets/images/clique_aqui_out.png"/>'"
		src="<c:url value="/assets/images/clique_aqui.png"/>" /></a>
</body>
</html>
