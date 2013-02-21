<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<%@ taglib uri="/apsadmin-core" prefix="wpsa" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="wpfssa" uri="/WEB-INF/plugins/jpfrontshortcut/apsadmin/tld/jpfrontshortcut-apsadmin-core.tld" %>

<h3><s:text name="title.configureLinkAttribute" />&#32;(<s:text name="title.step2of2" />)</h3>
<s:include value="linkAttributeConfigReminder.jsp" />

<s:form id="formform" action="joinPageLink" namespace="/do/jpfrontshortcut/Content/Link" theme="simple">

<s:if test="hasFieldErrors()">
	<div class="message message_error">
	<h4><s:text name="message.title.FieldErrors" /></h4>
		<ul>
			<s:iterator value="fieldErrors">
				<s:iterator value="value">
		            <li><s:property escape="false" /></li>
				</s:iterator>
			</s:iterator>
		</ul>
	</div>
</s:if>

<p class="noscreen">
	<s:if test="contentId == null">
		<wpsf:hidden name="linkType" value="2"/>
	</s:if>
	<s:else>
		<wpsf:hidden name="contentId"/>
		<wpsf:hidden name="linkType" value="4"/>
	</s:else>
	<s:iterator value="treeNodesToOpen" var="treeNodeToOpenVar"><wpsf:hidden name="treeNodesToOpen" value="%{#treeNodeToOpenVar}"/></s:iterator>
</p>
<fieldset><legend><s:text name="title.pageTree" /></legend>
<s:set name="currentRoot" value="allowedTreeRootNode" />
<select name="selectedNode" id="selectedNode" >
	<s:include value="/WEB-INF/plugins/jpfrontshortcut/aps/jsp/internalservlet/content/modules/include/linkAttribute/inc/page-selectItem.jsp" />
</select>
</fieldset>

<p class="centerText">
	<s:url var="joinLinkActionVar" action="joinPageLink" />
	<sj:submit targets="form-container" value="%{getText('label.join')}" title="%{getText('label.join')}" 
			   button="true" href="%{#joinLinkActionVar}" cssClass="button" />
</p>

<p class="lower-actions">
	<s:url var="entryContentActionVar" action="backToEntryContent" />
	<sj:submit value="Cancel, Back to Edit Content" href="%{#entryContentActionVar}" button="true" targets="form-container" />
</p>
	
</s:form>