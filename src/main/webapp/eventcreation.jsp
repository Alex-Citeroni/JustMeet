<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Creazione evento</title>

<link rel="stylesheet"
	href="${contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="${contextPath}/resources/css/style.css">
</head>

<body>

	<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
		<div class="container-xl">
			<a class="navbar-brand" href="welcome.jsp" style="padding-top: 7px">
				<img src="resources/img/logo.png" width="50" height="45"
				class="d-inline-block align-top" alt=""
				style="padding-top: 5px; padding-right: 10px;">JustMeet
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarsExample07XL" aria-controls="navbarsExample07XL"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsExample07XL">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link"
						href="welcome.jsp">Home <span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="profilo.jsp">Profilo</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdown07XL"
						data-toggle="dropdown" aria-expanded="false">Eventi</a>
						<div class="dropdown-menu" aria-labelledby="dropdown07XL">
							<a class="dropdown-item" href="#">Cerca evento</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="eventcreation.jsp">Crea evento</a>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						onclick="document.forms['logoutForm'].submit()">Logout</a></li>
				</ul>
				<form class="form-inline my-2 my-md-0">
					<input class="form-control" type="text" placeholder="Cerca evento"
						aria-label="Search">
				</form>
			</div>
		</div>
	</nav>

	<hr>
	<div class="container">
		<form:form method="POST" modelAttribute="eventForm"
			class="form-eventcreation">
			<h1 class="form-eventcreation-heading">Crea il tuo Evento</h1>
			<hr>
			<div class="form-row">
				<div class="mb-3 col-md-6">
					<label for="validationTextarea">Titolo</label>
					<textarea class="form-control is-invalid" id="validationTextarea"
						placeholder="Inserisci una descrizione" required></textarea>
				</div>
			</div>
			<div class="form-row">
				<div class="mb-3 col-md-6">
					<label for="validationTextarea">Descrizione</label>
					<textarea class="form-control is-invalid" id="validationTextarea"
						placeholder="Inserisci una descrizione" required></textarea>
				</div>
			</div>
			<div class="form-row">
				<div class="form-group col-md-2">
					<label for="exampleFormControlSelect1">Numero minimo di
						partecipanti</label> <select class="form-control"
						id="exampleFormControlSelect1">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
						<option>13</option>
						<option>14</option>
						<option>15</option>
						<option>16</option>
						<option>17</option>
						<option>18</option>
						<option>19</option>
						<option>20</option>
						<option>21</option>
						<option>22</option>
					</select>
				</div>
				<div class="form-group col-md-2">
					<label for="exampleFormControlSelect1">Numero massimo di
						partecipanti</label> <select class="form-control"
						id="exampleFormControlSelect1">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
						<option>13</option>
						<option>14</option>
						<option>15</option>
						<option>16</option>
						<option>17</option>
						<option>18</option>
						<option>19</option>
						<option>20</option>
						<option>21</option>
						<option>22</option>
					</select>
				</div>
				<div class="col-md-3 mb-3" style="padding-top: 24px">
					<label for="validationServer04">Categoria</label> <select
						class="custom-select is-invalid" id="validationServer04" required>
						<option value="1">Sport</option>
						<option value="2">Giochi</option>
						<option value="3">Istruzione</option>
						<option value="3">Altro...</option>
					</select>
				</div>
			</div>
			<div class="form-row">
				<div class="col-md-2 mb-3">
					<label for="validationServer03">Città</label> <input type="text"
						class="form-control is-invalid" id="validationServer03"
						placeholder="Inserisci città" required>
				</div>
				<div class="col-md-2 mb-3">
					<label for="validationServer03">Provincia</label> <input
						type="text" class="form-control is-invalid"
						id="validationServer03" placeholder="Inserisci provincia" required>
				</div>
				<div class="col-md-3 mb-3">
					<label for="validationServer03">Indirizzo</label> <input
						type="text" class="form-control is-invalid"
						id="validationServer03" placeholder="Es. Via Roma 1" required>
				</div>
				<div class="col-md-3 mb-3">
					<label for="validationServer03">Data</label> <input type="date"
						class="form-control is-invalid" id="validationServer03"
						placeholder="GG/MM/YYYY" required>
				</div>
			</div>
			<div class="form-row">
				<div class="col-md-4 mb-3">
					<label for="validationServer03">Nome luogo</label> <input
						type="text" class="form-control is-invalid"
						id="validationServer03" placeholder="Es. Campetto Salaria"
						required>
				</div>
			</div>

			<div class="form-group col-md-4"
				style="padding-left: 0px; padding-right: 5px;">
				<label for="inputCity">Quota da suddividere tra i
					partecipanti (Opzionale)</label> <input type="number" class="form-control"
					id="inputCity" placeholder="$">
			</div>
			<div class="custom-file col-md-6">
				<input type="file" class="custom-file-input" id="customFile">
				<label class="custom-file-label" for="customFile">Inserisci
					una copertina (Facoltativo)</label>
			</div>
			<hr>
			<button type="submit" class="btn btn-primary">Crea</button>
		</form:form>
		<br> <br>
	</div>


	<div class="container">
		<c:if test="${pageContext.request.userPrincipal.name != null}">
			<form id="logoutForm" method="POST" action="${contextPath}/logout">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
		</c:if>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>