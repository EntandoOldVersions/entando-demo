<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="wpsf" uri="/apsadmin-form" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="wp" uri="/aps-core" %>
<div id="form-container" class="widget_form"> 
	<h2><s:text name="title.editFrame" />: <s:property value="frame" /> &ndash; <s:property value="currentPage.getModel().getFrames()[frame]"/></h2>
	<h3 class="margin-more-bottom margin-more-top"><s:text name="name.showlet" />:&#32;<s:property value="%{getTitle(showlet.type.code, showlet.type.titles)}" /></h3>
	<s:form action="saveConfigSimpleParameter" id="formform" theme="simple">
		<p class="noscreen">
			<wpsf:hidden name="pageCode" />
			<wpsf:hidden name="frame" />
			<wpsf:hidden name="showletTypeCode" value="%{showlet.type.code}" />
		</p>
		<fieldset>
			<legend>
				<s:text name="title.editFrame.settings" />
			</legend>
			<s:iterator value="showlet.type.typeParameters" id="showletParam" >
				<p>
					<em><s:property value="#showletParam.descr" />:</em><br />
					<label for="<s:property value="#showletParam.name" />" class="basic-mint-label"><s:property value="#showletParam.name" /></label>
					<wpsf:textfield useTabindexAutoIncrement="true" id="%{#showletParam.name}" name="%{#showletParam.name}" value="%{showlet.config[#showletParam.name]}" />
				</p>
			</s:iterator>
		</fieldset>
		<s:set var="saveLabel"><wp:i18n key="SAVE" /></s:set>
		<p>
			<sj:submit targets="form-container" value="%{#saveLabel}" indicator="indicator" button="true" />
		</p>
	</s:form>
</div>