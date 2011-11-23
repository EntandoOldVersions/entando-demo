<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<wp:headInfo type="CSS" info="showlets/navigation_langbar.css"/>
<wp:info key="langs" var="langs" />
<wp:info key="currentLang" var="currentLang" />
<div class="navigation_langbar">
	<p>
		<c:forEach var="iteratorLang" items="${langs}" varStatus="status">
			<a <c:if test="${iteratorLang.code==currentLang}"> class="selected" </c:if> href="<wp:url lang="${iteratorLang.code}" paramRepeat="true" />"><wp:i18n key="LANG_${iteratorLang.code}" /></a>
			<c:if test="${not status.last}">&#32;|&#32;</c:if>
		</c:forEach>
	</p>
</div>