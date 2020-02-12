<%@include file="common/header.jspf"%>
<hr>
<div class="container">
	<form:form method="POST" modelAttribute="username">
		<h1 class="form-heading">${user.username}</h1>
		<hr>
		<h2>Dati utente</h2>
		<div class="shadow-sm p-3 mb-5 bg-white rounded">
			<h5>Email: ${user.email}</h5>
			<hr>
			<h5>Nome: ${user.name}</h5>
			<hr>
			<h5>Cognome: ${user.surname}</h5>
			<hr>
			<h5>Sesso: ${user.sex}</h5>
			<hr>
			<h5>Data di nascita: ${user.birthday}</h5>
			<hr>
			<h5>Residenza: ${user.city}</h5>
		</div>
		<div class="row text-center col-sm-12">
			<a class="btn btn-lg btn-primary"
				href="updateUser?username=${user.username}" role="button"> <i
				class="fas fa-pen"> Modifica account</i>
			</a>
			<hr>
			<button class="btn btn-lg btn-danger" type="submit"
				onclick="return confirm('Il tuo account sarà eliminato definitivamente. Sei sicuro?')">
				<i class="fas fa-trash-alt"> Elimina account</i>
			</button>
		</div>
		<spring:bind path="username">
			<div class="form-group col-sm-3  invisible">
				<form:select type="text" path="username" class="form-control">
					<form:option value="${user.username}"></form:option>
				</form:select>
			</div>
		</spring:bind>
	</form:form>
</div>
<%@include file="common/footer.jspf"%>