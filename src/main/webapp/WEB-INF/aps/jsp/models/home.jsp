<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<wp:info key="currentLang" />">
	<head>
		<title>
			<wp:i18n key="PORTAL_TITLE" />&#32;|&#32;<wp:currentPage param="title" />
		</title>
		<link rel="icon" href="<wp:info key="systemParam" paramName="applicationBaseURL" />favicon.png" type="image/png" />
		<link href="http://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet" type="text/css" />

		<link rel="stylesheet" type="text/css" href="<wp:cssURL />grid.css" />
		<link rel="stylesheet" type="text/css" href="<wp:cssURL />columns.css" />
		<link rel="stylesheet" type="text/css" href="<wp:cssURL />entando-demo.css" />
		<link rel="stylesheet" type="text/css" href="<wp:cssURL />pagemodels/generic.css" />
		<link rel="stylesheet" type="text/css" href="<wp:cssURL />pagemodels/home.css" />

		<!-- JS_JQUERY -->
			<wp:outputHeadInfo type="JS_JQUERY">
				<c:set var="outputHeadInfo_JS_JQUERY_isHere" value="${true}" />
				<wp:printHeadInfo />
			</wp:outputHeadInfo>
			<c:if test="${outputHeadInfo_JS_JQUERY_isHere}">
				<!-- This file includes necessary functions/topics for validation and all topic examples -->
				<script type="text/javascript" src="<wp:resourceURL />showcase.js"></script>
				<!-- Extend the Struts2 jQuery Plugin with an richtext editor -->
				<script type="text/javascript" src="<wp:resourceURL />extendplugin.js"></script>
			</c:if>
		<!--  -->
		<script type="text/javascript">
			<!-- firefox compatiblity fix with mootools 1.2 -->
			try { delete String.prototype.contains; } catch(e) {}
		</script>
		<script type="text/javascript" src="<wp:resourceURL />plugins/jpmyportalplus/static/js/lib/mootools-1.2-core.js"></script>
		<script type="text/javascript" src="<wp:resourceURL />plugins/jpmyportalplus/static/js/lib/mootools-1.2-more.js"></script>
		<%-- jpmyportal plus - static resources start --%>
		<script type="text/javascript" src="<wp:resourceURL />plugins/jpmyportalplus/static/js/lib/moo-jAPS-jpmyportalplus-sortable.js"></script>
		<script type="text/javascript" src="<wp:resourceURL />plugins/jpmyportalplus/static/js/lib/moo-jAPS-jpmyportalplus.js"></script>
		<jsp:include page="/WEB-INF/plugins/jpmyportalplus/aps/jsp/models/inc/jpmyportalplus_javascript_variables.jsp" />
		<script type="text/javascript" src="<wp:resourceURL />plugins/jpmyportalplus/static/js/jpmyportalplus.js"></script>
		<link rel="stylesheet" type="text/css" href="<wp:resourceURL />plugins/jpmyportalplus/static/css/jpmyportalplus.css" media="screen" />
		<%-- jpmyportal plus - static resources end --%>

		<script type="text/javascript" src="<wp:resourceURL />static/js/twitter.js"></script>

		<%-- css --%>
		<wp:outputHeadInfo type="CSS">
			<link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" />
		</wp:outputHeadInfo>

		<%-- css for ie7 --%>
		<wp:outputHeadInfo type="CSS_IE7">
			<!--[if IE 7]>
				<link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" />
			<![endif]-->
		</wp:outputHeadInfo>

		<%-- css for ie8 --%>
		<wp:outputHeadInfo type="CSS_IE8">
			<!--[if IE 8]>
				<link rel="stylesheet" type="text/css" href="<wp:cssURL /><wp:printHeadInfo />" />
			<![endif]-->
		</wp:outputHeadInfo>

		<%-- js global vars --%>
		<wp:outputHeadInfo type="JS_VARS">
			<script type="text/javascript">
			<!--//--><![CDATA[//><!--
				<wp:printHeadInfo />
			//--><!]]>
			</script>
		</wp:outputHeadInfo>

		<%-- js scripts (remember to include the libraries first) --%>
		<wp:outputHeadInfo type="JS">
			<script type="text/javascript" src="<wp:resourceURL />static/js/<wp:printHeadInfo />"></script>
		</wp:outputHeadInfo>

		<%-- js code --%>
		<wp:outputHeadInfo type="JS_RAW">
			<script type="text/javascript">
			<!--//--><![CDATA[//><!--
				<wp:printHeadInfo />
			//--><!]]>
			</script>
		</wp:outputHeadInfo>
	</head>
	<body>
		<div id="container">

			<div id="header" class="page-space">
			<div id="header-aux">
			<div class="page-space-1"><div class="page-space-2">
				<div id="header-login" class="column-container">
					<div class="column-left-30">
						<%-- Top Header I --%>
						<wp:show frame="0" />
					</div>
					<div class="column-right-30">
						<div class="column-container">
							<%-- Top Header II --%>
							<wp:show frame="1" />
							<%-- Top Header III --%>
							<wp:show frame="2" />
						</div>
					</div>
				</div>

				<div id="header-content-container" class="column-container">
					<div class="column-left-75">
						<div class="column-left-25">
							<a href="<wp:url page="homepage" />" title="goto homepage"><img src="<wp:imgURL />logo.png" alt="" /></a>
						</div>
						<div id="header-content" class="column-right-25">
							<%-- Header I --%>
							<wp:show frame="3" />
							<h1 class="title"><wp:i18n key="SLOGAN_TITLE" escapeXml="false" /></h1>
							<p><wp:i18n key="SLOGAN_DESCRIPTION" escapeXml="false" /></p>
						</div>
					</div>
					<div class="column-right-75">
						<div class="column-container">
							<%-- Header II --%>
							<wp:show frame="4" />
							<%-- Header III --%>
							<wp:show frame="5" />
							<div id="logo2">
								<p>
									<img src="<wp:imgURL />logo-entando.png" alt="" />
								</p>
							</div>
						</div>
					</div>
				</div>

				<div id="choose-profile" class="column-container">
					<p>
						<img src="<wp:imgURL />choose-profile.png" alt="choose your profile" />
					</p>
				</div>
			</div></div></div></div>

			<div id="users" class="page-space"><div class="page-space-1"><div class="page-space-2">
				<div class="column-container">
					<%-- Users I --%>
					<wp:show frame="6" />
					<%-- Users II --%>
					<wp:show frame="7" />
					<%-- Users III --%>
					<wp:show frame="8" />
					<%-- Users IV --%>
					<wp:show frame="9" />
					<jsp:include page="inc/users.jsp" />
				</div>
			</div></div></div>

			<div id="welcome" class="page-space  user-<c:out value="${sessionScope.currentUser}" />"><div class="page-space-1"><div class="page-space-2">
				<div class="column-container">
					<c:if test="${sessionScope.currentUser != 'guest'}">
						<p>
							<wp:i18n key="WELCOME_${sessionScope.currentUser}" escapeXml="false" />
						</p>
					</c:if>
				</div>
				<wp:url var="opencloseActionURL" paramRepeat="false"><wp:urlPar name="openFrame" ><c:out value="${edit_link_href_value}" /></wp:urlPar></wp:url>
				<h2 id="editshowlet_title"><a id="editshowlet" class="open" href="<c:out value="${opencloseActionURL}" />"><img src="<wp:imgURL />configure-page.png" alt="configure page" /></a></h2>
			</div></div></div>
			<div class="page-space page-space-collapsed"><div class="page-space-1"><div class="page-space-2">

			</div></div></div>


			<div id="configure-page" class="page-space"><div class="page-space-1"><div class="page-space-2">
				<div class="column-container">
					<jsp:include page="/WEB-INF/plugins/jpmyportalplus/aps/jsp/models/inc/page_configuration.jsp" />
				</div>
			</div></div></div>

			<div id="content" class="page-space"><div class="page-space-1"><div class="page-space-2">
				<c:set var="checkSimpleContents"><wp:show frame="10" /><wp:show frame="11" /><wp:show frame="12" /><wp:show frame="13" /></c:set>
				<c:if test="${checkSimpleContents!='' && (not empty checkSimpleContents)}">
					<div class="column-container" id="simple-contents">
						<div class="">
							<div class="boxspacer">
								<%-- Content I --%>
								<wp:show frame="10" />
								<%-- Content II --%>
								<wp:show frame="11" />
								<%-- Content III --%>
								<wp:show frame="12" />
								<%-- Content IV --%>
								<wp:show frame="13" />
							</div>
						</div>
					</div>
				</c:if>

				<div id="widget-columns-container" class="column-container">
					<div class="column-1">
						<div id="widget-col1"  class="column-widget">
							<%-- Widgets Column 1 - I --%>
							<wp:show frame="14" />
							<%-- Widgets Column 1 - II --%>
							<wp:show frame="15" />
							<%-- Widgets Column 1 - III --%>
							<wp:show frame="16" />
							<%-- Widgets Column 1 - IV --%>
							<wp:show frame="17" />
							<%-- Widgets Column 1 - V --%>
							<wp:show frame="18" />
							<%-- Widgets Column 1 - VI --%>
							<wp:show frame="19" />
							<%-- Widgets Column 1 - VII --%>
							<wp:show frame="20" />
							<%-- Widgets Column 1 - VIII --%>
							<wp:show frame="21" />
							<%-- Widgets Column 1 - IX --%>
							<wp:show frame="22" />
							<%-- Widgets Column 1 - X --%>
							<wp:show frame="23" />
							<%-- Widgets Column 1 - XI --%>
							<wp:show frame="24" />
							<%-- Widgets Column 1 - XII --%>
							<wp:show frame="25" />
							<%-- Widgets Column 1 - XIII --%>
							<wp:show frame="26" />
							<%-- Widgets Column 1 - XIV --%>
							<wp:show frame="27" />
							<%-- Widgets Column 1 - XV --%>
							<wp:show frame="28" />
							<%-- Widgets Column 1 - XVI --%>
							<wp:show frame="29" />
							<%-- Widgets Column 1 - XVII --%>
							<wp:show frame="30" />
							<%-- Widgets Column 1 - XVIII --%>
							<wp:show frame="31" />
							<%-- Widgets Column 1 - XIX --%>
							<wp:show frame="32" />
							<%-- Widgets Column 1 - XX --%>
							<wp:show frame="33" />
							<%-- Widgets Column 1 - XXI --%>
							<wp:show frame="34" />
							<%-- Widgets Column 1 - XXII --%>
							<wp:show frame="35" />
							<%-- Widgets Column 1 - XXIII --%>
							<wp:show frame="36" />
							<%-- Widgets Column 1 - XXIV --%>
							<wp:show frame="37" />
							<%-- Widgets Column 1 - XXV --%>
							<wp:show frame="38" />
							<%-- Widgets Column 1 - XXVI --%>
							<wp:show frame="39" />
							<%-- Widgets Column 1 - XXVII --%>
							<wp:show frame="40" />
							<%-- Widgets Column 1 - XXVIII --%>
							<wp:show frame="41" />
							<%-- Widgets Column 1 - XXIX --%>
							<wp:show frame="42" />
							<%-- Widgets Column 1 - XXX --%>
							<wp:show frame="43" />
							<%-- Widgets Column 1 - XXXI --%>
							<wp:show frame="44" />
							<%-- Widgets Column 1 - XXXII --%>
							<wp:show frame="45" />
							<%-- Widgets Column 1 - XXXIII --%>
							<wp:show frame="46" />
							<%-- Widgets Column 1 - XXXIV --%>
							<wp:show frame="47" />
							<%-- Widgets Column 1 - XXXV --%>
							<wp:show frame="48" />
							<%-- Widgets Column 1 - XXXVI --%>
							<wp:show frame="49" />
							<%-- Widgets Column 1 - XXXVII --%>
							<wp:show frame="50" />
							<%-- Widgets Column 1 - XXXVIII --%>
							<wp:show frame="51" />
							<%-- Widgets Column 1 - XXXIX --%>
							<wp:show frame="52" />
							<%-- Widgets Column 1 - XL --%>
							<wp:show frame="53" />
							<%-- Widgets Column 1 - XLI --%>
							<wp:show frame="54" />
							<%-- Widgets Column 1 - XLII --%>
							<wp:show frame="55" />
							<%-- Widgets Column 1 - XLIII --%>
							<wp:show frame="56" />
							<%-- Widgets Column 1 - XLIV --%>
							<wp:show frame="57" />
							<%-- Widgets Column 1 - XLV --%>
							<wp:show frame="58" />
							<%-- Widgets Column 1 - XLVI --%>
							<wp:show frame="59" />
							<%-- Widgets Column 1 - XLVII --%>
							<wp:show frame="60" />
							<%-- Widgets Column 1 - XLVIII --%>
							<wp:show frame="61" />
							<%-- Widgets Column 1 - XLIX --%>
							<wp:show frame="62" />
							<%-- Widgets Column 1 - L --%>
							<wp:show frame="63" />
						</div>
					</div>
					<div class="column-2">
						<div id="widget-col2" class="column-widget">
							<%-- Widgets Column 2 - I --%>
							<wp:show frame="64" />
							<%-- Widgets Column 2 - II --%>
							<wp:show frame="65" />
							<%-- Widgets Column 2 - III --%>
							<wp:show frame="66" />
							<%-- Widgets Column 2 - IV --%>
							<wp:show frame="67" />
							<%-- Widgets Column 2 - V --%>
							<wp:show frame="68" />
							<%-- Widgets Column 2 - VI --%>
							<wp:show frame="69" />
							<%-- Widgets Column 2 - VII --%>
							<wp:show frame="70" />
							<%-- Widgets Column 2 - VIII --%>
							<wp:show frame="71" />
							<%-- Widgets Column 2 - IX --%>
							<wp:show frame="72" />
							<%-- Widgets Column 2 - X --%>
							<wp:show frame="73" />
							<%-- Widgets Column 2 - XI --%>
							<wp:show frame="74" />
							<%-- Widgets Column 2 - XII --%>
							<wp:show frame="75" />
							<%-- Widgets Column 2 - XIII --%>
							<wp:show frame="76" />
							<%-- Widgets Column 2 - XIV --%>
							<wp:show frame="77" />
							<%-- Widgets Column 2 - XV --%>
							<wp:show frame="78" />
							<%-- Widgets Column 2 - XVI --%>
							<wp:show frame="79" />
							<%-- Widgets Column 2 - XVII --%>
							<wp:show frame="80" />
							<%-- Widgets Column 2 - XVIII --%>
							<wp:show frame="81" />
							<%-- Widgets Column 2 - XIX --%>
							<wp:show frame="82" />
							<%-- Widgets Column 2 - XX --%>
							<wp:show frame="83" />
							<%-- Widgets Column 2 - XXI --%>
							<wp:show frame="84" />
							<%-- Widgets Column 2 - XXII --%>
							<wp:show frame="85" />
							<%-- Widgets Column 2 - XXIII --%>
							<wp:show frame="86" />
							<%-- Widgets Column 2 - XXIV --%>
							<wp:show frame="87" />
							<%-- Widgets Column 2 - XXV --%>
							<wp:show frame="88" />
							<%-- Widgets Column 2 - XXVI --%>
							<wp:show frame="89" />
							<%-- Widgets Column 2 - XXVII --%>
							<wp:show frame="90" />
							<%-- Widgets Column 2 - XXVIII --%>
							<wp:show frame="91" />
							<%-- Widgets Column 2 - XXIX --%>
							<wp:show frame="92" />
							<%-- Widgets Column 2 - XXX --%>
							<wp:show frame="93" />
							<%-- Widgets Column 2 - XXXI --%>
							<wp:show frame="94" />
							<%-- Widgets Column 2 - XXXII --%>
							<wp:show frame="95" />
							<%-- Widgets Column 2 - XXXIII --%>
							<wp:show frame="96" />
							<%-- Widgets Column 2 - XXXIV --%>
							<wp:show frame="97" />
							<%-- Widgets Column 2 - XXXV --%>
							<wp:show frame="98" />
							<%-- Widgets Column 2 - XXXVI --%>
							<wp:show frame="99" />
							<%-- Widgets Column 2 - XXXVII --%>
							<wp:show frame="100" />
							<%-- Widgets Column 2 - XXXVIII --%>
							<wp:show frame="101" />
							<%-- Widgets Column 2 - XXXIX --%>
							<wp:show frame="102" />
							<%-- Widgets Column 2 - XL --%>
							<wp:show frame="103" />
							<%-- Widgets Column 2 - XLI --%>
							<wp:show frame="104" />
							<%-- Widgets Column 2 - XLII --%>
							<wp:show frame="105" />
							<%-- Widgets Column 2 - XLIII --%>
							<wp:show frame="106" />
							<%-- Widgets Column 2 - XLIV --%>
							<wp:show frame="107" />
							<%-- Widgets Column 2 - XLV --%>
							<wp:show frame="108" />
							<%-- Widgets Column 2 - XLVI --%>
							<wp:show frame="109" />
							<%-- Widgets Column 2 - XLVII --%>
							<wp:show frame="110" />
							<%-- Widgets Column 2 - XLVIII --%>
							<wp:show frame="111" />
							<%-- Widgets Column 2 - XLIX --%>
							<wp:show frame="112" />
							<%-- Widgets Column 2 - L --%>
							<wp:show frame="113" />
						</div>
					</div>
					<div class="column-3">
						<div id="widget-col3"  class="column-widget">
							<%-- Widgets Column 3 - I --%>
							<wp:show frame="114" />
							<%-- Widgets Column 3 - II --%>
							<wp:show frame="115" />
							<%-- Widgets Column 3 - III --%>
							<wp:show frame="116" />
							<%-- Widgets Column 3 - IV --%>
							<wp:show frame="117" />
							<%-- Widgets Column 3 - V --%>
							<wp:show frame="118" />
							<%-- Widgets Column 3 - VI --%>
							<wp:show frame="119" />
							<%-- Widgets Column 3 - VII --%>
							<wp:show frame="120" />
							<%-- Widgets Column 3 - VIII --%>
							<wp:show frame="121" />
							<%-- Widgets Column 3 - IX --%>
							<wp:show frame="122" />
							<%-- Widgets Column 3 - X --%>
							<wp:show frame="123" />
							<%-- Widgets Column 3 - XI --%>
							<wp:show frame="124" />
							<%-- Widgets Column 3 - XII --%>
							<wp:show frame="125" />
							<%-- Widgets Column 3 - XIII --%>
							<wp:show frame="126" />
							<%-- Widgets Column 3 - XIV --%>
							<wp:show frame="127" />
							<%-- Widgets Column 3 - XV --%>
							<wp:show frame="128" />
							<%-- Widgets Column 3 - XVI --%>
							<wp:show frame="129" />
							<%-- Widgets Column 3 - XVII --%>
							<wp:show frame="130" />
							<%-- Widgets Column 3 - XVIII --%>
							<wp:show frame="131" />
							<%-- Widgets Column 3 - XIX --%>
							<wp:show frame="132" />
							<%-- Widgets Column 3 - XX --%>
							<wp:show frame="133" />
							<%-- Widgets Column 3 - XXI --%>
							<wp:show frame="134" />
							<%-- Widgets Column 3 - XXII --%>
							<wp:show frame="135" />
							<%-- Widgets Column 3 - XXIII --%>
							<wp:show frame="136" />
							<%-- Widgets Column 3 - XXIV --%>
							<wp:show frame="137" />
							<%-- Widgets Column 3 - XXV --%>
							<wp:show frame="138" />
							<%-- Widgets Column 3 - XXVI --%>
							<wp:show frame="139" />
							<%-- Widgets Column 3 - XXVII --%>
							<wp:show frame="140" />
							<%-- Widgets Column 3 - XXVIII --%>
							<wp:show frame="141" />
							<%-- Widgets Column 3 - XXIX --%>
							<wp:show frame="142" />
							<%-- Widgets Column 3 - XXX --%>
							<wp:show frame="143" />
							<%-- Widgets Column 3 - XXXI --%>
							<wp:show frame="144" />
							<%-- Widgets Column 3 - XXXII --%>
							<wp:show frame="145" />
							<%-- Widgets Column 3 - XXXIII --%>
							<wp:show frame="146" />
							<%-- Widgets Column 3 - XXXIV --%>
							<wp:show frame="147" />
							<%-- Widgets Column 3 - XXXV --%>
							<wp:show frame="148" />
							<%-- Widgets Column 3 - XXXVI --%>
							<wp:show frame="149" />
							<%-- Widgets Column 3 - XXXVII --%>
							<wp:show frame="150" />
							<%-- Widgets Column 3 - XXXVIII --%>
							<wp:show frame="151" />
							<%-- Widgets Column 3 - XXXIX --%>
							<wp:show frame="152" />
							<%-- Widgets Column 3 - XL --%>
							<wp:show frame="153" />
							<%-- Widgets Column 3 - XLI --%>
							<wp:show frame="154" />
							<%-- Widgets Column 3 - XLII --%>
							<wp:show frame="155" />
							<%-- Widgets Column 3 - XLIII --%>
							<wp:show frame="156" />
							<%-- Widgets Column 3 - XLIV --%>
							<wp:show frame="157" />
							<%-- Widgets Column 3 - XLV --%>
							<wp:show frame="158" />
							<%-- Widgets Column 3 - XLVI --%>
							<wp:show frame="159" />
							<%-- Widgets Column 3 - XLVII --%>
							<wp:show frame="160" />
							<%-- Widgets Column 3 - XLVIII --%>
							<wp:show frame="161" />
							<%-- Widgets Column 3 - XLIX --%>
							<wp:show frame="162" />
							<%-- Widgets Column 3 - L --%>
							<wp:show frame="163" />
						</div>
					</div>
				</div>

			</div></div></div>

			<div id="footer" class="page-space"><div class="page-space-1"><div class="page-space-2">
				<div class="column-container">
					<div class="column-left-70">
						<%-- Footer I --%>
						<wp:show frame="164" />
						<%-- Footer II --%>
						<wp:show frame="165" />

					</div>
					<div class="column-right-70">
						<%-- Footer III --%>
						<wp:show frame="166" />
					</div>
				</div>


				<div class="column-container">
					<div class="column-left-70">
						<p class="copyright">
							<wp:i18n key="COPYRIGHT" escapeXml="false" />
						</p>
					</div>
					<div class="column-right-70">
						<%-- Footer IV --%>
						<wp:show frame="167" />
					</div>
				</div>
			</div></div></div>
		</div>
		
		<c:if test="${outputHeadInfo_JS_JQUERY_isHere}">
			<jsp:include page="inc/widget_popup_init.jsp" />
		</c:if>
		
	</body>
</html>
