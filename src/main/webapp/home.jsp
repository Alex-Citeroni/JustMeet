<%@include file="common/header.jspf"%>
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
			<img src="https://source.unsplash.com/1600x700/?study,school,friends"
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
<br>
<br>
<div class="container">
	<h2>Benvenuto in JustMeet
		${pageContext.request.userPrincipal.name}! Scopri cosa puoi fare</h2>
	<hr>
	<div class="row">
		<div class="col-md-6">
			<h3>Crea il tuo evento</h3>
			<p>Stai organizzando una partita di calcetto? Hai bisogno di
				qualcuno che ti spieghi quel dannato argomento di matematica? Oppure
				sei piu tipo da Dungeons and Dragons? Sappiamo quanto te che la
				ricerca di compagni potrebbere essere estenuante ma questo è il
				posto giusto per te! Crea un tuo evento e se qualcuno sarà
				interessato si unirà alla tua attività.</p>
			<a href="eventCreation" class="btn btn-info" role="button">Crea</a>
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
<%@include file="common/footer.jspf"%>