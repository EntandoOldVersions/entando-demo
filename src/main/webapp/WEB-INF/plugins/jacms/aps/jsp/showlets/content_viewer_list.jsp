<%@ page contentType="charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="jacms" uri="/jacms-aps-core" %>
<%
/*
	Author: William Ghelfi <william.ghelfi@elicriso.biz> - 2005/05/23
	Author: Eugenio Santoboni <eugeniosant@tiscali.it>
	Content list viewer
*/
%>
<wp:headInfo type="CSS" info="showlets/content_viewer_list.css" />
<jacms:contentList listName="contentList" titleVar="titleVar"
	pageLinkVar="pageLinkVar" pageLinkDescriptionVar="pageLinkDescriptionVar" userFilterOptionsVar="userFilterOptionsVar" />
<div class="content_viewer_list content_viewer_list_<wp:currentShowlet param="config" configParam="contentType"/> content_viewer_list_<wp:currentShowlet param="config" configParam="contentType"/>_<wp:currentShowlet param="config" configParam="modelId"/>">
	<c:if test="${null != titleVar}">
		<h2><span><c:out value="${titleVar}" /></span></h2>
	</c:if>
 
	<c:set var="userFilterOptionsVar" value="${userFilterOptionsVar}" scope="request" />
	<c:import url="/WEB-INF/plugins/jacms/aps/jsp/showlets/inc/userFilter-module.jsp" />

	<c:choose>
	<c:when test="${!empty contentList}">
		<wp:pager listName="contentList" objectName="groupContent" pagerIdFromFrame="true" advanced="true" offset="5">
			<c:set var="group" value="${groupContent}" scope="request" />
			<ul>
			<c:forEach var="contentId" items="${contentList}" begin="${groupContent.begin}" end="${groupContent.end}">
				<li><jacms:content contentId="${contentId}" /></li>
			</c:forEach>
			</ul>
			<span class="widget_noscreen">
			<c:import url="/WEB-INF/plugins/jacms/aps/jsp/showlets/inc/pagerBlock.jsp" />
			</span>
		</wp:pager>
	</c:when>
	<c:otherwise><p><wp:i18n key="LIST_VIEWER_EMPTY" /></p></c:otherwise>
	</c:choose>

	<c:if test="${not empty pageLinkVar && not empty pageLinkDescriptionVar}">
		<%--
		<p class="vai"><a class="menu-item" href="<wp:url page="${pageLinkVar}"/>" title="<c:out value="${pageLinkDescriptionVar}" />"><img src="<wp:imgURL/>configure.png" alt="details" /></a></p>
		 --%>
		<p class="vai"><a class="menu-item" href="<wp:url page="${pageLinkVar}"/>" title="<c:out value="${pageLinkDescriptionVar}" />"><wp:i18n key="VIEW_ALL" /></a></p>
	</c:if>
</div>