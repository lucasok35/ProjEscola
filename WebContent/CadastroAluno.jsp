<%@page import="br.com.projescola.db.CidadeDB"%>
<%@page import="br.com.projescola.db.AlunoDB"%>
<%@page import="br.com.projescola.model.Cidade"%>
<%@page import="br.com.projescola.model.Aluno" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de Alunos</title>
<link href="bootstrap/css/bootstrap.css" rel="styleSheet">
</head>
<body>
<h1>Cadastro de Alunos</h1>

<form action="ControllerAluno" method="post">
<div class="col-sm-3">
	<div class="form-group">
	<% if(request.getAttribute("msg") != null){%>
	<div class="alert alert-primary" role="alert">
 		<%= request.getAttribute("msg") %>
	</div>
<%} %>
			<label>Nome:</label>
			<input type="text" id="nome" class="form-control" name="nome"/><br>
	</div>
	<div class="form-group">
		<label>Telefone:</label>
		<input type="text" id="telefone" class="form-control" name="telefone"/><br>
	</div>
	<div class="col-sm-6">
	<div class="form-group">
    <label for="selectCidade">Cidade</label>
    <select class="form-control" id="selectCidade" name="selectCidade">
      	<option>Selecione</option>
      <% for(Cidade cidade : new CidadeDB().all()){%>
      		
      		<option value="<%=cidade.getId()%>"><%=cidade.getNome() %></option>
      
      
      <%} %>
  </select>
	<div class="form-group">
		 <label>Nota:</label>
		<input type="number" id="nota" class="form-control" name="nota"/><br>
		<input type="submit" class="btn btn-primary" value="Salvar"/><br>	
		
			</div>
	<div class="col-sm-3">
<table class="table table-dark">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nome</th>
      <th scope="col">Telefone</th>
      <th scope="col">Cidade</th>
      <th scope="col">Nota</th>

    </tr>
  </thead>
  <tbody>
    <% for(Aluno aluno : new AlunoDB().all() ){%>
	  
	   <tr>
	   	<td><%= aluno.getId() %></td>
	   	<td><%= aluno.getNome() %></td>
	   	<td><%= aluno.getTelefone() %></td>
	   	<td><%= aluno.getCidade() %></td>
	   	<td><%= aluno.getNota() %></td>
	  </tr>
	  
 <% }%> 
  </tbody>
</table>
</div>
	</div>
	<a href="Principal.jsp">Voltar</a>
	
</div>
</form>
</body>
</html>