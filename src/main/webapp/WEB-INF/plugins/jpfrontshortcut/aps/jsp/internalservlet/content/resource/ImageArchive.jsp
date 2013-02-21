<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-core" prefix="wpsa" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="wpfssa" uri="/WEB-INF/plugins/jpfrontshortcut/apsadmin/tld/jpfrontshortcut-apsadmin-core.tld" %>

<h3><wp:i18n key="jpfastcontentedit_CHOOSE_IMAGE" /></h3>
<s:form id="formform" action="search" namespace="/do/jpfrontshortcut/Content/Resource" theme="simple">
	<fieldset>
		<legend><wp:i18n key="jpfastcontentedit_SEARCH_FILTERS" /></legend>
		<p>
			<wpsf:hidden name="resourceTypeCode" />
			<label for="text"><wp:i18n key="jpfastcontentedit_DESCRIPTION" />:</label><br />
			<wpsf:textfield useTabindexAutoIncrement="true" name="text" id="text" cssClass="text" />
		</p>
		<p>
			<label for="category"><wp:i18n key="jpfastcontentedit_CATEGORY" />:</label><br />
			<s:set name="currentRoot" value="categoryRoot" />
			<select name="categoryCode" id="category" >
<s:include value="/WEB-INF/plugins/jpfrontshortcut/aps/jsp/internalservlet/content/resource/inc/category-selectItem.jsp" />
			</select>
		</p>
	</fieldset>

	<p>
		<s:set name="search_label"><wp:i18n key="jpfastcontentedit_SEARCH" /></s:set>
		<s:url var="executeSearchUrlVar" namespace="/do/jpfrontshortcut/Content/Resource" action="search" />
		<sj:submit 
			targets="form-container" 
			indicator="indicator" 
			href="%{#executeSearchUrlVar}" 
			value="%{#search_label}" 
			button="true" />
	</p>

	<wpfssa:subset source="resources" count="12" objectName="groupResource" advanced="true" offset="5">
		<s:set name="group" value="#groupResource" />
		<s:set var="pagerSubmitActionNameVar" value="'search'" />

		<div class="archive-pager">
			<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pagerInfo.jsp" />
			<s:include value="/WEB-INF/plugins/jpfrontshortcut/aps/jsp/internalservlet/include/pager_formBlock.jsp" />
		</div>
		<ul class="archive-list">
		<s:iterator var="resourceid" status="archiveItemStatusVar">
			<s:set name="resource" value="%{loadResource(#resourceid)}"></s:set>
			<li class="archive-item n<s:property value="(#archiveItemStatusVar.count-1)%4" />">
				<p>
					<wpfssa:actionParam action="joinResource" var="joinResourceActionNameVar" >
						<wpfssa:actionSubParam name="resourceId" value="%{#resourceid}" />
					</wpfssa:actionParam>
					<s:url var="joinResourceActionVar" action="%{#joinResourceActionNameVar}" />
					<sj:submit targets="form-container" value="%{getText('label.join')}" 
							   button="true" href="%{#joinResourceActionVar}" />
					<img class="item-image" src="<s:property value="%{#resource.getImagePath(1)}"/>" alt=" " />
					<span class="description"><s:property value="#resource.descr" /></span>
				</p>
			</li>
		</s:iterator>
		</ul>
		<div class="archive-pager">
			<s:include value="/WEB-INF/plugins/jpfrontshortcut/aps/jsp/internalservlet/include/pager_formBlock.jsp" />
		</div>
	</wpfssa:subset>
	
	<p class="lower-actions">
		<s:url var="entryContentActionVar" action="backToEntryContent" />
		<sj:submit value="Cancel, Back to Edit Content" href="%{#entryContentActionVar}" button="true" targets="form-container" />
	</p>
</s:form>