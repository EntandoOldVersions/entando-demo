<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<s:set var="url"><wp:url  /></s:set>
<p class="widget-center">
	<a href="<wp:url  />">
		<wp:i18n key="CONTENT_CHANGED" />
	</a>
</p>
<script type="text/javascript">
var href = "<s:property value="#url" escapeJavaScript="true" />";
var random = 'reload='+Math.floor(Math.random()*999999);
if (/\?/.test(href)) {
	href = '&'+random;
}
else {
	href = '?'+random;
}
window.location.href= href;
</script>