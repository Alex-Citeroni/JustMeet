<%@include file="common/header.jspf"%>
<br>
<div class="container">
	<div class="row">
		<h1>Risultati della ricerca</h1>
		<hr>
		<div>
			<a href="eventCreation" class="btn btn-lg btn-light btn-block"><i
				class="fas fa-plus"></i> Nuovo evento </a>
		</div>
	</div>
	<hr>
	<c:if test="${result.size() == 0}">
		<h4 class="text-center py-3 empty-events">
			<i class="fas fa-search"></i> Nessun evento soddisfa i requisiti di
			ricerca
		</h4>
	</c:if>
	<div class="row">
		<div class="col-md-6">
			<c:forEach var="event" items="${result}">
				<br>
				<div class="card">
					<img class="card-img-top img-fluid" src="${event.image}" alt="">
					<div class="card-body">
						<h4 class="card-title">${event.title}</h4>
						<hr>
						<h5 class="card-title">${event.description}</h5>
						<p class="card-text">
							<b><i class="far fa-calendar-alt"></i> Data: ${event.date}</b>
						</p>
						<p class="card-text">
							<b><i class="fas fa-male"></i> Organizzatore:
								${event.username}</b>
						</p>
					</div>
					<a href="event?id=${event.id}" class="btn btn-primary"><i
						class="fas fa-external-link-alt"></i> Apri</a>
				</div>
			</c:forEach>
		</div>
	</div>
</div>
<%@include file="common/footer.jspf"%>