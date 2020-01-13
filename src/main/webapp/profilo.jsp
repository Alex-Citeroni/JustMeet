<jsp:include page="common/header.jsp"></jsp:include>
	<hr>
	<div class="container">
		<form method="POST" action="${contextPath}/profilo"
			class="was-validated">
			<h2 class="form-heading">${pageContext.request.userPrincipal.name}</h2>
			<div class="row">
				<div class="col-md-6">
					<h3>Cancella account</h3>
					<span>${error}</span> <input type="hidden"
						name="${_csrf.parameterName}" value="${_csrf.token}" />
					<button class="btn btn-lg btn-primary btn-block" type="submit">Delete</button>
				</div>
				<a class="nav-link" onclick="document.forms['deleteForm'].submit()">Delete</a>
			</div>
		</form>
	</div>
<jsp:include page="common/footer.jsp"></jsp:include>