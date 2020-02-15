<%@include file="common/header.jspf"%>
<hr>
<div class="container">
	<div class="row">
		<h2>${event.title}</h2>
		<hr>
		<h4>Categoria: ${event.category}</h4>
	</div>
	<hr>
	<div class="row">
		<div class="col-md-6">
			<h4>
				<i class="far fa-comment-alt"></i> Descrizione
			</h4>
			<div class="shadow-sm p-3 mb-5 bg-white rounded">
				<h5>${event.description}</h5>
			</div>
			<h4>
				<i class="fas fa-globe"></i> Dove
			</h4>
			<div class="shadow-sm p-3 mb-5 bg-white rounded">
				<h5>
					<i class="fas fa-map-pin"></i> Luogo: ${event.place}
				</h5>
				<hr>
				<h5>
					<i class="fas fa-map-marker-alt"></i> Via e numero civico:
					${event.address}
				</h5>
				<hr>
				<h5>
					<i class="fas fa-map-marked-alt"></i> Città: ${event.city}
				</h5>
				<hr>
				<h5>
					<i class="far fa-map"></i> Provincia: ${event.province}
				</h5>
			</div>
		</div>
		<div class="col-md-6">
			<h4>
				<i class="fas fa-info-circle"></i> Info
			</h4>
			<div class="shadow-sm p-3 mb-5 bg-white rounded">
				<div class="container row">
					<h5>
						<i class="fas fa-user-friends"></i> Partecipanti:
						${event.users.size()} / ${event.max_member}
					</h5>
					<hr>
					<button type="button" class="btn btn-warning" data-toggle="modal"
						data-target="#participantsView">
						<i class="fas fa-user-check"></i>
					</button>
				</div>
				<div class="modal fade" id="participantsView" tabindex="-1"
					role="dialog" aria-labelledby="exampleModalScrollableTitle"
					aria-hidden="true">
					<div class="modal-dialog modal-dialog-scrollable" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalScrollableTitle">Partecipanti</h5>
							</div>
							<div class="modal-body">
								<c:if test="${event.users.size() == 0}">
									<h4 class="text-center py-3 empty-events">
										<i class="fas fa-user-alt-slash"></i> Nessun utente
									</h4>
								</c:if>
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
				<h5>
					<i class="fas fa-money-bill-wave"></i> Costo: &euro; ${event.cost}
					(pagamento sul posto)
				</h5>
			</div>
			<h4>
				<i class="far fa-calendar-alt"></i> Quando
			</h4>
			<div class="shadow-sm p-3 mb-5 bg-white rounded">
				<h5>
					<i class="far fa-calendar-check"></i> Data: ${event.date}
				</h5>
				<hr>
				<h5>
					<i class="far fa-clock"></i> Ora d'inizio: ${event.startingTime}
				</h5>
				<hr>
				<h5>
					<i class="far fa-clock"></i> Ora di fine evento: ${event.endTime}
				</h5>
			</div>
		</div>
	</div>
	<div class="text-center col-lg-12">
		<form:form method="POST" modelAttribute="addParticipation">
			<spring:bind path="id">
				<button id="addParticipation" type="submit"
					class="btn btn-success col-sm-6">
					<i class="fas fa-check-circle"></i> Partecipa
				</button>
				<div class="form-group invisible">
					<form:select type="text" path="id" class="form-control">
						<form:option value="${event.id}"></form:option>
					</form:select>
				</div>
			</spring:bind>
		</form:form>
	</div>
</div>
<%@include file="common/footer.jspf"%>