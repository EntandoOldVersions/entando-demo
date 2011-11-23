<%@ taglib prefix="jacms" uri="/jacms-aps-core" %>
<%@ taglib prefix="fce" uri="/jpfastcontentedit-aps-core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<wp:headInfo type="CSS" info="../../plugins/jpfastcontentedit/static/css/jpfastcontentedit.css" />
<wp:headInfo type="CSS" info="showlets/content_viewer_list.css" />

<jacms:contentList listName="contentList" titleVar="titleVar" pageLinkVar="pageLinkVar" pageLinkDescriptionVar="pageLinkDescriptionVar" userFilterOptionsVar="userFilterOptionsVar" />
<div class="content_viewer_list content_viewer_list_<wp:currentShowlet param="config" configParam="contentType"/> content_viewer_list_<wp:currentShowlet param="config" configParam="contentType"/>_<wp:currentShowlet param="config" configParam="modelId"/>">
	<c:if test="${null != titleVar}">
		<h2><span><c:out value="${titleVar}" /></span></h2>
	</c:if>
 
	<c:set var="userFilterOptionsVar" value="${userFilterOptionsVar}" scope="request" />
	<c:import url="/WEB-INF/plugins/jacms/aps/jsp/showlets/inc/userFilter-module.jsp" />

	<c:choose>
	<c:when test="${!empty contentList}">
		<fce:allowedContents var="allowedContents" /><c:set var="allowedContents" value="${allowedContents}" scope="request" />

		<wp:pager listName="contentList" objectName="groupContent" pagerIdFromFrame="true" advanced="true" offset="5">
			<c:set var="group" value="${groupContent}" scope="request" />
			<ul>
			<c:forEach var="contentId" items="${contentList}" begin="${groupContent.begin}" end="${groupContent.end}">
				<li><jacms:content contentId="${contentId}" />
					<c:set var="contentId" value="${contentId}" scope="request" />
					<c:import url="/WEB-INF/plugins/jpfastcontentedit/aps/jsp/showlets/inc/edit-shortcuts.jsp" />
				</li> 
			</c:forEach>
			</ul>
			<span class="widget_noscreen">
			<c:import url="/WEB-INF/plugins/jacms/aps/jsp/showlets/inc/pagerBlock.jsp" />
			</span>
		</wp:pager>
	</c:when>
	<c:otherwise><p><wp:i18n key="LIST_VIEWER_EMPTY" /></p></c:otherwise>
	</c:choose>
					
	<wp:ifauthorized permission="jpfastcontentedit_editContents">
		<p class="jpfastcontentedit-newshortcut"><a class="linkInEvidenza" href="<wp:url page="fastcontentedit" >
				<wp:parameter name="contentTypeCode" ><wp:currentShowlet param="config" configParam="contentType" /></wp:parameter>
				<wp:parameter name="finalPageDest" ><wp:currentPage param="code" /></wp:parameter>
			</wp:url>" ><wp:i18n key="jpfastcontentedit_NEW_CONTENT" />
		</a></p>
	</wp:ifauthorized>
					
	<c:if test="${not empty pageLinkVar && not empty pageLinkDescriptionVar}">
		<p class="vai"><a class="menu-item" href="<wp:url page="${pageLinkVar}"/>" title="<c:out value="${pageLinkDescriptionVar}" />"><wp:i18n key="VIEW_ALL" /></a></p>
	</c:if>
	
</div>