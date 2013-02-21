<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/apsadmin-core" prefix="wpsa" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="wpfssa" uri="/WEB-INF/plugins/jpfrontshortcut/apsadmin/tld/jpfrontshortcut-apsadmin-core.tld" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3><s:text name="title.configureLinkAttribute" />&#32;(<s:text name="title.step2of2" />)</h3>

<s:include value="linkAttributeConfigReminder.jsp"/>

<p class="margin-more-bottom"><s:text name="note.chooseContentToLink" /></p>

<s:form id="formform" action="search" namespace="/do/jpfrontshortcut/Content/Link" theme="simple">

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

<p>
	<label for="text" class="basic-mint-label label-search"><s:text name="label.search.by"/>&#32;<s:text name="label.description"/>:</label>
	<wpsf:textfield useTabindexAutoIncrement="true" name="text" id="text" cssClass="text" />
</p>

<fieldset><legend class="accordion_toggler"><s:text name="title.searchFilters" /></legend>
<div class="accordion_element">	
	<p>
		<label for="contentIdToken" class="basic-mint-label"><s:text name="label.code"/>:</label>
		<wpsf:textfield useTabindexAutoIncrement="true" name="contentIdToken" id="contentIdToken" cssClass="text" />
	</p>
	
	<p>
		<label for="contentType" class="basic-mint-label"><s:text name="label.type"/>:</label>
		<wpsf:select useTabindexAutoIncrement="true" name="contentType" id="contentType" list="contentTypes" listKey="code" listValue="descr" headerKey="" headerValue="%{getText('label.all')}" cssClass="text" />
	</p>
	
	<p>
		<label for="state" class="basic-mint-label"><s:text name="label.state"/>:</label>
		<wpsf:select useTabindexAutoIncrement="true" name="state" id="state" list="avalaibleStatus" headerKey="" headerValue="%{getText('label.all')}" cssClass="text" listKey="key" listValue="%{getText(value)}" />
	</p>
</div>
</fieldset>

<p>
	<s:url var="searchContentsUrlVar" namespace="/do/jpfrontshortcut/Content/Link" action="search" />
	<sj:submit targets="form-container" href="%{#searchContentsUrlVar}" value="%{getText('label.search')}" indicator="indicator" button="true" cssClass="button" />
</p>

<div class="subsection-light">

<wpfssa:subset source="contents" count="10" objectName="groupContent" advanced="true" offset="5">
<s:set name="group" value="#groupContent" />
<s:set var="pagerSubmitActionNameVar" value="'search'" />
<div class="pager">
	<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pagerInfo.jsp" />
	<s:include value="/WEB-INF/plugins/jpfrontshortcut/aps/jsp/internalservlet/include/pager_formBlock.jsp" />
</div>
<%--
<wpsa:subset source="contents" count="10" objectName="groupContent" advanced="true" offset="5">
<s:set name="group" value="#groupContent" />
<div class="pager">
	<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pagerInfo.jsp" />
	<s:include value="/WEB-INF/apsadmin/jsp/common/inc/pager_formBlock.jsp" />
</div>
--%>
<p class="noscreen">
	<wpsf:hidden name="lastGroupBy" />
	<wpsf:hidden name="lastOrder" />
</p>
<s:if test="%{getContents().size() > 0}">
<table class="generic" summary="<s:text name="note.content.linkAttribute.summary" />">
<caption><span><s:text name="title.contentList" /></span></caption>
<tr>
	<th><s:text name="label.description" /></th>
	<th><s:text name="label.code" /></th>
	<th><s:text name="label.group" /></th>
	<th><s:text name="label.creationDate" /></th>
	<th><s:text name="label.lastEdit" /></th>
</tr>
<s:iterator id="contentId">
<s:set name="content" value="%{getContentVo(#contentId)}"></s:set>
<tr>
<td><input type="radio" name="contentId" id="contentId_<s:property value="#content.id"/>" value="<s:property value="#content.id"/>" />
<label for="contentId_<s:property value="#content.id"/>"><s:property value="#content.descr" /></label></td>
<td><span class="monospace"><s:property value="#content.id" /></span></td>
<td><s:property value="%{getGroup(#content.mainGroupCode).descr}" /></td>
<td><s:date name="#content.create" format="dd/MM/yyyy HH:mm" /></td>
<td><s:date name="#content.modify" format="dd/MM/yyyy HH:mm" /></td>
</tr>
</s:iterator>
</table>
</s:if>
<div class="pager">
	<s:include value="/WEB-INF/plugins/jpfrontshortcut/aps/jsp/internalservlet/include/pager_formBlock.jsp" />
</div>

</wpfssa:subset>

<p>
	<wpsf:checkbox useTabindexAutoIncrement="true" name="contentOnPageType" id="contentOnPageType"/><label for="contentOnPageType"><s:text name="note.makeContentOnPageLink"></s:text></label>
</p>

<p class="centerText">
	<s:url var="joinContentLinkActionVar" action="joinContentLink" />
	<sj:submit value="%{getText('label.confirm')}" href="%{#joinContentLinkActionVar}" button="true" targets="form-container" />
</p>
</div>

<p class="lower-actions">
	<s:url var="entryContentActionVar" action="backToEntryContent" />
	<sj:submit value="Cancel, Back to Edit Content" href="%{#entryContentActionVar}" button="true" targets="form-container" />
</p>
</s:form>