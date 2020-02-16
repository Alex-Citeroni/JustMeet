<%@include file="common/header.jspf"%>
<hr>
<div class="container">
	<div class="row">
		<h1>Eventi a cui partecipi</h1>
		<hr>
	</div>
	<hr>
	<div class="alert alert-primary col-md-6" role="alert">
		Gli eventi creati da te non sono visualizzati. Per vederli <a
			href="/myEvents">clicca qui</a>
	</div>
	<c:if test="${participations.size() == 0}">
		<h4 class="text-center py-3 empty-events">Nessun evento</h4>
	</c:if>
	<div class="row col-md-5">
		<c:forEach var="event" items="${participations}">
			<form:form method="POST" modelAttribute="removeParticipation">
				<spring:bind path="id">
					<div class="card">
						<div class="text-center">
							<button id="removePartecipation" type="submit"
								class="btn btn-danger col-sm-12">
								<i class="fas fa-times-circle"></i> Abbandona
							</button>
						</div>
						<div class="card-body">
							<c:if test="${event.category == Sport}">
								<img class="card-img-top img-fluid"
									src="resources/img/default_img/sport.jpg">
							</c:if>
							<c:if test="${event.category == Altro}">
								<img class="card-img-top img-fluid"
									src="resources/img/default_img/altro.jpg">
							</c:if>
							<c:if test="${event.category == Istruzione}">
								<img class="card-img-top img-fluid"
									src="resources/img/default_img/study.jpg">
							</c:if>
							<c:if test="${event.category == Giochi}">
								<img class="card-img-top img-fluid"
									src="resources/img/default_img/games.jpg">
							</c:if>
							<h4 class="card-title">${event.title}</h4>
							<hr>
							<h5 class="card-text">${event.description}</h5>
							<br>
							<h5 class="card-text">
								<i class="far fa-calendar-alt"></i> Data: ${event.date}
							</h5>
							<h5 class="card-text">
								<i class="fas fa-male"></i> Organizzatore: ${event.username}
							</h5>
						</div>
						<div class="text-center">
							<a href="event?id=${event.id}" class="btn btn-primary col-sm-12"><i
								class="fas fa-sign-in-alt"></i> Apri</a>
						</div>
					</div>
					<div class="form-group invisible">
						<form:select type="text" path="id" class="form-control ">
							<form:option value="${event.id}"></form:option>
						</form:select>
					</div>
				</spring:bind>
			</form:form>
		</c:forEach>
	</div>
</div>
<%@include file="common/footer.jspf"%>