<%@ page contentType="charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="jacms" uri="/jacms-aps-core" %>
<%@ taglib prefix="fce" uri="/jpfastcontentedit-aps-core" %>
<jacms:contentInfo param="authToEdit" var="canEditThis" />
<jacms:contentInfo param="contentId" var="myContentId" />
<c:if test="${canEditThis}">
<span class="widget_noscreen">
	<div class="bar-content-edit">
		<p>
			<a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/jacms/Content/edit.action?contentId=<jacms:contentInfo param="contentId" />" title="<wp:i18n key="EDIT_THIS_CONTENT" />">
			&dArr;
			<img src="<wp:resourceURL />administration/common/img/icons/edit-content.png" width="22" height="22" alt="<wp:i18n key="EDIT_THIS_CONTENT" />" />
			&dArr;
			</a>
		</p>
	</div>
</span>
</c:if>
<jacms:content publishExtraTitle="true" />