<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Paie - App</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body class="container">
	<h1>Connexion</h1>

	<!-- Spring Security s'attend aux param�tres "username" et "password" -->

	<form method="post">
		Username <input name="username"> Password <input name="password">  <input
			type="submit" value="Se connecter">
			<sec:csrfInput/>
			
	</form>

	<!-- en cas d'erreur un param�tre "error" est cr�� par Spring Security -->
	<c:if test="${param.error !=null}">
	Erreur d'authentification

</c:if>
</body>
</html>