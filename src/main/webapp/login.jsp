<%@include file="common/logOutHeader.jspf"%>
<div class="container">
	<form method="POST" action="${contextPath}/login" class="form-signin">
		<h2 class="form-heading">Log in</h2>
		<hr>
		<div class="form-group ${error != null ? 'has-error' : ''}">
			<span>${message}</span>
			<!-- Username field -->
			<input name="username" type="text" class="form-control"
				placeholder="Username" />
			<!-- Password field -->
			<input name="password" type="password" class="form-control"
				placeholder="Password" id="myInput" />
			<!-- An element to toggle between password visibility -->
			<input type="checkbox" onclick="myFunction()"> Show Password
			<span>${error}</span> <input type="hidden"
				name="${_csrf.parameterName}" value="${_csrf.token}" />
			<button class="btn btn-lg btn-primary btn-block" type="submit">
				<i class="fas fa-sign-in-alt"></i> Log In
			</button>
		</div>
		<hr>
		<h4 class="text-center">
			<a href="/registration" class="btn btn-lg btn-danger btn-block"
				role="button"><i class="fas fa-plus"></i> Create an account</a>
		</h4>
	</form>
</div>
<%@include file="common/footer.jspf"%>