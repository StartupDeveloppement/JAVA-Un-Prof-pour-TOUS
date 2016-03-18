<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="http://fonts.googleapis.com/css?family=Varela"
	rel="stylesheet" />
<link
	href="<c:url value="/resources/templated-plaindisplay/default.css"/>"
	rel="stylesheet" type="text/css" media="all" />
<link
	href="<c:url value="/resources/templated-plaindisplay/fonts.css" />"
	rel="stylesheet" type="text/css" media="all" />
<title>UPPT | Publier une annonce</title>
</head>
<body>

	<!--  HEADER INCLUSION  -->

	<div id="">
		<%@ include file="header.jsp"%>
	</div>

	<div class="container">

		<!-- Bloc formulaire d'annonce  -->
		<!--  On passe l'ID de l'utilisateur en paramètre -->
		<div>
			<h3>Indiquez les informations de l'annonce à publier</h3>

			<!--  Condition pour user ID, si vide alors userID = 0  -->

			<c:set var="userID" value="${!empty user ? user.id : 0}" />

			<!--  Formulaire -->

			<form:form modelAttribute="adBean" method="POST"
				action="${pageContext.request.contextPath}/annonces/create/${userID}">

				<table class="form">
					<tr>
						<td><c:out value="${formStatus}"></c:out></td>
					</tr>
					<tr>
						<td><form:label path="title">Titre de l'annonce</form:label></td>
					</tr>
					<tr>
						<td><form:input id="ad_title" name="title" path="title"
								placeholder="Saisir le titre de l'annonce" /></td>
					</tr>

					<tr>
						<td><form:label path="subject">Matière</form:label></td>
					</tr>

					<tr>
						<td><form:input id="ad_subject" name="subject" path="subject"
								placeholder="ex: Maths" /></td>
					</tr>

					<tr>
						<td><form:label path="costPerHour">Tarif (€/h)</form:label></td>
					</tr>

					<tr>
						<td><form:input id="ad_costPerHour" name="costPerHour"
								path="costPerHour" placeholder="ex: Maths" /></td>
					</tr>

					<tr>
						<td><form:label path="location">Lieu</form:label></td>
					</tr>
					<tr>
						<td><form:input id="ad_location" name="location"
								placeholder="ville ou adresse du cours" path="location" /></td>
					</tr>

					<tr>
						<td><form:label path="description">Desciption de l'annonce</form:label></td>
					</tr>
					<tr>
						<td><form:textarea id="ad_description" name="description"
								path="description" placeholder="Détails de l'annonce" /></td>
					</tr>

					<tr>
						<td><input type="submit" value="Publier" /></td>
					</tr>

				</table>

			</form:form>

		</div>

	</div>

	<!--  FOOTER INCLUSION  -->
	<div class="footer">
		<%@ include file="footer.jsp"%>
	</div>

</body>
</html>