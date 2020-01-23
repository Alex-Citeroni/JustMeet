<%@include file="common/header.jspf"%>
<div class="container">
	<br>
	<h1>Eventi</h1>
	<hr>
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item"><a class="nav-link active" id="home-tab"
			data-toggle="tab" href="#Tutto" role="tab" aria-controls="home"
			aria-selected="true">Tutto</a></li>
		<li class="nav-item"><a class="nav-link" id="home-tab"
			data-toggle="tab" href="#Sport" role="tab" aria-controls="contact"
			aria-selected="true">Sport</a></li>
		<li class="nav-item"><a class="nav-link" id="profile-tab"
			data-toggle="tab" href="#Istruzione" role="tab"
			aria-controls="profile" aria-selected="false">Istruzione</a></li>
		<li class="nav-item"><a class="nav-link" id="contact-tab"
			data-toggle="tab" href="#Giochi" role="tab" aria-controls="contact"
			aria-selected="false">Giochi</a></li>
		<li class="nav-item"><a class="nav-link" id="contact-tab"
			data-toggle="tab" href="#Altro" role="tab" aria-controls="contact"
			aria-selected="false">Altro...</a></li>
	</ul>
	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="Tutto" role="tabpanel"
			aria-labelledby="home-tab">
			<c:if test="${allList.size() == 0}" var="event" scope="session">
				<p class="text-center py-3 empty-events">Nessun evento</p>
			</c:if>
			<div class=" col-md-4">
				<c:forEach var="event" items="${allList}">
				
					<c:set var="event" scope="session" value="evento" />
					<div class="card">
						<img class="card-img-top img-fluid" src="${event.image}" alt="">
						<div class="card-body">
							<h4 class="card-title">${event.title}</h4>
							<p class="card-text">${event.description}</p>
							<a href="event" class="btn btn-primary">Go</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="tab-pane fade" id="Sport" role="tabpanel"
			aria-labelledby="sport-tab">
			<c:if test="${sportList.size() == 0}">
				<p class="text-center py-3 empty-events">Nessun evento</p>
			</c:if>
			<div class=" col-md-4">
				<c:forEach var="event" items="${sportList}">
					<div class="card">
						<img class="card-img-top img-fluid" src="${event.image}" alt="">
						<div class="card-body">
							<h4 class="card-title">${event.title}</h4>
							<p class="card-text">${event.description}</p>
							<a href="event" class="btn btn-primary">Go</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="tab-pane fade" id="Istruzione" role="tabpanel"
			aria-labelledby="istruzione-tab">
			<c:if test="${istrList.size() == 0}">
				<p class="text-center py-3 empty-events">Nessun evento</p>
			</c:if>
			<div class=" col-md-4">
				<c:forEach var="event" items="${istrList}">
					<div class="card">
						<img class="card-img-top img-fluid" src="${event.image}" alt="">
						<div class="card-body">
							<h4 class="card-title">${event.title}</h4>
							<p class="card-text">${event.description}</p>
							<a href="event" class="btn btn-primary">Go</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="tab-pane fade" id="Giochi" role="tabpanel"
			aria-labelledby="giochi-tab">
			<c:if test="${giochiList.size() == 0}">
				<p class="text-center py-3 empty-events">Nessun evento</p>
			</c:if>
			<div class=" col-md-4">
				<c:forEach var="event" items="${giochiList}">
					<div class="card">
						<img class="card-img-top img-fluid" src="${event.image}" alt="">
						<div class="card-body">
							<h4 class="card-title">${event.title}</h4>
							<p class="card-text">${event.description}</p>
							<a href="event" class="btn btn-primary">Go</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="tab-pane fade" id="Altro" role="tabpanel"
			aria-labelledby="Altro...-tab">
			<c:if test="${altroList.size() == 0}">
				<p class="text-center py-3 empty-events">Nessun evento</p>
			</c:if>
			<div class=" col-md-4">
				<c:forEach var="event" items="${altroList}">
					<div class="card">
						<img class="card-img-top img-fluid" src="${event.image}" alt="">
						<div class="card-body">
							<h4 class="card-title">${event.title}</h4>
							<p class="card-text">${event.description}</p>
							<a href="event" class="btn btn-primary">Go</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</div>
<%@include file="common/footer.jspf"%>