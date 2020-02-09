<%@include file="common/header.jspf"%>
<hr>
<div class="container">
	<form:form method="POST" modelAttribute="username">
		<h1 class="form-heading">${user.username}</h1>
		<hr>
		<h4>Dati utente:</h4>
		<div class="shadow-sm p-3 mb-5 bg-white rounded">
			${user.name} ${user.surname} <br> ${user.birthday} <br>
			${user.sex} <br> ${user.city}
		</div>
		<button class="btn btn-lg btn-danger btn-block col-sm-3" type="submit"
			onclick="return confirm('Il tuo account sarà eliminato definitivamente. Sei sicuro?')">
			Elimina account <i class="fas fa-trash-alt"></i>
		</button>
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