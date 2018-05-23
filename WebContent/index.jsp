<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>

<link href="bootstrap/css/bootstrap.css" rel="styleSheet">
</head>
<body>
<%
	
	if(request.getAttribute("msg") != null){%>
	
	<p> Ola turma tem mensagem: <%= request.getAttribute("msg") %></p>
	
	<% }%>	


<form action="ControllerLogin" method="post">
<div class="col-sm-3">
<div class="form-group">
	<label>Usuário:</label>
	<input type="text"  id="usuario" class="form-control" name="usuario" /><br>
</div>
<div class="form-group">
	<label>Senha:</label>
	<input type="password"  class="form-control" id="senha" name="senha" /><br>
</div>
<input type="submit" class="btn btn-primary" value="Login"/>
</div>
</form>

</body>
</html>