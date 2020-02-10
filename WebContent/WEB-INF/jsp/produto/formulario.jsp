<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<!DOCTYPE html>
<html>
	<head>
		<script type="text/javascript" src='<c:url value="/js/jquery-1.9.0.js"/>' >
		</script>
		<script type="text/javascript" src='<c:url value="/js/jquery-ui-1.10.0.custom.js"/>'>	
		</script>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	</head>
	<body>
		<form action="<c:url value="/produto/adiciona"/>">
			Nome: <input name="produto.nome" /> <br>
			Descrição: <input name="produto.descricao" /><br>
			Preço: <input name="produto.preco" /> <br>
			Data de início de venda: <caelum:campoData id="dataInicioVenda" name="produto.dataInicioVenda" /><br>
			<input type="submit" /> <a href="lista">Retornar</a>
		</form>
	</body>
</html>