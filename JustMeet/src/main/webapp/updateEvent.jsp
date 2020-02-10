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
						placeholder="${event.title}" autofocus="true"
						value="${event.title}"></form:input>
					<form:errors path="title"></form:errors>
				</div>
			</spring:bind>
		</div>
		<div class="row">
			<spring:bind path="description">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-6">
					<h5>Descrizione</h5>
					<form:textarea type="text" path="description" class="form-control"
						placeholder="${event.description}" autofocus="true"></form:textarea>
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
						placeholder="${event.description}" autofocus="true"
						value="${event.category}">
						<form:option value="Sport">Sport</form:option>
						<form:option value="Giochi">Giochi</form:option>
						<form:option value="Istruzione">Istruzione</form:option>
						<form:option value="Altro">Altro...</form:option>
					</form:select>
					<form:errors path="category"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="place">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>Nome luogo</h5>
					<form:input type="text" path="place" class="form-control"
						placeholder="${event.place}" autofocus="true"
						value="${event.place}"></form:input>
					<form:errors path="place"></form:errors>
				</div>
			</spring:bind>
		</div>
		<div class="row">
			<spring:bind path="city">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>Città</h5>
					<form:input type="text" path="city" class="form-control"
						placeholder="${event.city}" autofocus="true" value="${event.city}"></form:input>
					<form:errors path="city"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="province">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-2">
					<h5>Prov.</h5>
					<form:input type="text" path="province" class="form-control"
						placeholder="${event.province}" autofocus="true"
						value="${event.province}"></form:input>
					<form:errors path="province"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="address">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-5">
					<h5>Via</h5>
					<form:input type="text" path="address" class="form-control"
						placeholder="${event.address}" autofocus="true"
						value="${event.address}"></form:input>
					<form:errors path="address"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="date">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>Data</h5>
					<form:input type="date" path="date" class="form-control"
						placeholder="${event.date}" autofocus="true" value="${event.date}"></form:input>
					<form:errors path="date"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="time">
				<div class="form-group col-sm-3">
					<h5>Orario</h5>
					<form:input type="time" path="time" class="form-control"
						placeholder="${event.time}" autofocus="true" value="${event.time}"></form:input>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="cost">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-3">
					<h5>Costo</h5>
					<form:input type="number" path="cost" class="form-control"
						placeholder="${event.cost}" autofocus="true" value="${event.cost}"></form:input>
					<form:errors path="cost"></form:errors>
				</div>
			</spring:bind>
			<spring:bind path="image">
				<div class="form-group ${status.error ? 'has-error' : ''} col-sm-4">
					<h5>Modifica l'immagine rappresentativa</h5>
					<form:input type="file" path="image" class="form-control-file"
						id="FormFile" placeholder="Image" autofocus="true"></form:input>
					<form:errors path="image"></form:errors>
				</div>
			</spring:bind>
		</div>
		<hr>
		<div class="row">
			<spring:bind path="username">
				<div class="form-group col-sm-3  invisible">
					<form:select type="text" path="username" class="form-control">
						<form:option value="${event.username}"></form:option>
					</form:select>
				</div>
			</spring:bind>
		</div>
		<button type="submit" class="btn btn-primary col-sm-6">Salva</button>
	</form:form>
	<div class="col-sm-3">
		<hr>
		<a href="myEvents" type="submit" class="btn btn-danger col-sm-6">Annulla</a>
	</div>

</div>
<%@include file="common/footer.jspf"%>