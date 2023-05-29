<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<title>List of groupes</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">

<style>
h3 {
	margin-top: 20px;
}

#navbarNav div {
	height: 0;
}

#navbarNav form {
	margin: 0;
	padding: 0;
}

form {
	margin-bottom: 60px;
	margin-top: 10px;
	padding: 10px;
}
</style>


</head>
<body>
	<nav
		class="navbar navbar-expand-lg navbar-light navbar-dark bg-primary px-3">
		<div class="container-fluid">
			<a class="navbar-brand"
				href="${pageContext.request.contextPath}/showForm"> <i
				class="fas fa-mobile" style="color: #ffffff"></i> <span
				class="fw-bold">CM</span>
			</a>

			<div class="collapse navbar-collapse justify-content-end"
				id="navbarSupportedContent">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page"
						href="${pageContext.request.contextPath}/showForm">Home</a></li>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/showForm">Add
							Contacts </a></li>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/showContactsOrderedByNom">Order
							By Name </a></li>


					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/manageContacts">Manage
							Contacts </a></li>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/showFormGroupe">Add
							Groupe </a></li>

					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/manageGroupes">Manage
							Groupes </a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="container">

		<div>
			<h3>List of Groupes</h3>
		</div>

		<form action="${pageContext.request.contextPath}/searchGroupeByNom"
			class="d-flex" method="POST">
			<input name="nom" class="form-control me-2" type="search"
				placeholder="Nom Groupe" aria-label="Search">
			<button class="btn btn-outline-success" type="submit">Search</button>
		</form>

		<div>

			<table class="table">
				<thead>
					<tr>
						<th scope="col">Nom</th>
						<th scope="col">Contacts</th>
						<th scope="col">Actions</th>
					</tr>
				</thead>
				<c:forEach items="${groupeList}" var="g">
					<tr>
						<td><c:out value="${g.nom}" /></td>
						<td>
							<ul>
								<c:forEach items="${g.contacts}" var="c">
									<li><c:out value="${c.nom} ${c.prenom}" /></li>
								</c:forEach>
							</ul>
						</td>
						<td>
							<ul>
								<li><a href="deleteGroupe/${g.id}">Delete</a></li>
							</ul>
						</td>
					</tr>

				</c:forEach>

			</table>
		</div>
	</div>
</body>
</html>