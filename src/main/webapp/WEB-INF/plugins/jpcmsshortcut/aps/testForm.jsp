<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="wpsa" uri="/apsadmin-core" %>
<%@ taglib prefix="wpsf" uri="/apsadmin-form" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<div id="form-container"> 
	<s:form action="executeSubmit" id="formform" theme="simple">
		<s:if test="hasFieldErrors()">
			<div class="message message_error">
			<h3><s:text name="message.title.FieldErrors" /></h3>	
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
			CAMPO 1* <br />
			<wpsf:textfield name="firstField" />
		</p>
		<p>
			CAMPO 2	<br />
			<wpsf:textfield name="secondField" />
		</p>
		<s:if test="null != testParameter">
			<p>
				PARAMETRO TEST NON NULLO - ***<s:property value="testParameter" />*** 
			</p>
		</s:if>
		<s:else>
			<p>
				PARAMETRO TEST NULLO
				<%-- 
				<wpsf:submit action="testParam" value="VALORIZZA PARAMETRO TEST" />
				--%>
				<s:url action="testParam" var="testParamHref" />
				<sj:submit 
					href="%{testParamHref}"
				   	targets="form-container" 
				   	value="VALORIZZA PARAMETRO TESTt" 
				   	indicator="indicator"
				   	button="true"
				/>
			</p>
		</s:else>
		<p>
			<sj:submit 
			   	targets="form-container" 
			   	value="SALVA" 
			   	indicator="indicator"
			   	button="true"
			/>
		</p>
	</s:form>
</div>