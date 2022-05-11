<!--Roncadin Alessandro 5BIA 12/05/2022-->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href='css/bootstrapcss/bootstrap.min.css' rel='stylesheet'
	type='text/css' />
<script src='js/jquery-3.6.0.min.js' type='text/javascript'></script>
<script src='js/bootstrapjs/bootstrap.bundle.min.js'
	type='text/javascript'></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>LOGIN PAGE</title>
</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


	<form>
		<div class="row justify-content-center">
			<div class="col-8">
				<h1>LOGIN</h1>
				<div class="mb-3">
					<label for="exampleInputEmail1" class="form-label">Email
						address</label> <input name="user" type="email" class="form-control"
						id="exampleInputEmail1" aria-describedby="emailHelp" required>
					<div id="emailHelp" class="form-text">We'll never share your
						email with anyone else.</div>
				</div>
				<div class="mb-3">
					<label for="exampleInputPassword1" class="form-label">Password</label>
					<input name="password" type="password" class="form-control"
						id="exampleInputPassword1" required>
					Mostra password:
					<input type="checkbox" id="showPassword" name="showPassword" value="Mostra la password">
				</div>
				
				<button type="submit" class="btn btn-primary">Conferma</button>
			</div>
		</div>
	</form>
</body>
</html>