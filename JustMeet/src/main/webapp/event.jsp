<%@include file="common/header.jspf"%>
<hr>
<div class="container">
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
	</div>
	<form:form method="POST" modelAttribute="id">
	<spring:bind path="id">
				<div class="form-group col-sm-3  invisible">
					<form:select type="text" path="id" class="form-control">
						<form:option value="${event.id}">${event.id}</form:option>
					</form:select>
				</div>
				<div class="text-center col-sm-12">
				<button type="submit" class="btn btn-primary col-sm-6">Partecipa</button>
			</div>
			</spring:bind>
	</form:form>
	
</div>
<%@include file="common/footer.jspf"%>