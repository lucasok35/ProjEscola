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
<div class="col-sm3">
<div class="form-group">
	<label>Nome:</label>
	<input type="text" id="nome" class="form-control" name="nome"/><br>
</div>
	<div class="form-group">	
		<label>Qtd: Habitantes:</label>
		<input type="number" id="qtdhabitantes" class="form-control" name="qtdhabitantes"/><br>
		<input type="submit" class="btn btn-primary"  value="Salvar"/>
	
	</div>	
	<a href="Principal.jsp">Voltar</a>
	
</div>	
</form>
</body>
</html>