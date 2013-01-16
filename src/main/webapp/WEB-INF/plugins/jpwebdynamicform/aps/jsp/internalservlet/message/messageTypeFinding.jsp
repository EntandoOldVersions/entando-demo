<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-core" prefix="wpsa" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<wp:headInfo type="CSS" info="../../plugins/jpwebdynamicform/static/css/jpwebdynamicform.css"/>
	<wp:info key="currentLang" var="currentLang" />
	<c:choose>
		<c:when test="${not empty param.doSimpleList}">

			<div class="jpwebdynamicform">
				<s:set var="messageTypes" value="messageTypes" />
				<s:if test="#messageTypes.size()>0">
					<ul>
						<s:iterator value="#messageTypes" var="messageType" >
							<s:set name="optionDescr">jpwebdynamicform_TITLE_<s:property value="#messageType.code"/></s:set>
				    		<wp:url page="formview" var="formViewURL"><wp:urlPar name="typeCode"><s:property value="#messageType.code"/></wp:urlPar></wp:url>
							<li>
								<a href="<c:out value="${formViewURL}" />">
									<wp:i18n key="${optionDescr}" var="i18n_optionDescr"/>
									<c:out value="${i18n_optionDescr}" />
								</a>
								<wp:ifauthorized permission="superuser">
									<c:if test="${optionDescr==i18n_optionDescr}">
										<br />
											(note to admin: <a href="<wp:info key="systemParam" paramName="applicationBaseURL" />do/LocaleString/new.action?key=<c:out value="${optionDescr}" />">create the label with key <c:out value="${optionDescr}" /></a>)
									</c:if>
								</wp:ifauthorized>
							</li>
						</s:iterator>
					</ul>
				</s:if>
				<s:else>
					<p>
						No forms active.
					</p>
				</s:else>
			</div>

		</c:when>
		<c:otherwise>
			<form action="<wp:action path="/ExtStr2/do/jpwebdynamicform/Message/User/new.action"/>" method="post">
				<wp:info key="currentLang" var="currentLang" />
				<fieldset>
				<p>
					<label for="typeCode"><wp:i18n key="jpwebdynamicform_MESSAGETYPE" /></label>:<br />

					<select name="typeCode" tabindex="<wpsa:counter/>" id="typeCode" class="text">
					<s:iterator value="messageTypes" id="messageType" >
						<s:set name="optionDescr">jpwebdynamicform_TITLE_<s:property value="#messageType.code"/></s:set>
					    <option value="<s:property value="#messageType.code"/>"><wp:i18n key="${optionDescr}" /></option>
					</s:iterator>
					</select>
				</p>
				</fieldset>
				<fieldset>
					<p>
						<s:set name="labelChoose"><wp:i18n key="jpwebdynamicform_CHOOSE_TYPE" /></s:set>
						<wpsf:submit value="%{#labelChoose}" />
					</p>
				</fieldset>

			</form>
		</c:otherwise>
	</c:choose>