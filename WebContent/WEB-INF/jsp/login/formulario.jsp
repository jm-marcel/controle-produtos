<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	</head>
	<body>
		<h1>Formulário de Controle de Acesso</h1>
		<form action="login/autentica">
			Login: <input type="text" name="usuario.login" /><br>
			Senha: <input type="password" name="usuario.senha" /><br>
			<input type="submit" value="Autenticar">
		</form>
	</body>
</html>