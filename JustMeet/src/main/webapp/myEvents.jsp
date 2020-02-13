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
			<div class="card">
				<img class="card-img-top img-fluid" src="${event.image}" alt="">
				<div class="card-body">
					<h4 class="card-title">${event.title}</h4>
					<p class="card-text">${event.description}</p>
					<a href="event?id=${event.id}" class="btn btn-primary">Apri</a>

					<form:form method="POST" modelAttribute="id">
						<spring:bind path="id">
							<div class="form-group col-sm-3  invisible">
								<form:select type="text" path="id" class="form-control">
									<form:option value="${event.id}">${event.id}</form:option>
								</form:select>
							</div>
						</spring:bind>
					</form:form>

					<a href="updateEvent?id=${event.id}" type="button"
						class="btn btn-warning " data-target="#participantsView">Modifica
					</a>

					<button type="submit" class="btn btn-danger col-sm-"
						onclick="return confirm('Il tuo evento sarà eliminato definitivamente. Sei sicuro?')">
						<i class="fas fa-trash-alt"></i>
					</button>
				</div>
			</div>
		</c:forEach>

	</div>
</div>
<%@include file="common/footer.jspf"%>