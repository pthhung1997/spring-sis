<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/pages/_include.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Log in</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	th:href="@{/webjars/bootstrap/3.3.7/css/bootstrap.min.css}"
	rel="stylesheet" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"
	th:src="@{/webjars/jquery/1.12.4/jquery.min.js}"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	th:src="@{/webjars/bootstrap/3.3.7/js/bootstrap.min.js}"></script>
</head>
<body>

	<div class="container" style="margin-top: 40px;">
		<div style="text-align: center">
			<a href="${pageContext.request.contextPath}/login?lang=en"><spring:message
					code="lang.en"></spring:message></a> | <a
				href="${pageContext.request.contextPath}/login?lang=vi"><spring:message
					code="lang.vi"></spring:message></a> <br /> <br />
		</div>
		<div style="text-align: center">
			<c:if test="${param.error == 'true'}">
				<div style="color: red; margin: 10px 0px;">

					Login Failed!!!<br />
					<spring:message code = "error.login"></spring:message>

				</div>
			</c:if>
		</div>


		<div>
			<div>
				<span class="label label-default" style="font-size: 20px;"><spring:message
						code="label.login"></spring:message></span>
				<form
					action="${pageContext.request.contextPath}/j_spring_security_check"
					method="POST" class="col-xs-4 col-xs-push-4"
					style="margin-top: 30px; padding: 0px;">
					<div class="form-group">
						<label for="username"><spring:message
								code="label.username"></spring:message></label> <input type="text"
							class="form-control" id="lbUsername"
							placeholder="<spring:message code="label.username"/>"
							name="username">
					</div>
					<div class="form-group">
						<label for="password"><spring:message
								code="label.password"></spring:message></label> <input type="password"
							class="form-control" id="lbPassword"
							placeholder="<spring:message code ="label.password"/>"
							name="password">
					</div>
					<div class="checkbox">
						<label> <input type="checkbox"> Check me out </label>
					</div>


					<input type="submit" class="btn btn-default" value="Submit"></input>
				</form>
			</div>
		</div>


	</div>
</body>
</html>