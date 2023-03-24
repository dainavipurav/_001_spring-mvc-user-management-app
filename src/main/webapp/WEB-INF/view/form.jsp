<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
	background-color: white;
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	padding: 16px;
	background-color: white;
}

/* Full-width form:input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit button */
.submitButton {
	background-color: #04AA6D;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.submitButton:hover {
	opacity: 1;
}

/* Add a blue text color to links */
a {
	color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
	background-color: #f1f1f1;
	text-align: center;
}

.error {
	color: red
}
</style>
</head>
<body>

	<form:form action="${ actionUrl }" modelAttribute="user">
		<div class="container">
			<h1>${ action }</h1>

			<form:label for="id" path="id">
				Id
			</form:label>
			<form:input type="text" path="id" placeholder="Enter Id"
				id="id" />
			<form:errors cssClass="error" path="id" />
			<br> <br>
			
			<form:label for="name" path="name">
				Name
			</form:label>
			<form:input type="text" path="name" placeholder="Enter Name"
				id="name" />
			<form:errors cssClass="error" path="name" />
			<br> <br>

			<form:label for="age" path="age">
				Age
			</form:label>
			<form:input type="text" path="age" placeholder="Enter Age" id="age" />
			<form:errors cssClass="error" path="age" />
			<br> <br>

			<form:label for="mobile" path="mobile">
				Mobile Number
			</form:label>
			<form:input type="text" path="mobile"
				placeholder="Enter Mobile Number" id="mobile" />
			<form:errors cssClass="error" path="mobile" />
			<br> <br>

			<form:label for="country" path="country">
				Email
			</form:label>
			<form:input type="text" path="country" placeholder="Enter Country"
				id="email" />
			<form:errors cssClass="error" path="country" />
			<br> <br>

			<form:label for="gender" path="gender">
				Gender
			</form:label>
			<br> <br>
			<form:radiobutton path="gender" id="gender" value="Male" title="Male"
				label="Male" />
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<form:radiobutton path="gender" id="gender" value="Female"
				title="Female" label="Female" />
			<br> <br>
			<form:errors cssClass="error" path="gender" />
			<br> <br>

			<button type="submit" class="submitButton">${ action }</button>
		</div>

	</form:form>

</body>
</html>
