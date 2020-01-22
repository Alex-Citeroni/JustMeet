<%@include file="common/header.jspf"%>
<br>
<div class="container">
	<h1>I tuoi eventi</h1>
	<hr>
	<c:if test="${event == null}">
		<p class="text-center py-3 empty-events">Nessun evento</p>
	</c:if>
	<div class=" col-md-4">
		<c:forEach var="event" items="${list}">
			<div class="card">
				<img class="card-img-top img-fluid" src="${event.image}" alt="">
				<div class="card-body">
					<h4 class="card-title">${event.title}</h4>
					<p class="card-text">${event.description}</p>
					<a href="event" class="btn btn-primary">Go</a>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
<%@include file="common/footer.jspf"%>