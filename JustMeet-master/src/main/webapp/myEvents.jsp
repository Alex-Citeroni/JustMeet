<%@include file="common/header.jspf"%>
<br>
<br>
<br>
<h2>Gli eventi creati da te:</h2>
<hr>
<div class=" col-md-4">
	<c:forEach var="event" items="${list}">
		<div class="card">
			<img class="card-img-top img-fluid" src="${event.image}" alt="">
			<div class="card-body">
				<h4 class="card-title">${event.title}</h4>
				<p class="card-text">${event.description}</p>
				<a href="#" class="btn btn-primary">Go</a>
			</div>
		</div>
	</c:forEach>
</div>
<%@include file="common/footer.jspf"%>