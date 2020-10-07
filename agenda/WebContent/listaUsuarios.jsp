<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="br.com.servlets.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista Usuarios</title>
</head>
<body>
	<fieldset>
		Contatos Salvos: <br>
		<br>
		<c:forEach items="${CadastroUsuarioServlet.usuarios}" var="usuario">
			Nome:<c:out value="${usuario.nome}"></c:out><br/>
			Email:<c:out value="${usuario.email}"></c:out><br/>
			Telefone:<c:out value="${usuario.telefone}"></c:out><br/>
			Endereço:<c:out value="${usuario.endereco}"></c:out><br/><br/>
		</c:forEach>
	</fieldset>
<% %>
	<a href="cadastroContato.jsp">Cadastrar Usuário</a>
	<br><p>
	<a href="Menu.jsp">Voltar para o Menu</a>
	
	
</body>
</html>