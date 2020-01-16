<%@include file="common/logOutHeader.jspf"%>
<div class="container">
	<form:form method="POST" modelAttribute="userForm" class="form-signin">
		<h2 class="form-signin-heading">Create your account</h2>
		<hr>
		<spring:bind path="username">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<form:input type="text" path="username" class="form-control"
					placeholder="Username" autofocus="true"></form:input>
				<form:errors path="username"></form:errors>
			</div>
		</spring:bind>
		<spring:bind path="email">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<form:input type="text" path="email" class="form-control"
					placeholder="E-mail" autofocus="true"></form:input>
				<form:errors path="email"></form:errors>
			</div>
		</spring:bind>
		<spring:bind path="password">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<form:input type="password" path="password" class="form-control"
					placeholder="Password"></form:input>
				<form:errors path="password"></form:errors>
			</div>
		</spring:bind>
		<spring:bind path="passwordConfirm">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<form:input type="password" path="passwordConfirm"
					class="form-control" placeholder="Confirm your password"></form:input>
				<form:errors path="passwordConfirm"></form:errors>
			</div>
		</spring:bind>
		<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
		<hr>
		<h4 class="text-center">
			<a href="${contextPath}/login"
				class="btn btn-lg btn-primary btn-block" role="button">Do you
				already have an account?</a>
		</h4>
	</form:form>
</div>
<%@include file="common/footer.jspf"%>