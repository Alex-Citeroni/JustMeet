<%@include file="common/header.jspf"%>
<hr>
<div class="container">
	<div class="row">
		<h1>Gli eventi a cui partecipi</h1>
		<hr>
	</div>
	<hr>
	<c:if test="${participations.size() == 0}">
		<h4 class="text-center py-3 empty-events">Nessun evento</h4>
	</c:if>
	<div class=" col-md-4">
			<c:forEach var="event" items="${participations}">
				<div class="card">
					<img class="card-img-top img-fluid" src="${event.image}" alt="">
					<div class="card-body">
						<h4 class="card-title">${event.title}</h4>
						<p class="card-text">${event.description}</p>
						<a href="event?id=${event.id}" class="btn btn-primary">Go</a>
					</div>
				</div>
			</c:forEach>
	</div>

</div>
<%@include file="common/footer.jspf"%>