<%@include file="common/header.jspf"%>
<hr>
<div class="container">
	<form:form method="POST" modelAttribute="accountForm">
		<h1 class="form-heading">${pageContext.request.userPrincipal.name}</h1>
		<hr>
		<div class="col-md-6">
			<h4>Cancella account</h4>
			<button class="btn btn-lg btn-primary btn-block col-sm-6"
				type="submit" onclick="return confirm('Are you sure?')">Delete</button>
		</div>
	</form:form>
</div>
<%@include file="common/footer.jspf"%>