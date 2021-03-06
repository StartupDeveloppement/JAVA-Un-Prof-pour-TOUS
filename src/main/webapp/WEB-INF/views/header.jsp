<!-- Header !!! -->
<div id="header-wrapper">
	<div id="header" class="container">

		<!--  LOGO -->
		<div id="logo">
			<h1>
				<a href="${pageContext.request.contextPath}/home.html"> <img
					src="#" /> Un Prof Pour Tous
				</a>
			</h1>
		</div>

		<!-- MENU 1 -->
		<c:choose>
			<c:when test="${!empty user}">
				<div id="menu">
					<ul>
						<!-- Espace personnel -->
						<li><a href="${pageContext.request.contextPath}/profile.html">
								Mon Espace Personnel</a> <!-- 
								<ul>
									<li><a
										href="${pageContext.request.contextPath}/profile.html">Mon
											profile</a></li>
									<li><a href="${pageContext.request.contextPath}/#.html">Mes
											recherches</a></li>
									<li><a href="${pageContext.request.contextPath}/#.html">Tableau
											de bord</a></li>
									<li><a href="${pageContext.request.contextPath}/#.html">Param�tres</a></li>
									<li><a href="${pageContext.request.contextPath}/#.html">Se
											d�connecter</a></li>
								</ul>  --></li>

						<!-- Nos annonces -->
						<li><a
							href="${pageContext.request.contextPath}/annonces.html">Annonces</a></li>

						<!-- Nos professeurs -->
						<li><a
							href="${pageContext.request.contextPath}/professors.html">Professeurs</a></li>

						<!-- Nos �l�ves -->
						<li><a
							href="${pageContext.request.contextPath}/students.html">El�ves</a></li>

						<!-- Le guide du site -->
						<li><a href="${pageContext.request.contextPath}/guide.html">Le
								Guide UPPT</a></li>
					</ul>
				</div>
			</c:when>
			<c:otherwise>
				<div id="menu">
					<ul>
						<!-- Nos annonces -->
						<li><a
							href="${pageContext.request.contextPath}/annonces.html">Annonces</a></li>

						<!-- Nos professeurs -->
						<li><a
							href="${pageContext.request.contextPath}/professors.html">Professeurs</a></li>

						<!-- Nos �l�ves -->
						<li><a
							href="${pageContext.request.contextPath}/students.html">El�ves</a></li>

						<!-- Le guide du site -->
						<li><a href="${pageContext.request.contextPath}/guide.html">Le
								Guide UPPT</a></li>
					</ul>
				</div>

				<div id="menu-login">
					<ul>					
						<!-- Login -->
						<li><a href="${pageContext.request.contextPath}/login.html">Connexion</a></li>

						<!-- Inscription -->
						<li><a class="small"
							href="${pageContext.request.contextPath}/inscription.html">Inscription</a></li>
					</ul>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</div>











<!-- <div id="titre_principal">

	<div class="icon">
		<div id="label">
			<a href="${pageContext.request.contextPath}/home.html"> <img
				src="#" alt="Logo UPPT" />
			</a>
		</div>
	</div>

	<h2>Un Prof Pour Tous</h2>
</div>

<nav>
	<c:choose>
		<c:when test="${!empty user}">
			<!-- <div id="div-menu-profile">  -->
<!-- 		<ul id="menu-profile">
				<!-- Profile -->
<!--			<li><a href="#">Hello <c:out
							value="${user.firstName} ${user.lastName}"></c:out></a>
					<ul>
						<li><a href="${pageContext.request.contextPath}/profile.html">Mon
								profile</a></li>
						<li><a href="${pageContext.request.contextPath}/#.html">Mes
								recherches</a></li>
						<li><a href="${pageContext.request.contextPath}/#.html">Tableau
								de bord</a></li>
						<li><a href="${pageContext.request.contextPath}/#.html">Param�tres</a></li>
						<li><a href="${pageContext.request.contextPath}/#.html">Se
								d�connecter</a></li>
					</ul></li>
			</ul>
			<!-- </div>  -->
<!--	</c:when>
		<c:otherwise>
			<ul>
				<li>
					<form action="${pageContext.request.contextPath}/login.html">
						<input type="submit" value="SE CONNECTER">
					</form>
				</li>
				<li>
					<form action="${pageContext.request.contextPath}/inscription.html">
						<input type="submit" value="S'INSCRIRE">
					</form>
				</li>
			</ul>

		</c:otherwise>
	</c:choose>
</nav>
<hr>
-->