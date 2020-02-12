<%@include file="common/header.jspf"%>
<br>
<div class="container">
	<div class="row">
		<h1>I tuoi eventi</h1>
		<hr>
		<div>
			<a href="eventCreation" class="btn btn-lg btn-light btn-block">Nuovo
				evento <i class="fas fa-plus"></i>
			</a>
		</div>
	</div>
	<hr>
	<c:if test="${list.size() == 0}">
		<h4 class="text-center py-3 empty-events">Nessun evento</h4>
	</c:if>
	<div class=" col-md-4">
		<c:forEach var="event" items="${list}">
			<br>
			<div class="card">
				<button type="submit" class="btn btn-danger col-sm-"
					onclick="return confirm('Il tuo evento sarà eliminato definitivamente. Sei sicuro?')">
					<i class="fas fa-trash-alt"></i>
				</button>
				<img class="card-img-top img-fluid" src="${event.image}" alt="">
				<div class="card-body">
					<h4 class="card-title">${event.title}</h4>
					<hr>
					<h5 class="card-text">${event.description}></h5>
					<br>
					<div class="text-center col-sm-12">
						<a href="event?id=${event.id}" class="btn btn-primary col-sm-6">Apri</a>
					</div>
				</div>
				<a href="updateEvent?id=${event.id}" type="button"
					class="btn btn-warning " data-target="#participantsView"><i
					class="fas fa-pen"></i></a>
			</div>
			<form:form method="POST" modelAttribute="id">
				<spring:bind path="id">
					<div class="form-group col-sm-3 invisible">
						<form:select type="text" path="id" class="form-control">
							<form:option value="${event.id}">${event.id}</form:option>
						</form:select>
					</div>
				</spring:bind>
			</form:form>
		</c:forEach>
	</div>
</div>
<%@include file="common/footer.jspf"%>