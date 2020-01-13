<jsp:include page="common/header.jsp"></jsp:include>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container">
	<form:form method="POST" modelAttribute="eventForm">
		<hr>
		<hr>
		<h1 class="form-heading">Crea il tuo Evento</h1>
		<hr>
		<spring:bind path="title">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<h5>Titolo</h5>
				<form:input type="text" path="title" class="form-control"
					placeholder="Title" autofocus="true"></form:input>
				<form:errors path="title"></form:errors>
			</div>
		</spring:bind>
		<hr>
		<spring:bind path="description">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<h5>Descrizione</h5>
				<form:input type="text" path="description" class="form-control"
					placeholder="Description" autofocus="true"></form:input>
				<form:errors path="description"></form:errors>
			</div>
		</spring:bind>
		<hr>
		<spring:bind path="participan">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<h5>Partecipanti</h5>
				<form:input type="number" path="participan" class="form-control"
					placeholder="Participan" autofocus="true"></form:input>
				<form:errors path="participan"></form:errors>
			</div>
		</spring:bind>
		<hr>
		<spring:bind path="category">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<h5>Categoria</h5>
				<form:input type="text" path="category" class="form-control"
					placeholder="Category" autofocus="true"></form:input>
				<form:errors path="category"></form:errors>
			</div>
		</spring:bind>
		<hr>
		<spring:bind path="city">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<h5>Città</h5>
				<form:input type="text" path="city" class="form-control"
					placeholder="City" autofocus="true"></form:input>
				<form:errors path="city"></form:errors>
			</div>
		</spring:bind>
		<hr>
		<spring:bind path="province">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<h5>Provincia</h5>
				<form:input type="text" path="province" class="form-control"
					placeholder="Province" autofocus="true"></form:input>
				<form:errors path="province"></form:errors>
			</div>
		</spring:bind>
		<hr>
		<spring:bind path="street">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<h5>Via</h5>
				<form:input type="text" path="street" class="form-control"
					placeholder="Street" autofocus="true"></form:input>
				<form:errors path="street"></form:errors>
			</div>
		</spring:bind>
		<hr>
		<spring:bind path="date">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<h5>Data</h5>
				<form:input type="date" path="date" class="form-control"
					placeholder="Date" autofocus="true"></form:input>
				<form:errors path="date"></form:errors>
			</div>
		</spring:bind>
		<hr>
		<spring:bind path="place">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<h5>Luogo</h5>
				<form:input type="text" path="place" class="form-control"
					placeholder="Place" autofocus="true"></form:input>
				<form:errors path="place"></form:errors>
			</div>
		</spring:bind>
		<hr>
		<spring:bind path="cost">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<h5>Costo</h5>
				<form:input type="number" path="cost" class="form-control"
					placeholder="$" autofocus="true"></form:input>
				<form:errors path="cost"></form:errors>
			</div>
		</spring:bind>
		<hr>
		<div class="form-group">
			<h5>Inserisci una copertina</h5>
			<input type="file" class="form-control-file" id="FormFile">
		</div>
		<hr>
		<button type="submit" class="btn btn-primary">Crea</button>
	</form:form>
</div>
<jsp:include page="common/footer.jsp"></jsp:include>