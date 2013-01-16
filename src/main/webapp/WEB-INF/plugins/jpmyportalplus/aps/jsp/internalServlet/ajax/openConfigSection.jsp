<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="wpsa" uri="/apsadmin-core" %>
<%@ taglib prefix="wpsf" uri="/apsadmin-form" %>

<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<div style="float: left; width: 100%;">
	<h2>Funzioni Widget</h2>
	<s:url namespace="/do/jpcmsshortcut/test" action="/testIntro" var="hrefURL" />
<!-- aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -->
	<sj:a
		openDialog="widgetDialog"
		href="%{hrefURL}"
		button="true"
	>
		open popup
	</sj:a>
<!-- aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa -->
</div>
