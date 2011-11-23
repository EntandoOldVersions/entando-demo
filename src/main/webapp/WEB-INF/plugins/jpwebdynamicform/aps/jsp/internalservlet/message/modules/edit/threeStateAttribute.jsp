<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<s:if test="#lang.default">
	<ul class="threestate">
		<li>
			<wpsf:radio useTabindexAutoIncrement="true" name="%{#attributeTracer.getFormFieldName(#attribute)}" id="none_%{#attribute_id}"
					value="" checked="%{#attribute.booleanValue == null}" />
			&#32;
			<label for="none_<s:property value="%{#attribute_id}" />">
				<wp:i18n key="jpwebdynamicform_${typeCodeKey}_${attributeNameI18nKey}_NONE" />
			</label>
		</li>
		<li>
			<wpsf:radio useTabindexAutoIncrement="true" name="%{#attributeTracer.getFormFieldName(#attribute)}" id="true_%{#attribute_id}"
			value="true" checked="%{#attribute.booleanValue != null && #attribute.booleanValue == true}" />
			&#32;
			<label for="true_<s:property value="%{#attribute_id}" />">
				<wp:i18n key="jpwebdynamicform_${typeCodeKey}_${attributeNameI18nKey}_YES" />
			</label>
		</li>
		<li>
			<wpsf:radio useTabindexAutoIncrement="true" name="%{#attributeTracer.getFormFieldName(#attribute)}" id="false_%{#attribute_id}"
					value="false" checked="%{#attribute.booleanValue != null && #attribute.booleanValue == false}" />
			&#32;
			<label for="false_<s:property value="%{#attribute_id}" />"> 
				<wp:i18n key="jpwebdynamicform_${typeCodeKey}_${attributeNameI18nKey}_NO" />
			</label>
		</li>
	</ul>
</s:if>