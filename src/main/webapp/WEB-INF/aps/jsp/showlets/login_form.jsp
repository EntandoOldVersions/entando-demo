<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.Random" %>
<%
	pageContext.setAttribute("randomNumber1", new Random().nextInt(9999));
	pageContext.setAttribute("randomNumber2", new Random().nextInt(9999));
%>
<c:if test="${sessionScope.currentUser == 'guest'}">
	<c:set var="labelLoginCode">
		window.addEvent("domready", function(){
			var usernameId = "login_form_username<c:out value="${randomNumber1}" />";
			var el_label_username = document.getElement('label[for="'+usernameId+'"]');
			var el_label_username_text = el_label_username.get("text");
			var el_username = document.id(usernameId);
			var el_username_value = el_username.get("value");
			if (el_username_value.length == 0) {
				el_username.set("value", el_label_username_text);
			}
			el_username.addEvent("focus", function(){
				if (el_username.get("value")==el_label_username_text) {
					el_username.set("value","");
					el_username.fireEvent("change");
				}
			});
			el_username.addEvent("blur", function(){
				if (el_username.get("value").length == 0) {
					el_username.set("value", el_label_username_text);
					el_username.fireEvent("change");
				}
			});
			el_label_username.destroy();
		});
	</c:set>
	<wp:headInfo type="JS_RAW" var="labelLoginCode" />
</c:if>

<wp:headInfo type="CSS"  info="showlets/login_form.css"/>
<div class="login_form <c:if test="${sessionScope.currentUser != 'guest'}"> logged</c:if>">
	<c:choose>
		<c:when test="${sessionScope.currentUser != 'guest'}">
			<p>
				<span class="important"><wp:i18n key="WELCOME" />, <c:out value="${sessionScope.currentUser}"/>!</span>&#32;|&#32;
				<a href="<wp:url page="profile" />">Edit Profile</a>&#32;|&#32;
				<wp:ifauthorized permission="enterBackend">
					<%--
					<a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<wp:info key="currentLang" />&amp;backend_client_gui=normal" title="<wp:i18n key="ADMINISTRATION_BASIC_GOTO" />"><wp:i18n key="ADMINISTRATION_BASIC" /></a>,
					<a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<wp:info key="currentLang" />&amp;backend_client_gui=advanced" title="<wp:i18n key="ADMINISTRATION_MINT_GOTO" />"><wp:i18n key="ADMINISTRATION_MINT" /></a>
					--%>
					<a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<wp:info key="currentLang" />&amp;backend_client_gui=advanced" title="<wp:i18n key="ADMINISTRATION_MINT_GOTO" />">Administration</a>
					|
				</wp:ifauthorized>
				<a class="button" href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/logout.action"><wp:i18n key="LOGOUT" /></a>
			</p>
		</c:when>
		<c:otherwise>
			<form action="<wp:url/>" method="post">
				<c:if test="${null != param['returnUrl']}">
				<input type="hidden" name="returnUrl" value="<c:out value="${param['returnUrl']}" />" />
				</c:if>
				<p>
					<c:if test="${accountExpired}">
						<span class="error"><wp:i18n key="USER_STATUS_EXPIRED" /></span>
					</c:if>
					<c:if test="${wrongAccountCredential}">
						<span class="error"><wp:i18n key="USER_STATUS_CREDENTIALS_INVALID" /></span>
					</c:if>
					<label for="login_form_username<c:out value="${randomNumber1}" />"><wp:i18n key="USERNAME" /></label>
					<input  id="login_form_username<c:out value="${randomNumber1}" />" type="text" name="username" />
					<label for="login_form_password<c:out value="${randomNumber2}" />"><wp:i18n key="PASSWORD" /></label>
					<input  id="login_form_password<c:out value="${randomNumber2}" />" type="password" name="password" />
					<input type="submit" value="<wp:i18n key="LOGIN" />" />
				</p>
			</form>
		</c:otherwise>
	</c:choose>
</div>