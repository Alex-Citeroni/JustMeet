<%@include file="common/header.jspf"%>
<div id="carouselExampleCaptions" class="carousel slide"
	data-ride="carousel">
	<ol class="carousel-indicators">
		<li data-target="#carouselExampleCaptions" data-slide-to="0"
			class="active"></li>
		<li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
		<li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
		<li data-target="#carouselExampleCaptions" data-slide-to="3"></li>
	</ol>
	<div class="carousel-inner">
		<div class="carousel-item active">
			<img src="resources/img/carousel_img/calcetto.jpg"
				class="d-block w-100" alt="First slide">
			<div class="carousel-caption d-none d-md-block">
				<h5>Cerca</h5>
				<p>Cerca tra gli eventi gi� creati uno che fa al caso tuo</p>
			</div>
		</div>
		<div class="carousel-item">
			<img src="resources/img/carousel_img/chess.jpg" class="d-block w-100"
				alt="Second slide">
			<div class="carousel-caption d-none d-md-block">
				<h5>Partecipa</h5>
				<p>Partecipa ad eventi di altri utenti e fai nuove amicizie!</p>
			</div>
		</div>
		<div class="carousel-item">
			<img src="resources/img/carousel_img/study.jpg" class="d-block w-100"
				alt="Third slide">
			<div class="carousel-caption d-none d-md-block">
				<h5>Crea</h5>
				<p>Nessun evento gi� presente soddisfa ci� che cerchi? Creane
					uno tu</p>
			</div>
		</div>
		<div class="carousel-item">
			<img src="resources/img/carousel_img/football.jpg"
				class="d-block w-100" alt="">
			<div class="carousel-caption d-none d-md-block">
				<h5>Trova</h5>
				<p>Grazie all'evento da te creato hai la possibilit� di trovare
					persone con i tuoi stessi interessi</p>
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
<br>
<div class="container">
	<div class="text-center">
		<h2>Benvenuto in JustMeet
			${pageContext.request.userPrincipal.name}!</h2>
		<hr>
		<h2>Scopri cosa puoi fare!</h2>
		<br>
	</div>
	<div class="row">
		<div class="col-md-6">
			<h3>Crea il tuo evento</h3>
			<p>Stai organizzando una partita di calcetto? Hai bisogno di
				qualcuno che ti spieghi quel dannato argomento di matematica? Oppure
				sei piu tipo da Dungeons and Dragons? Sappiamo quanto te che la
				ricerca di compagni potrebbere essere estenuante ma questo � il
				posto giusto per te! Crea un tuo evento e se qualcuno sar�
				interessato si unir� alla tua attivit�!</p>
			<a href="eventCreation" class="btn btn-info" role="button"><i
				class="fas fa-plus"></i> Crea</a>
		</div>
		<hr>
		<div class="col-md-6">
			<h3>Partecipa a un evento</h3>
			<p>Hai voglia di una partita a basket o semplicemente dei
				compagni di studio ma non sai a chi chiedere? Cerca tra gli eventi
				gi� creati se ce n'� qualcuno che fa al caso tuo!</p>
			<a href="events" class="btn btn-info" role="button"><i
				class="fas fa-sign-in-alt"></i> Partecipa</a>
		</div>
	</div>
</div>
<%@include file="common/footer.jspf"%>