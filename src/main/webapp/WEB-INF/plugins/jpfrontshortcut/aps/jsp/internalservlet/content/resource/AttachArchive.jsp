<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-core" prefix="wpsa" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="wpfssa" uri="/WEB-INF/plugins/jpfrontshortcut/apsadmin/tld/jpfrontshortcut-apsadmin-core.tld" %>
<%--
<wp:headInfo type="JS" info="../../plugins/jpfastcontentedit/static/js/moo-japs/moo-jAPS-0.2.js" />

<s:set name="js_for_tab">

//per categorie
window.addEvent('domready', function(){
	var catTree  = new Wood({
		menuToggler: "subTreeToggler",
		rootId: "categoryTree",
		openClass: "node_open",
		closedClass: "node_closed",
		showTools: "true",
		expandAllLabel: "<s:text name="label.expandAll" />",
		collapseAllLabel: "<s:text name="label.collapseAll" />",
		type: "tree",
		<s:if test="%{selectedNode != null && !(selectedNode.equalsIgnoreCase(''))}">
		startIndex: "fagianonode_<s:property value="selectedNode" />",
		</s:if>
		toolTextIntro: "<s:text name="label.introExpandAll" />",
		toolexpandAllLabelTitle: "<s:text name="label.expandAllTitle" />",
		toolcollapseLabelTitle: "<s:text name="label.collapseAllTitle" />"
	});

});

</s:set>
<wp:headInfo type="JS_RAW" info="${js_for_tab}" />
--%>
<h3><wp:i18n key="jpfastcontentedit_CHOOSE_ATTACH" /></h3>
<s:form id="formform" action="search" namespace="/do/jpfrontshortcut/Content/Resource" theme="simple">

	<fieldset>
		<legend><wp:i18n key="jpfastcontentedit_SEARCH_FILTERS" /></legend>
		<p>
			<wpsf:hidden name="resourceTypeCode" />
			<label for="text"><wp:i18n key="jpfastcontentedit_DESCRIPTION" />:</label><br />
			<wpsf:textfield useTabindexAutoIncrement="true" name="text" id="text" cssClass="text" />
		</p>
		<p>
			<wp:i18n key="jpfastcontentedit_CATEGORY" />:
		</p>
		<ul id="categoryTree" class="archive-category-list">
			<s:set name="inputFieldName" value="'categoryCode'" />
			<s:set name="selectedTreeNode" value="selectedNode" />
			<s:set name="liClassName" value="'category'" />
			<s:set name="currentRoot" value="categoryRoot" />
			<s:include value="/WEB-INF/apsadmin/jsp/common/treeBuilder.jsp" />
		</ul>
	</fieldset>
	<p>
		<s:set name="search_label"><wp:i18n key="jpfastcontentedit_SEARCH" /></s:set>
		<s:url var="executeSearchUrlVar" namespace="/do/jpfrontshortcut/Content/Resource" action="search" />
		<sj:submit targets="form-container" indicator="indicator" href="%{#executeSearchUrlVar}" 
				   value="%{#search_label}" button="true" />
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
				<s:set name="resourceInstance" value="%{#resource.getInstance()}"></s:set>
				<li class="archive-item n<s:property value="(#archiveItemStatusVar.count-1)%4" />">
					<p>
						<wpfssa:actionParam action="joinResource" var="joinResourceActionNameVar" >
							<wpfssa:actionSubParam name="resourceId" value="%{#resourceid}" />
						</wpfssa:actionParam>
						<s:url var="joinResourceActionVar" action="%{#joinResourceActionNameVar}" />
						<sj:submit targets="form-container" value="%{getText('label.join')}" 
								   button="true" href="%{#joinResourceActionVar}" />
						<a href="<s:property value="%{#resource.documentPath}" />" ><img src="<wp:resourceURL/>administration/img/icons/resourceTypes/<s:property value="%{getIconFile(#resourceInstance.fileName)}"/>" alt="<s:property value="%{#resourceInstance.fileName}"/>" title="<s:property value="%{#resourceInstance.fileName}"/>" /></a><br /><s:property value="%{#resourceInstance.fileLenght}"/></dt>
						<span class="description"><s:property value="#resource.descr" /></span>
					</p>
			</s:iterator>
		</ul>
		<div class="archive-pager">
			<s:include value="/WEB-INF/plugins/jpfrontshortcut/aps/jsp/internalservlet/include/pager_formBlock.jsp" />
		</div>
	</wpfssa:subset>
	
	<%-- //FIXME insert cancel action here --%>
	<p class="lower-actions">
		<sj:submit value="Cancel, Back to Edit Content"  button="true"  targets="form-container" />
	</p>
</s:form>