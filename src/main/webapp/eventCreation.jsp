<%@include file="common/header.jspf"%>
<div class="container">
	<form:form method="POST" modelAttribute="eventForm">
		<hr>
		<h1 class="form-heading">Crea un nuovo Evento</h1>
		<hr>
		<div class="row">
			<spring:bind path="title">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>Titolo</h5>
					<form:input type="text" path="title" class="form-control"
						placeholder="Title" autofocus="true"></form:input>
					<form:errors path="title"></form:errors>
				</div>
			</spring:bind>
		</div>
		<div class="row">
			<spring:bind path="description">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>Descrizione</h5>
					<form:textarea path="description" class="form-control"
						placeholder="Description"></form:textarea>
					<form:errors path="description"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="category">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>Categoria</h5>
					<form:select type="text" path="category" class="form-control"
						placeholder="Category">
						<form:option value="Sport">Sport</form:option>
						<form:option value="Giochi">Giochi</form:option>
						<form:option value="Istruzione">Istruzione</form:option>
						<form:option value="Altro">Altro...</form:option>
					</form:select>
					<form:errors path="category"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="place">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>Nome luogo</h5>
					<form:input type="text" path="place" class="form-control"
						placeholder="Place"></form:input>
					<form:errors path="place"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="participants">
				<div class="form-group col-sm-3">
					<h5>Numero dei partecipanti</h5>
					<form:input type="number" path="participants" class="form-control"
						placeholder="Participants"></form:input>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="city">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>Città</h5>
					<form:input type="text" path="city" class="form-control"
						placeholder="City"></form:input>
					<form:errors path="city"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="province">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-2">
					<h5>Provincia</h5>
					<form:input type="text" path="province" class="form-control"
						placeholder="Province"></form:input>
					<form:errors path="province"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="address">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-4">
					<h5>Via</h5>
					<form:input type="text" path="address" class="form-control"
						placeholder="Address"></form:input>
					<form:errors path="address"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="date">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>Data</h5>
					<form:input type="date" path="date" class="form-control"></form:input>
					<form:errors path="date"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="startingTime">
				<div class="form-group col-sm-3">
					<h5>Ora d'inizio</h5>
					<form:input type="time" path="startingTime" class="form-control"></form:input>
				</div>
			</spring:bind>
			<spring:bind path="endTime">
				<div class="form-group col-sm-3">
					<h5>Ora di fine evento</h5>
					<form:input type="time" path="endTime" class="form-control"></form:input>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="cost">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>Costo $</h5>
					<form:input type="number" path="cost" class="form-control"></form:input>
					<form:errors path="cost"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="image">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>Aggiungi un'immagine rappresentativa</h5>
					<form:input type="file" path="image" class="form-control-file"
						id="FormFile"></form:input>
					<form:errors path="image"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<div class="text-center col-sm-12">
				<button type="submit" class="btn btn-primary col-sm-6">Crea</button>
			</div>
			<spring:bind path="username">
				<div class="form-group col-sm-3 invisible">
					<form:select type="text" path="username" class="form-control">
						<form:option value="${pageContext.request.userPrincipal.name}">${pageContext.request.userPrincipal.name}</form:option>
					</form:select>
				</div>
			</spring:bind>
		</div>
	</form:form>
</div>
<%@include file="common/footer.jspf"%>