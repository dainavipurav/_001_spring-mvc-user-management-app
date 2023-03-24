<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

button {
	background-color: #04AA6D;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
}

button:hover {
	opacity: 0.8;
}

div {
	align-content: center;
}

html, body {
	height: 100%;
}

html {
	display: table;
	margin: auto;
}

body {
	padding-top: 50px; 
	display : table-cell;
	vertical-align: top;
	align-content: center;
	display: table-cell;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>

<body>
	<div>

		<button style="width: 100px; align-self: center;" type="submit"
			onclick="location.href='api/register'">Start Dummy Data CRUD</button>
			
		<br><br>
		<button style="width: 100px; align-self: center;" type="submit"
			onclick="location.href='db/register'">Start Database CRUD</button>
	</div>
</body>

</html>