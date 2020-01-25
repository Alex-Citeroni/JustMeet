<%@include file="common/header.jspf"%>
<div class="container">
	<hr>
	<h2>Evento:</h2>
	<div class="row">
		<div class="col-md-6">
			<h3>${event.title}</h3>
			<p>${event.description}</p>
		</div>
		<form:form method="POST" modelAttribute="id">
			<spring:bind path="id">
				<div class="form-group col-sm-3  invisible">
					<form:select type="text" path="id" class="form-control">
						<form:option value="${event.id}">${event.id}</form:option>
					</form:select>
				</div>
			</spring:bind>
			<button class="btn btn-lg btn-primary btn-block col-sm-12"
				type="submit"
				onclick="return confirm('L'evento in questione verrà eliminato definitivamente. Sei sicuro?')">Delete</button>
		</form:form>

	</div>
</div>
<%@include file="common/footer.jspf"%>