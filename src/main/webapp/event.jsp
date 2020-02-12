<%@include file="common/header.jspf"%>
<hr>
<div class="container">
	<h2>${event.title}</h2>
	<hr>
	<div class="col-md-6">
		<h4>Descrizione</h4>
		<div class="shadow-sm p-3 mb-5 bg-white rounded">
			${event.description}</div>
		<h4>Dove</h4>
		<div class="shadow-sm p-3 mb-5 bg-white rounded">
			<h5>Luogo: ${event.place}</h5>
			<hr>
			<h5>Via: ${event.address}</h5>
			<hr>
			<h5>Città: ${event.city}</h5>
			<hr>
			<h5>Provincia: ${event.province}</h5>
		</div>
		<h4>Quando</h4>
		<div class="shadow-sm p-3 mb-5 bg-white rounded">
			<h5>Data: ${event.date}</h5>
			<hr>
			<h5>Ora d'inizio: ${event.startingTime}</h5>
			<hr>
			<h5>Ora di fine evento: ${event.endTime}</h5>
		</div>
		<h4>Info</h4>
		<div class="shadow-sm p-3 mb-5 bg-white rounded">
			<h5>Numero di partecipanti:
				${event.users.size()}/${event.participants}</h5>
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-lg btn-primary col-sm-6"
				data-toggle="modal" data-target="#participantsView">Vedi
				partecipanti</button>
			<!-- Modal -->
			<div class="modal fade" id="participantsView" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalScrollableTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalScrollableTitle">Partecipanti</h5>
						</div>
						<div class="modal-body">
							<c:forEach var="user" items="${event.users}">
							${user.username}
							<br>
							</c:forEach>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Chiudi</button>
						</div>
					</div>
				</div>
			</div>
			<hr>
			<h5>Costo: &euro; ${event.cost}</h5>
		</div>
	</div>
	<form:form method="POST" modelAttribute="id">
		<spring:bind path="id">
			<div class="form-group  invisible">
				<form:select type="text" path="id" class="form-control">
					<form:option value="${event.id}">${event.id}</form:option>
				</form:select>
			</div>
			<c:if test="${event.users != user.username}" var="user">
				<div class="text-center col-sm-12">
					<button type="submit" class="btn btn-primary col-sm-6">Partecipa</button>
				</div>
			</c:if>
		</spring:bind>
	</form:form>
</div>
<%@include file="common/footer.jspf"%>