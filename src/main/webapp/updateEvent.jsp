<%@include file="common/header.jspf"%>
<div class="container">
	<form:form method="POST" modelAttribute="event">
		<hr>
		<h1 class="form-heading">Modifica evento</h1>
		<hr>
		<div class="row">
			<spring:bind path="title">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>Titolo</h5>
					<form:input type="text" path="title" class="form-control"
						autofocus="true" value="${event.title}"></form:input>
					<form:errors path="title"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="description">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>Descrizione</h5>
					<form:textarea type="text" path="description" class="form-control"
						value="${event.description}"></form:textarea>
					<form:errors path="description"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="category">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-4">
					<h5>Categoria</h5>
					<form:select type="text" path="category" class="form-control"
						value="${event.category}">
						<form:option value="Sport"></form:option>
						<form:option value="Giochi"></form:option>
						<form:option value="Istruzione"></form:option>
						<form:option value="Altro"></form:option>
					</form:select>
					<form:errors path="category"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="place">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-4">
					<h5>Nome luogo</h5>
					<form:input type="text" path="place" class="form-control"
						value="${event.place}"></form:input>
					<form:errors path="place"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="max_member">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-4">
					<h5>Numero dei partecipanti</h5>
					<form:input type="number" path="max_member" class="form-control"
						value="${event.max_member}"></form:input>
					<form:errors path="max_member"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="city">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-4">
					<h5>Città</h5>
					<form:input type="text" path="city" class="form-control"
						value="${event.city}"></form:input>
					<form:errors path="city"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="province">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-4">
					<h5>Provincia</h5>
					<form:input type="text" path="province" class="form-control"
						value="${event.province}"></form:input>
					<form:errors path="province"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="address">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-4">
					<h5>Via e numero civico</h5>
					<form:input type="text" path="address" class="form-control"
						value="${event.address}"></form:input>
					<form:errors path="address"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="date">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-4">
					<h5>Data</h5>
					<form:input type="date" path="date" class="form-control"
						value="${event.date}"></form:input>
					<form:errors path="date"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="startingTime">
				<div class="form-group col-sm-4">
					<h5>Orario di inizio</h5>
					<form:input type="time" path="startingTime" class="form-control"
						value="${event.startingTime}"></form:input>
				</div>
			</spring:bind>
			<spring:bind path="endTime">
				<div class="form-group col-sm-4">
					<h5>Orario della conclusione</h5>
					<form:input type="time" path="endTime" class="form-control"
						value="${event.endTime}"></form:input>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="cost">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>Costo</h5>
					<div class="input-group-prepend">
						<div class="input-group-text">&euro;</div>
						<form:input type="number" path="cost" class="form-control"
							value="${event.cost}"></form:input>
					</div>
					<form:errors path="cost"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="image">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>Modifica l'immagine rappresentativa</h5>
					<form:input type="file" path="image" class="form-control-file"
						id="FormFile" placeholder="Image"></form:input>
					<form:errors path="image"></form:errors>
				</div>
			</spring:bind>
		</div>
		<div class="row">
			<spring:bind path="username">
				<div class="form-group col-sm-3 invisible">
					<form:select type="text" path="username" class="form-control">
						<form:option value="${event.username}"></form:option>
					</form:select>
				</div>
			</spring:bind>
		</div>
		<div class="row text-center col-sm-12">
			<button class="btn btn-lg btn-primary" type="submit">
				<i class="fas fa-save"></i> Salva
			</button>
			<hr>
			<a class="btn btn-lg btn-danger" role="button" href="myEvents"> <i
				class="fas fa-window-close"></i> Annulla
			</a>
		</div>
	</form:form>
</div>
<%@include file="common/footer.jspf"%>