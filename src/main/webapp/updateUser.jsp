<%@include file="common/header.jspf"%>
<div class="container">
	<form:form method="POST" modelAttribute="user">
		<hr>
		<h1 class="form-heading">Modifica dati</h1>
		<hr>
		<div class="row">
			<spring:bind path="email">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>
						<i class="far fa-envelope"></i> Email
					</h5>
					<form:input type="email" path="email" class="form-control"
						autofocus="true" value="${user.email}"></form:input>
					<form:errors path="email"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="sex">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>
						<i class="fas fa-venus-mars"></i> Sesso
					</h5>
					<form:select type="text" path="sex" class="form-control"
						value="${user.sex}">
						<form:option value="Male"></form:option>
						<form:option value="Female"></form:option>
					</form:select>
					<form:errors path="sex"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="name">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>
						<i class="fas fa-signature"></i> Nome
					</h5>
					<form:input type="text" path="name" class="form-control"
						value="${user.name}"></form:input>
					<form:errors path="name"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="surname">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>
						<i class="fas fa-signature"></i> Cognome
					</h5>
					<form:input type="text" path="surname" class="form-control"
						value="${user.surname}"></form:input>
					<form:errors path="surname"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="birthday">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>
						<i class="far fa-calendar-alt"></i> Data di nascita
					</h5>
					<form:input type="date" path="birthday" class="form-control"
						value="${user.birthday}"></form:input>
					<form:errors path="birthday"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="city">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>
						<i class="fas fa-map-marked-alt"></i> Residenza
					</h5>
					<form:input type="text" path="city" class="form-control"
						value="${user.city}"></form:input>
					<form:errors path="city"></form:errors>
				</div>
			</spring:bind>
		</div>
		<spring:bind path="username">
			<div class="form-group col-sm-3 invisible">
				<form:select type="text" path="username" class="form-control">
					<form:option value="${user.username}"></form:option>
				</form:select>
			</div>
		</spring:bind>
		<hr>
		<div class="row text-center col-sm-12">
			<button class="btn btn-lg btn-primary" type="submit">
				<i class="fas fa-save"></i> Salva
			</button>
			<hr>
			<button type="button" class="btn btn-warning" data-toggle="modal"
				data-target="#changePassword">
				<i class="fas fa-key"></i> Cambia password
			</button>
			<div class="modal fade" id="changePassword" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalScrollableTitle"
				aria-hidden="true">
				<div class="modal-dialog modal-dialog-scrollable" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalScrollableTitle">Cambia
								password</h5>
						</div>
						<div class="modal-body">
							<spring:bind path="password">
								<div
									class="form-group ${status.error ? 'has-error' : ''} col-sm-12">
									<h5>
										<i class="fas fa-key"></i> Nuova password
									</h5>
									<form:input type="password" path="password"
										class="form-control" id="myInput"></form:input>
									<input type="checkbox" onclick="myFunction()"> Show
									Password
									<form:errors path="password"></form:errors>
								</div>
							</spring:bind>
							<spring:bind path="passwordConfirm">
								<div
									class="form-group ${status.error ? 'has-error' : ''} col-sm-12">
									<h5>
										<i class="fas fa-key"></i> Conferma password
									</h5>
									<form:input type="password" path="passwordConfirm"
										class="form-control"></form:input>
									<form:errors path="passwordConfirm"></form:errors>
								</div>
							</spring:bind>
						</div>
						<div class="modal-footer">
							<button class="btn btn-primary" type="submit">
								<i class="fas fa-save"></i> Salva
							</button>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<button type="button" class="text-center btn btn-secondary"
								data-dismiss="modal">Chiudi</button>
						</div>
					</div>
				</div>
			</div>
			<hr>
			<a class="btn btn-lg btn-danger" role="button" href="account"> <i
				class="fas fa-window-close"></i> Annulla
			</a>
		</div>
	</form:form>
</div>
<%@include file="common/footer.jspf"%>