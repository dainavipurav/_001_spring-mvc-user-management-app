<!DOCTYPE html>
<html>
<head>
<style>
* {
	box-sizing: border-box;
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

/* Add padding to containers */
.container {
	padding: 16px;
	background-color: white;
}

table {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}

th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #04AA6D;
	color: white;
}

button {
	background-color: #04AA6D;
	color: white;
	padding: 5px 10px;
	margin: 8px 0;
	border: 2px;
	cursor: pointer;
	width: 100px;
	align-self: center;
}
</style>
</head>
<body>

	<h1 align="center">User Table</h1>

	<table>
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Age</th>
			<th>Mobile Number</th>
			<th>Country</th>
			<th>Gender</th>
			<th>Actions</th>
		</tr>

		<%-- <c:forEach var="x" items="${userList}">

			<tr>
				<td><c:out value="${x.id}" /></td>
				<td><c:out value="${x.name}" /></td>
				<td><c:out value="${x.age}" /></td>
				<td><c:out value="${x.mobile}" /></td>
				<td><c:out value="${x.country}" /></td>
				<td><c:out value="${x.gender}" /></td>
				<td>
					<button type="submit" onclick="location.href='edit/${x.id}'">Edit</button>
					&nbsp; &nbsp;
					<button type="submit" onclick="location.href='delete/${x.id}'">Delete</button>
				</td>
			</tr>

		</c:forEach> --%>

		<tr>
			<td>${ userList[0].getId() }</td>
			<td>${ userList[0].getName() }</td>
			<td>${ userList[0].getAge() }</td>
			<td>${ userList[0].getMobile() }</td>
			<td>${ userList[0].getCountry() }</td>
			<td>${ userList[0].getGender() }</td>
			<td>
				<button type="submit"
					onclick="location.href='update/${userList[0].getId()}'">Edit</button>
				&nbsp; &nbsp;
				<button type="submit"
					onclick="location.href='view/${userList[0].getId()}'">View</button>
				&nbsp; &nbsp;
				<button type="submit"
					onclick="location.href='delete/${userList[0].getId()}'">Delete</button>
			</td>
		</tr>
		<tr>
			<td>${ userList[1].getId() }</td>
			<td>${ userList[1].getName() }</td>
			<td>${ userList[1].getAge() }</td>
			<td>${ userList[1].getMobile() }</td>
			<td>${ userList[1].getCountry() }</td>
			<td>${ userList[1].getGender() }</td>
			<td>
				<button type="submit"
					onclick="location.href='update/${userList[1].getId()}'">Edit</button>
				&nbsp; &nbsp;
				<button type="submit"
					onclick="location.href='view/${userList[1].getId()}'">View</button>
				&nbsp; &nbsp;
				<button type="submit"
					onclick="location.href='delete/${userList[1].getId()}'">Delete</button>
			</td>
		</tr>
		<tr>
			<td>${ userList[2].getId() }</td>
			<td>${ userList[2].getName() }</td>
			<td>${ userList[2].getAge() }</td>
			<td>${ userList[2].getMobile() }</td>
			<td>${ userList[2].getCountry() }</td>
			<td>${ userList[2].getGender() }</td>
			<td>
				<button type="submit"
					onclick="location.href='update/${userList[2].getId()}'">Edit</button>
				&nbsp; &nbsp;
				<button type="submit"
					onclick="location.href='view/${userList[2].getId()}'">View</button>
				&nbsp; &nbsp;
				<button type="submit"
					onclick="location.href='delete/${userList[2].getId()}'">Delete</button>
			</td>
		</tr>
		<tr>
			<td>${ userList[3].getId() }</td>
			<td>${ userList[3].getName() }</td>
			<td>${ userList[3].getAge() }</td>
			<td>${ userList[3].getMobile() }</td>
			<td>${ userList[3].getCountry() }</td>
			<td>${ userList[3].getGender() }</td>
			<td>
				<button type="submit"
					onclick="location.href='update/${userList[3].getId()}'">Edit</button>
				&nbsp; &nbsp;
				<button type="submit"
					onclick="location.href='view/${userList[3].getId()}'">View</button>
				&nbsp; &nbsp;
				<button type="submit"
					onclick="location.href='delete/${userList[3].getId()}'">Delete</button>
			</td>
		</tr>
		<tr>
			<td>${ userList[4].getId() }</td>
			<td>${ userList[4].getName() }</td>
			<td>${ userList[4].getAge() }</td>
			<td>${ userList[4].getMobile() }</td>
			<td>${ userList[4].getCountry() }</td>
			<td>${ userList[4].getGender() }</td>
			<td>
				<button type="submit"
					onclick="location.href='update/${userList[4].getId()}'">Edit</button>
				&nbsp; &nbsp;
				<button type="submit"
					onclick="location.href='view/${userList[4].getId()}'">View</button>
				&nbsp; &nbsp;
				<button type="submit"
					onclick="location.href='delete/${userList[4].getId()}'">Delete</button>
			</td>
		</tr>
	</table>
	<div class="container signin">
		<p>
			Want to add another User? <a href="register">Add User</a>.
		</p>
	</div>

</body>
</html>


