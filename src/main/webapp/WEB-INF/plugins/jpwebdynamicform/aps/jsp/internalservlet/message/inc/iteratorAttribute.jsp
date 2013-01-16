<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-core" prefix="wpsa" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<s:if test="#attribute.type == 'Monotext'">
	<%-- ############# ATTRIBUTO TESTO MONOLINGUA ############# --%>
	<p class="<s:include value="include_hasError.jsp" />"> 
		<label for="<s:property value="attribute_id" />"><wp:i18n key="${i18n_attribute_name}" /><s:include value="include_attributeInfo.jsp" /></label>:<br />
		<s:include value="../modules/edit/monotextAttribute.jsp" />
	</p>
</s:if>

<s:elseif test="#attribute.type == 'Text'">
	<%-- ############# ATTRIBUTO TESTO SEMPLICE MULTILINGUA ############# --%>
	<p class="<s:include value="include_hasError.jsp" />"> 
		<label for="<s:property value="attribute_id" />"><wp:i18n key="${i18n_attribute_name}" /><s:include value="include_attributeInfo.jsp" /></label>:<br />
		<s:include value="../modules/edit/monotextAttribute.jsp" />
	</p>
</s:elseif>

<s:elseif test="#attribute.type == 'Longtext'">
	<%-- ############# ATTRIBUTO TESTOLUNGO ############# --%>
	<p class="<s:include value="include_hasError.jsp" />">
		<label for="<s:property value="attribute_id" />"><wp:i18n key="${i18n_attribute_name}" /><s:include value="include_attributeInfo.jsp" /></label>:<br />
		<s:include value="../modules/edit/longtextAttribute.jsp" />
	</p>
</s:elseif>

<s:elseif test="#attribute.type == 'Hypertext'">
	<%-- ############# ATTRIBUTO TESTOLUNGO ############# --%>
	<p class="<s:include value="include_hasError.jsp" />">
		<label for="<s:property value="attribute_id" />"><wp:i18n key="${i18n_attribute_name}" /><s:include value="include_attributeInfo.jsp" /></label>:<br />
		<s:include value="../modules/edit/hypertextAttribute.jsp" />
	</p>
</s:elseif>

<s:elseif test="#attribute.type == 'Boolean'">
	<%-- ############# ATTRIBUTO Boolean ############# --%>
	<div class="<s:include value="include_hasError.jsp" />">
		<p>
				<span><wp:i18n key="${i18n_attribute_name}" /><s:include value="include_attributeInfo.jsp" /></span>:<br />
		</p>
		<s:include value="../modules/edit/booleanAttribute.jsp" />
	</div>
</s:elseif>

<s:elseif test="#attribute.type == 'ThreeState'">
	<%-- ############# ATTRIBUTO ThreeState ############# --%>
	<div class="<s:include value="include_hasError.jsp" />">
		<p>
			<span><wp:i18n key="${i18n_attribute_name}" /><s:include value="include_attributeInfo.jsp" /></span>:<br />
		</p>
		<s:include value="../modules/edit/threeStateAttribute.jsp" />
	</div>
</s:elseif>

<s:elseif test="#attribute.type == 'Number'">
	<%-- ############# ATTRIBUTO Number ############# --%>
	<p class="<s:include value="include_hasError.jsp" />">
		<label for="<s:property value="attribute_id" />"><wp:i18n key="${i18n_attribute_name}" /><s:include value="include_attributeInfo.jsp" /></label>:<br />
		<s:include value="../modules/edit/numberAttribute.jsp" />
	</p>
</s:elseif>

<s:elseif test="#attribute.type == 'Date'">
	<%-- ############# ATTRIBUTO Date ############# --%>
	<p class="<s:include value="include_hasError.jsp" />">
		<label for="<s:property value="attribute_id" />"><wp:i18n key="${i18n_attribute_name}" /><s:include value="include_attributeInfo.jsp" /></label>:<br />
		<s:include value="../modules/edit/dateAttribute.jsp" />
	</p>
</s:elseif>

<s:elseif test="#attribute.type == 'Enumerator'">
	<%-- ############# ATTRIBUTO TESTO Enumerator ############# --%>
	<p class="<s:include value="include_hasError.jsp" />">
		<label for="<s:property value="attribute_id" />"><wp:i18n key="${i18n_attribute_name}" /><s:include value="include_attributeInfo.jsp" /></label>:<br />
		<s:include value="../modules/edit/enumeratorAttribute.jsp" />
	</p>
</s:elseif>

<s:elseif test="#attribute.type == 'CheckBox'">
	<%-- ############# ATTRIBUTO CheckBox ############# --%>
	<p class="<s:include value="include_hasError.jsp" />">
		<s:include value="../modules/edit/checkBoxAttribute.jsp" />
		<label for="<s:property value="attribute_id" />"><wp:i18n key="${i18n_attribute_name}" /><s:include value="include_attributeInfo.jsp" /></label>
	</p>
</s:elseif>	

<s:elseif test="#attribute.type == 'Monolist'">
	<%-- ############# ATTRIBUTO Monolist ############# --%>
	<p class="<s:include value="include_hasError.jsp" />">
		<span><wp:i18n key="${i18n_attribute_name}" /><s:include value="include_attributeInfo.jsp" /></span>:
	</p>
	<s:include value="../modules/edit/monolistAttribute.jsp" />
</s:elseif>

<s:elseif test="#attribute.type == 'List'">
	<%-- ############# ATTRIBUTO List ############# --%>
	<div class="<s:include value="include_hasError.jsp" />">
		<p>
			<span><wp:i18n key="${i18n_attribute_name}" /><s:include value="include_attributeInfo.jsp" /></span>:<br />			
		</p>
		<s:include value="../modules/edit/monolistAttribute.jsp" />
	</div>
</s:elseif>

<s:elseif test="#attribute.type == 'Composite'">
	<%-- ############# ATTRIBUTO Composite ############# --%>
	<div class="<s:include value="include_hasError.jsp" />">
		<p>
			<span><wp:i18n key="${i18n_attribute_name}" /><s:include value="include_attributeInfo.jsp" /></span>:<br />
		</p>
		<div class="composite">
			<s:include value="../modules/edit/compositeAttribute.jsp" />
		</div>
	</div>
</s:elseif>