<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!-- users start -->
	<wp:i18n key="USER_LOGIN_GUEST" var="current_user_login" />
	<c:set var="imgURL"><wp:imgURL />user-<c:out value="GUEST${sessionScope.currentUser != 'guest' && sessionScope.currentUser!=current_user_login?'-grey':''}" />.png</c:set>
	<div class="users-userblock">
		<div class="colum-left-40"><a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/logout" title="<wp:i18n key="BEGIN_GUEST" />&#32;<wp:i18n key="USER_NAME_GUEST" />"><img src="<c:out value="${imgURL}"/>" alt="" /></a></div>
		<div class="colum-right-40">
			<div class="column-container">
				<h2 class="title"><wp:i18n key="USER_NAME_GUEST" /></h2>
				<p><em><wp:i18n key="USER_DESCR_GUEST" /></em></p>
				<%--
				<p class="margin-top small"><strong><wp:i18n key="LABEL_USER" /></strong>:&#32;<wp:i18n key="USER_LOGIN_GUEST" /></p>
				<p class="small"><strong><wp:i18n key="LABEL_PASS" /></strong>:&#32;<wp:i18n key="USER_PASS_GUEST" /></p>
				--%>
				<c:if test="${sessionScope.currentUser != 'guest'}">
					<p class="margin-top"><a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/logout"><wp:i18n key="BEGIN_GUEST" /></a></p>
				</c:if>
			</div>
		</div>
	</div>
	<c:forEach begin="2" end="4" varStatus="status">
		<wp:i18n key="USER_LOGIN_${status.count}" var="current_user_login" />
		<c:set var="imgURL"><wp:imgURL />user-<c:out value="${status.count}${sessionScope.currentUser != 'guest' && sessionScope.currentUser!=current_user_login?'-grey':''}" />.png</c:set>
		<div class="users-userblock">
			<div class="colum-left-40">
				<c:choose>
						<c:when test="${sessionScope.currentUser == 'guest' || sessionScope.currentUser!=current_user_login}">
								<a href="<wp:url page="homepage" paramRepeat="false" />?username=<wp:i18n key="USER_LOGIN_${status.count}" />&amp;password=<wp:i18n key="USER_PASS_${status.count}" />" title="<wp:i18n key="LOGIN_AS" />&#32;<wp:i18n key="USER_NAME_${status.count}" />"><img src="<c:out value="${imgURL}"/>" alt="" /></a>
						</c:when>
						<c:otherwise>
							<img src="<c:out value="${imgURL}"/>" alt="" />
						</c:otherwise>
				</c:choose>
			</div>						
			<div class="colum-right-40">
				<div class="column-container">
					<h2 class="title"><wp:i18n key="USER_NAME_${status.count}" /></h2>
					<p><em><wp:i18n key="USER_DESCR_${status.count}" /></em></p>
					<c:choose>
						<c:when test="${sessionScope.currentUser == 'guest' || sessionScope.currentUser!=current_user_login}">
							<p class="margin-top small"><strong><wp:i18n key="LABEL_USER" /></strong>:&#32;<wp:i18n key="USER_LOGIN_${status.count}" /></p>
							<p class="small"><strong><wp:i18n key="LABEL_PASS" /></strong>:&#32;<wp:i18n key="USER_PASS_${status.count}" /></p>
	<p class="margin-top"><a href="<wp:url page="homepage" paramRepeat="false" />?username=<wp:i18n key="USER_LOGIN_${status.count}" />&amp;password=<wp:i18n key="USER_PASS_${status.count}" />"><wp:i18n key="LOGIN_AS" />&#32;<wp:i18n key="USER_NAME_${status.count}" /></a></p>
						</c:when>
						<c:when test="${sessionScope.currentUser==current_user_login}">
							<wp:ifauthorized permission="enterBackend"><p class="margin-top"><a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/main.action?request_locale=<wp:info key="currentLang" />&amp;backend_client_gui=advanced" title="<wp:i18n key="ADMINISTRATION_MINT_GOTO" />">Administration</a></p></wp:ifauthorized>
							<p class="margin-top"><a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/logout"><wp:i18n key="LOGOUT" /></a></p>
						</c:when>
					</c:choose>
				</div>
			</div>
		</div>
	</c:forEach>
<!-- users end -->
