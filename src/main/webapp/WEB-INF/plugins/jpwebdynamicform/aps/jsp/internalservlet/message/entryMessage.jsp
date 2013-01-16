<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-core" prefix="wpsa" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<s:set name="titleKey">jpwebdynamicform_TITLE_<s:property value="typeCode"/></s:set>
<s:set name="typeCodeKey" value="typeCode" />
<s:set name="typeCodeKey" value="#typeCodeKey" scope="page" />
<s:set name="lang" value="defaultLang" />
<wp:headInfo type="CSS" info="../../plugins/jpwebdynamicform/static/css/jpwebdynamicform-type-${typeCodeKey}.css"/>
<wp:headInfo type="CSS" info="../../plugins/jpwebdynamicform/static/css/jpwebdynamicform.css"/>
<div class="jpwebdynamicform jpwebdynamicform<c:out value="${typeCodeKey}" />">
	<h2>
		<wp:i18n key="${titleKey}" />
	</h2>

	<form action="<wp:action path="/ExtStr2/do/jpwebdynamicform/Message/User/send.action"/>" method="post">

		<s:if test="hasFieldErrors()||hasActionErrors()">
			<div class="error">
			<h3 class="title"><wp:i18n key="MESSAGE_TITLE_FIELDERRORS" /></h3>
		</s:if>
		<s:if test="hasFieldErrors()">
				<ul>
					<s:iterator value="fieldErrors">
						<s:iterator value="value">
							<li><s:property escape="false" /></li>
						</s:iterator>
					</s:iterator>
				</ul>
		</s:if>
		<s:if test="hasActionErrors()">
				<ul>
					<s:iterator value="actionErrors">
						<li><s:property escape="false" /></li>
						<%--
						<s:iterator value="value">
							<li><s:property escape="false" /></li>
						</s:iterator>
						--%>
					</s:iterator>
				</ul>
		</s:if>
		<s:if test="hasFieldErrors()||hasActionErrors()">
			</div>
		</s:if>

		<p>
			<wpsf:hidden name="typeCode" />
			<wp:i18n key="jpwebdynamicform_INFO" />
		</p>

		<%-- START CICLO ATTRIBUTI --%>
		<s:set name="lang" value="defaultLang" />
		<s:iterator value="apsEntity.attributeList" var="attribute">
			<%-- INIZIALIZZAZIONE TRACCIATORE --%>
			<s:if test="%{#attribute.active}">
				<wpsa:tracerFactory var="attributeTracer" lang="%{#lang.code}" />
				<s:set var="i18n_attribute_name">jpwebdynamicform_<s:property value="typeCode"/>_<s:property value="#attribute.name" /></s:set>
				<s:set var="attribute_id">jpwebdynamicform_<s:property value="typeCode"/>_<s:property value="#attribute.name" /></s:set>
				<s:include value="/WEB-INF/plugins/jpwebdynamicform/aps/jsp/internalservlet/message/inc/iteratorAttribute.jsp" />
			</s:if>
		</s:iterator>
		<%-- END CICLO ATTRIBUTI --%>

		<s:set var="savelabel"><wp:i18n key="jpwebdynamicform_${typeCode}_SAVE" /></s:set>
		<p><wpsf:submit value="%{savelabel}" /></p>
	</form>
</div>