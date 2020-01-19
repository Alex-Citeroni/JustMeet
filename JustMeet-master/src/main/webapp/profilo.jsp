<%@include file="common/header.jspf"%>
<hr>
<div class="container">
	<h1 class="form-heading">${pageContext.request.userPrincipal.name}</h1>
	<hr>
	<form method="POST" action="${contextPath}/profilo" class="form-signin">
		<div class="col-md-6">
			<h4>Cancella account</h4>
			<span>${error}</span> <input type="hidden"
				name="${_csrf.parameterName}" value="${_csrf.token}" />
			<button class="btn btn-lg btn-primary btn-block" type="submit">Delete</button>
		</div>
	</form>
</div>
<%@include file="common/footer.jspf"%>