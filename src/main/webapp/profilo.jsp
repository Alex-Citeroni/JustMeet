<%@include file="common/header.jsp"%>
<hr>
<div class="container">
	<form method="POST" action="${contextPath}/profilo">
		<h1 class="form-heading">${pageContext.request.userPrincipal.name}</h1>
		<hr>
		<div class="col-md-6">
			<h4>Cancella account</h4>
			<span>${error}</span> <input type="hidden"
				name="${_csrf.parameterName}" value="${_csrf.token}" />
			<button class="btn btn-lg btn-primary btn-block" type="submit">Delete</button>
		</div>

		<div class="form-group ${error != null ? 'has-error' : ''}">
			<h4>Cambia password</h4>
			<span>${message}</span> <input name="password" type="password"
				class="form-control" placeholder="New Password" autofocus="true" />
			<input name="password" type="password" class="form-control"
				placeholder="Confirm Password" /> <span>${error}</span> <input
				type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

			<button class="btn btn-lg btn-primary btn-block" type="submit">Change</button>
		</div>
	</form>
</div>
<%@include file="common/footer.jsp"%>