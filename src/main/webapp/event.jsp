<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<jsp:include page="common/header.jsp"></jsp:include>
	<hr>
	<div class="container">
		<h2>${pageContext.request.userPrincipal.name}</h2>
		<div class="row">
			<div class="col-md-6">
				<h3>${pageContext.request.userPrincipal.name}</h3>
				<p>Stai organizzando una partita di calcetto? Hai bisogno di
					qualcuno che ti spieghi quel dannato argomento di matematica?
					Oppure sei piu tipo da Dungeons&Dragons? Sappiamo quanto te che la
					ricerca di compagni potrebbere essere estenuante ma questo è il
					posto giusto per te! Crea un tuo evento e se qualcuno sarà
					interessato si unirà alla tua attività.</p>
				<a href="event.jsp" class="btn btn-info" role="button">Partecipa</a>
			</div>
		</div>
	</div>
<jsp:include page="common/footer.jsp"></jsp:include>