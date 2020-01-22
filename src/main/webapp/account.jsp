<%@include file="common/header.jspf"%>
<hr>
<div class="container">
	<h1 class="form-heading">${pageContext.request.userPrincipal.name}</h1>
	<hr>
	<div class="col-md-6">
		<h4>Cancella account</h4>
		<form method="POST" action="${contextPath}/account">
			<button class="btn btn-lg btn-primary btn-block col-sm-6"
				type="submit" onclick="return confirm('Are you sure?')">Delete</button>
			<a class="btn btn-lg btn-primary btn-block col-sm-6"
				onclick="document.forms['deleteForm'].submit()">Delete</a>
		</form>
		<div class="container">
			<form id="deleteForm" method="POST" action="${contextPath}/delete">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</div>
	</div>
</div>
<%@include file="common/footer.jspf"%>