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

	<h1>Lista de Cadastros</h1>
	<table width="870" border="0" id="filtros">
		<tr>
			<td width="30"><input id="input_sharp" type="text"
				onKeyUp="filter(this, 'lista', '0')"></td>
			<td width="300"><input id="input_nome" type="text"
				onKeyUp="filter(this, 'lista', '1')"></td>
			<td width="240"><input id="input_email" type="text"
				onKeyUp="filter(this, 'lista', '2')"></td>
			<td width="300"><input id="input_end" type="text"
				onKeyUp="filter(this, 'lista', '3')"></td>
		</tr>
	</table>

	<table cellpadding="0" width="870" cellspacing="0" id="lista">
		<tr>
			<th width="30">#</th>
			<th width="300" align="left">NOME</th>
			<th width="240" align="left">E-MAIL</th>
			<th width="300" align="left">ENDERECO</th>
		</tr>
		<c:forEach items="${terceiros}" var="terceiro" varStatus="status">
			<tr>
				<td><c:out value="${status.count}" /></td>
				<td><a href="<c:url value="/mvc/terceiros/"/><c:out value="${terceiro.id}" />"><c:out value="${terceiro.nome}" /></a></td>
				<td><c:out value="${terceiro.email}" /></td>
				<td><c:out value="${terceiro.endereco.enderecoCompleto}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
