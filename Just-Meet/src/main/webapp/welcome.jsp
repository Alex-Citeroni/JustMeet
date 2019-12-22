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
		<a class="navbar-brand" href="#"> <img
			src="resources/img/logo.png" width="30" height="30"
			class="d-inline-block align-top" alt=""> JustMeet
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse navbar-fixed-top"
			id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Profile</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Events</a></li>
				<li class="nav-item"><a class="nav-link"
					onclick="document.forms['logoutForm'].submit()">Logout</a></li>
			</ul>

			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
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
				<img src="https://source.unsplash.com/1600x700/?sport"
					class="d-block w-100" alt="">
				<div class="carousel-caption d-none d-md-block">
					<h5>First slide label</h5>
					<p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="https://source.unsplash.com/1600x700/?study"
					class="d-block w-100" alt="">
				<div class="carousel-caption d-none d-md-block">
					<h5>Second slide label</h5>
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="https://source.unsplash.com/1600x700/?soccer"
					class="d-block w-100" alt="">
				<div class="carousel-caption d-none d-md-block">
					<h5>Third slide label</h5>
					<p>Praesent commodo cursus magna, vel scelerisque nisl
						consectetur.</p>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleCaptions"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleCaptions"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<h2>       Benvenuto in JustMeet ${pageContext.request.userPrincipal.name}! Scopri cosa puoi fare.</h2>
	<br>
	<br>

	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3>Crea il tuo evento.</h3>
				<p>Stai organizzando una partita di calcetto? Hai bisogno di qualcuno che ti spieghi quel dannato argomento di matematica? Oppure sei piu tipo da Dungeons&Dragons? 
				Sappiamo quanto te che la ricerca di compagni potrebbere essere estenuante ma questo è il posto giusto per te! Crea un tuo evento e se qualcuno sarà interessato si unirà alla tua attività. </p>
				<button type="button" class="btn btn-outline-primary">Crea</button>
			</div>
			<div class="col-md-6">
				<h3>Partecipa a un evento.</h3>
				<p>Hai voglia di una partita a basket o semplicemente dei compagni di studio ma non sai a chi chiedere? Cerca tra gli eventi già creati se ce n'è qualcuno al caso tuo! </p>
				<button type="button" class="btn btn-outline-primary">Partecipa</button>
			</div>
			
		</div>


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
	<script src="resources/js/bootstrap.min.js"></script>
</body>
</html>