<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<wp:headInfo type="CSS" info="../../plugins/jpwebdynamicform/static/css/jpwebdynamicform.css"/>
<div class="jpwebdynamicform">
<p>
	<wp:i18n key="jpwebdynamicform_MESSAGE_SAVE_CONFIRMATION" />
	&#32;<a href="<wp:url><wp:urlPar name="typeCode"><s:property value="typeCode" /></wp:urlPar></wp:url>"><wp:i18n key="jpwebdynamicform_MESSAGE_REQUEST_LINK" /></a>
</p>
</div>
