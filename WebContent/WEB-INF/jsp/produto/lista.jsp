<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<script type="text/javascript" src="/controle-produtos/js/jquery.js">
        </script>
	</head>
	<body>
		<script type="text/javascript">
			function removeProduto(id) {
				$('#mensagem').load('<c:url value="/produto/remove"/>' + '?produto.id=' + id);
				$('#produto' + id).remove();
			}
		</script>
		<h1>Produtos</h1>
		<div id="mensagem"></div>
		<table border="1">
				<tr>
					<td>Nome</td>
					<td>Preço</td>
					<td>Descrição</td>
					<td>Inicio das Vendas</td>
					<td>Ação</td>
					<td>Ação</td>
				</tr>
			<c:forEach var="produto" items="${produtoList}" varStatus="id">
				<tr id="produto${produto.id}" bgcolor="#${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
					<td>${produto.nome}</td>
					<td>${produto.preco}</td>
					<td>${produto.descricao}</td>
					<td><fmt:formatDate pattern="dd/MM/yyyy" value="${produto.dataInicioVenda.time}" /></td>
					<td>
						<a href="<c:url value="/produto/edita"/>?id=${produto.id}">Alterar</a>
					</td>
					<td>
						<a href="#" onclick="return removeProduto(${produto.id})">Remover</a>
					</td>
				</tr>
			</c:forEach>
		</table><br/><br /><a href="formulario">Adicionar um novo Produto</a><br /><br />
</body>
</html>