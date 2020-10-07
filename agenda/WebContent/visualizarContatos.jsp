<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="br.com.servlets.*" %>
<%@ page import="br.com.model.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Contatos</title>
</head>
<body>
	<fieldset>
		Contatos Salvos: <br>
		<br>
		<c:forEach items="${contatos}" var="contato">
			Nome:<c:out value="${contato.nome}"></c:out><br/>
			Email:<c:out value="${contato.email}"></c:out><br/>
			Telefone:<c:out value="${contato.telefone}"></c:out><br/>
			Endereço:<c:out value="${contato.endereco}"></c:out><br/><br/>
		</c:forEach>
	</fieldset>

	<br><a href="cadastroContato.jsp">Cadastro Contato</a><br>
	<a href="Menu.jsp">Voltar para o Menu</a>
</body>
</html>