<%@include file="common/logOutHeader.jspf"%>
<div class="container">
	<form:form method="POST" modelAttribute="userForm">
		<hr>
		<h2 class="form-signin-heading">Create your account</h2>
		<hr>
		<spring:bind path="username">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<h5>
					<i class="fas fa-user-circle"></i> Username
				</h5>
				<form:input type="text" path="username" class="form-control"
					placeholder="Username" autofocus="true"></form:input>
				<form:errors path="username"></form:errors>
			</div>
		</spring:bind>
		<div class="row">
			<spring:bind path="name">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>
						<i class="fas fa-signature"></i> Name
					</h5>
					<form:input type="text" path="name" class="form-control"
						placeholder="Name"></form:input>
					<form:errors path="name"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="surname">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>
						<i class="fas fa-signature"></i> Surname
					</h5>
					<form:input type="text" path="surname" class="form-control"
						placeholder="Surname"></form:input>
					<form:errors path="surname"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="sex">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>
						<i class="fas fa-venus-mars"></i> Sex
					</h5>
					<form:select type="text" path="sex" class="form-control"
						placeholder="Sex" autofocus="true">
						<form:option value="Male"></form:option>
						<form:option value="Female"></form:option>
					</form:select>
					<form:errors path="sex"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="birthday">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>
						<i class="fas fa-birthday-cake"></i> Birthday
					</h5>
					<form:input type="date" path="birthday" class="form-control"
						placeholder="Birthday"></form:input>
					<form:errors path="birthday"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="city">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>
						<i class="fas fa-city"></i> City of residence
					</h5>
					<form:input type="text" path="city" class="form-control"
						placeholder="City"></form:input>
					<form:errors path="city"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="email">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>
						<i class="far fa-envelope"></i> Email
					</h5>
					<form:input type="email" path="email" class="form-control"
						placeholder="E-mail"></form:input>
					<form:errors path="email"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="password">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>
						<i class="fas fa-key"></i> Password
					</h5>
					<form:input type="password" path="password" class="form-control"
						placeholder="Password" id="myInput"></form:input>
					<input type="checkbox" onclick="myFunction()"> Show
					Password
					<form:errors path="password"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="passwordConfirm">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>
						<i class="fas fa-key"></i> Confirm Password
					</h5>
					<form:input type="password" path="passwordConfirm"
						class="form-control" placeholder="Confirm your password"></form:input>
					<form:errors path="passwordConfirm"></form:errors>
				</div>
			</spring:bind>
		</div>
		<br>
		<div class="text-center">
			<button class="btn btn-lg btn-primary col-md-3" type="submit">
				<i class="fas fa-location-arrow"></i> Submit
			</button>
			<hr>
			<a href="/login" class="btn btn-lg btn-danger" role="button"><i
				class="fas fa-user"></i> Do you already have an account?</a>
		</div>
	</form:form>
</div>
<%@include file="common/footer.jspf"%>