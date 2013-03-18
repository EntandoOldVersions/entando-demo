<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<wp:headInfo type="CSS" info="showlets/navigation_menu.css"/>
<wp:currentPage param="code" var="currentPageCode" />
<c:set var="test_counter" value="${-1}" />
<wp:nav var="page"><c:set var="test_counter" value="${test_counter+1}" /></wp:nav>
<wp:currentPage param="code" var="surfedCode"/>
<div class="navigation_menu">
	<ul class="navigation_menu_ul">
	<wp:nav var="page">
		<li class="navigation_menu_li <c:if test="${page.code == currentPageCode}"> current </c:if>">
			<a href="<c:out value="${page.url}" />" class="link"><span><c:out value="${page.title}" /></span></a>
			<c:set var="currentTarget" value="${page}" scope="request" />
			<c:import url="/WEB-INF/plugins/jpfrontshortcut/aps/jsp/showlets/inc/navigation_targetOptions.jsp" />
		</li>
	</wp:nav>
	</ul>
</div>