<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<s:if test="#lang.default">
	<ul class="boolean">
		<li>
			<wpsf:radio useTabindexAutoIncrement="true" name="%{#attributeTracer.getFormFieldName(#attribute)}" id="true_%{#attribute_id}" value="true" checked="%{#attribute.value == true}" />
			&#32;<label for="true_<s:property value="%{#attribute_id}" />"><wp:i18n key="YES" /></label>
		</li>
		<li>
			<wpsf:radio useTabindexAutoIncrement="true" name="%{#attributeTracer.getFormFieldName(#attribute)}" id="false_%{#attribute_id}" value="false" checked="%{#attribute.value == false}" />
			&#32;<label for="false_<s:property value="%{#attribute_id}" />"><wp:i18n key="NO" /></label>
		</li>
	</ul>
</s:if>