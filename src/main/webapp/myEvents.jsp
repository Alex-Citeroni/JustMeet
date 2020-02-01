<%@include file="common/header.jspf"%>
<br>
<div class="container">
	<div class="row">
		<h1>I tuoi eventi</h1>
		<hr>
		<div>
			<a href="eventCreation" class="btn btn-lg btn-primary btn-block">Nuovo
				evento</a>
		</div>
	</div>
	<hr>
	<c:if test="${list.size() == 0}">
		<h4 class="text-center py-3 empty-events">Nessun evento</h4>
	</c:if>
	<div class=" col-md-4">
		<form:form method="POST" modelAttribute="id">
			<c:forEach var="event" items="${list}">
				<br>
				<div class="card">
					<img class="card-img-top img-fluid" src="${event.image}" alt="">
					<div class="card-body">
						<div class="container row">
							<h4 class="card-title">${event.title}</h4>
							<hr>
							<button type="submit">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<p class="card-text">${event.description}</p>
						<a href="event?id=${event.id}" class="btn btn-primary">Apri</a>
					</div>
				</div>
				<spring:bind path="id">
					<div class="form-group col-sm-3 invisible">
						<form:select type="text" path="id" class="form-control">
							<form:option value="${event.id}">${event.id}</form:option>
						</form:select>
					</div>
				</spring:bind>
			</c:forEach>
		</form:form>
	</div>
</div>
<%@include file="common/footer.jspf"%>