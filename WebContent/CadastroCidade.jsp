<%@page import="br.com.projescola.model.Cidade"%>
<%@page import="br.com.projescola.db.CidadeDB"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Cidades</title>
<link href="bootstrap/css/bootstrap.css" rel="styleSheet">
</head>
<body>
<h1>Cadastro de Cidades</h1>

	
<form action="ControllerCidade" method="post">
<div class="col-sm-3">
<div class ="form-group">

<% if(request.getAttribute("msg") != null){%>
	<div class="alert alert-primary" role="alert">
 		<%= request.getAttribute("msg") %>
	</div>
<%} %>

<div class="col-sm-3">
<div class="form-group">
	<label>Nome:</label>
	<input type="text" id="nome" class="form-control" name="nome"/><br>
</div>
	<div class="form-group">	
		<label>Qtd: Habitantes:</label>
		<input type="number" id="qtdhabitantes" class="form-control" name="qtdhabitantes"/><br>
		<input type="submit" class="btn btn-primary"  value="Salvar"/>
	
	</div>
	<div class="col-sm-3">
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nome</th>
      <th scope="col">Qtd. Habitantes</th>

    </tr>
  </thead>
  <tbody>
    <% for(Cidade cidade : new CidadeDB().all() ){%>
	  
	   <tr>
	   	<td><%= cidade.getId() %></td>
	   	<td><%= cidade.getNome() %></td>
	   	<td><%= cidade.getQtdhabitantes() %></td>
	  </tr>
	  
 <% }%> 
  </tbody>
</table>
</div>	
	<a href="Principal.jsp">Voltar</a>
	
</div>	
</form>
</body>
</html>