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
			<label>Nome:</label>
		<input type="text" id="nome" class="form-control" name="nome"/><br>
	</div>
	<div class="form-group">
		<label>Telefone:</label>
		<input type="text" id="telefone" class="form-control" name="telefone"/><br>
	</div>
	<div class="form-group">
		<label>Cidade:</label>
		<input type="text" id="cidade" class="form-control" name="cidade"/><br>
	</div>
	<div class="form-group">
		 <label>Nota:</label>
		<input type="number" id="nota" class="form-control" name="nota"/><br>
		<input type="submit" class="btn btn-primary" value="Salvar"/><br>	
	</div>
	<a href="Principal.jsp">Voltar</a>
	
</div>
</form>
</body>
</html>