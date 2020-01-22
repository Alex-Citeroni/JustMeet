<%@include file="common/header.jspf"%>
<div class="container">
	<hr>
	<h2>${pageContext.request.userPrincipal.name}</h2>
	<div class="row">
		<c:forEach var="event" items="${allList}">
			<div class="col-md-6">
				<h3>${event.title}</h3>
				<p>${event.description}</p>
			</div>
		</c:forEach>
	</div>
	<a href="event.jsp" class="btn btn-info" role="button">Partecipa</a>
</div>
<%@include file="common/footer.jspf"%>