<%@include file="common/logOutHeader.jspf"%>
<div class="container">
	<form method="POST" action="${contextPath}/login" class="form-signin">
		<h2 class="form-heading">Log in</h2>
		<hr>
		<div class="form-group ${error != null ? 'has-error' : ''}">
			<span>${message}</span> <input name="username" type="text"
				class="form-control" placeholder="Username" autofocus="true" /> <input
				name="password" type="password" class="form-control"
				placeholder="Password" /> <span>${error}</span> <input
				type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			<button class="btn btn-lg btn-primary btn-block" type="submit">Log
				In</button>
		</div>
		<hr>
		<h4 class="text-center">
			<a href="${contextPath}/registration"
				class="btn btn-lg btn-primary btn-block" role="button">Create an
				account</a>
		</h4>
	</form>
</div>
<%@include file="common/footer.jspf"%>