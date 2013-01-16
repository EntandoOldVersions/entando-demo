<%-- 
    Document   : edit-shortcuts
    Created on : 9-nov-2011, 10.54.06
    Author     : andrea
--%>
<%@ page contentType="charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="jacms" uri="/jacms-aps-core" %>
<%@ taglib prefix="fce" uri="/jpfastcontentedit-aps-core" %>
<wp:ifauthorized permission="jpfastcontentedit_editContents">
	<wp:headInfo type="CSS" info="../../plugins/jpfastcontentedit/static/css/jpfastcontentedit.css" />
	<c:set value="${allowedContents}" var="allowedContents" scope="page" />
	<fce:isContentAllowed listName="allowedContents" contentId="${contentId}">
		<div class="jpfastcontentedit-editbar">
			<a href="<wp:url page="fastcontentedit" >
					<wp:parameter name="contentId" ><c:out value="${contentId}" /></wp:parameter>
					<wp:parameter name="contentTypeCode" ><wp:currentShowlet param="config" configParam="contentType" /></wp:parameter>
					<wp:parameter name="finalPageDest" ><wp:currentPage param="code" /></wp:parameter>
				</wp:url>" ><wp:i18n key="jpfastcontentedit_EDIT_CONTENT" />
			</a>
			&#32;
			<a href="<wp:url page="fastcontentedit" >
					<wp:parameter name="delete" >true</wp:parameter>
					<wp:parameter name="contentId" ><c:out value="${contentId}" /></wp:parameter>
					<wp:parameter name="contentTypeCode" ><wp:currentShowlet param="config" configParam="contentType" /></wp:parameter>
					<wp:parameter name="finalPageDest" ><wp:currentPage param="code" /></wp:parameter>
				</wp:url>" ><wp:i18n key="jpfastcontentedit_REMOVE_CONTENT" />
			</a>
		</div>
	</fce:isContentAllowed>
</wp:ifauthorized>
