<%@include file="common/header.jspf"%>
<hr>
<div class="container">
	<form:form method="POST" modelAttribute="id">
		<h2>Evento</h2>
		<hr>
		<div class="col-md-6">
			<h3>${event.title}</h3>
			<p>${event.description}</p>
			<p>${event.participants}</p>
			<p>${event.cost}</p>
			<p>${event.place}</p>
			<p>${event.city}</p>
			<p>${event.province}</p>
			<p>${event.address}</p>
			<p>${event.date}</p>
			<p>${event.time}</p>
			<p>${event.image}</p>
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
		</div>
	</form:form>
</div>
<%@include file="common/footer.jspf"%>