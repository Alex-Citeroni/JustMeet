<%@include file="common/header.jspf"%>
<hr>
<div class="container">
	<h2>Evento</h2>
	<hr>
	<div class="col-md-6">
		<div class="shadow-sm p-3 mb-5 bg-white rounded">
			<h3>${event.title}</h3>
			${event.description}
		</div>
		<h4>Dove:</h4>
		<div class="shadow-sm p-3 mb-5 bg-white rounded">
			<b>Luogo:</b> ${event.place} <br> <b>Via:</b> ${event.address} <br>
			<b>Città:</b> ${event.city} <br> <b>Prov:</b> ${event.province}
		</div>
		<h4>Quando:</h4>
		<div class="shadow-sm p-3 mb-5 bg-white rounded">
			<b>Data:</b> ${event.date} <br> <b>Ora:</b> ${event.time}
		</div>
		<h4>Info:</h4>
		<div class="shadow-sm p-3 mb-5 bg-white rounded">
			<b>n° partecipanti:</b> ${event.users.size()}

			<!-- Button trigger modal -->
			<button type="button" class="btn btn-warning " data-toggle="modal"
				data-target="#participantsView"><i class="fas fa-user-check"></i></button>

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
			<br> <b>Costo:</b> ${event.cost}
		</div>
		<form:form method="POST" modelAttribute="id">
			<spring:bind path="id">
				<button type="submit" class="btn btn-success col-sm-3">Partecipa <i class="fas fa-check-circle"></i></button>
				<div class="form-group  invisible">
					<form:select type="text" path="id" class="form-control">
						<form:option value="${event.id}">${event.id}</form:option>
					</form:select>
				</div>
			</spring:bind>
		</form:form>
	</div>
</div>

<%@include file="common/footer.jspf"%>