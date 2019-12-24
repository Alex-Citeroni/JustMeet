<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>JustMeet</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/style.css">

</head>
<body>

	<nav class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark">
		<div class="container-xl">
			<a class="navbar-brand" href="#" style="padding-top: 7px"> <img
				src="resources/img/logo.png" width="50" height="45"
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
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="profilo.jsp">Profilo</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdown07XL"
						data-toggle="dropdown" aria-expanded="false">Eventi</a>
						<div class="dropdown-menu" aria-labelledby="dropdown07XL">
							<a class="dropdown-item" href="event.jsp">Cerca evento</a>
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

	<div id="carouselExampleCaptions" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleCaptions" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
			<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img
					src="https://source.unsplash.com/1600x700/?soccer,basketball,volleyball,tablegame"
					class="d-block w-100" alt="">
				<div class="carousel-caption d-none d-md-block">
					<h5>Cerca</h5>
					<p>Cerca tra gli eventi già creati uno che fa al caso tuo.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="https://source.unsplash.com/1600x700/?boardgame"
					class="d-block w-100" alt="">
				<div class="carousel-caption d-none d-md-block">
					<h5>Partecipa</h5>
					<p>Partecipa ad eventi di altri utenti e fai nuove amicizie!</p>
				</div>
			</div>
			<div class="carousel-item">
				<img
					src="https://source.unsplash.com/1600x700/?study,school,friends"
					class="d-block w-100" alt="">
				<div class="carousel-caption d-none d-md-block">
					<h5>Crea</h5>
					<p>Nessun evento già presente soddisfa ciò che cerchi? Creane
						uno tu.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="https://source.unsplash.com/1600x700/?sport"
					class="d-block w-100" alt="">
				<div class="carousel-caption d-none d-md-block">
					<h5>Trova</h5>
					<p>Grazie all'evento da te creato hai la possibilità di trovare
						persone con i tuoi stessi interessi.</p>
				</div>
			</div>

		</div>
		<a class="carousel-control-prev" href="#carouselExampleCaptions"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Indietro</span>
		</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Avanti</span>
		</a>
	</div>
	<hr>
	<hr>
	<br>
	<br>

	<div class="container">
		<h2>Benvenuto in JustMeet
			${pageContext.request.userPrincipal.name}! Scopri cosa puoi fare</h2>
		<div class="row">
			<div class="col-md-6">
				<h3>Crea il tuo evento</h3>
				<p>Stai organizzando una partita di calcetto? Hai bisogno di
					qualcuno che ti spieghi quel dannato argomento di matematica?
					Oppure sei piu tipo da Dungeons&Dragons? Sappiamo quanto te che la
					ricerca di compagni potrebbere essere estenuante ma questo è il
					posto giusto per te! Crea un tuo evento e se qualcuno sarà
					interessato si unirà alla tua attività.</p>
				<a href="eventcreation.jsp" class="btn btn-info" role="button">Crea</a>
			</div>
			<div class="col-md-6">
				<h3>Partecipa a un evento</h3>
				<p>Hai voglia di una partita a basket o semplicemente dei
					compagni di studio ma non sai a chi chiedere? Cerca tra gli eventi
					già creati se ce n'è qualcuno al caso tuo!</p>
				<a href="event.jsp" class="btn btn-info" role="button">Partecipa</a>
			</div>
		</div>
	</div>
	<br>
	<br>




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
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>