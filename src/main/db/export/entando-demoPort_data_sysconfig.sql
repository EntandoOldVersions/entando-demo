--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Data for Name: sysconfig; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'langs', 'Definition of the system languages', '<?xml version="1.0" encoding="UTF-8"?>
<Langs>
	<Lang>
		<code>it</code>
		<descr>Italiano</descr>
	</Lang>
	<Lang>
		<code>en</code>
		<descr>English</descr>
		<default>true</default>
	</Lang>
</Langs>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'imageDimensions', 'Definition of the resized image dimensions', '<Dimensions>
	<Dimension>
		<id>1</id>
		<dimx>90</dimx>
		<dimy>90</dimy>
	</Dimension>
	<Dimension>
		<id>2</id>
		<dimx>160</dimx>
		<dimy>160</dimy>
	</Dimension>
	<Dimension>
		<id>3</id>
		<dimx>250</dimx>
		<dimy>250</dimy>
	</Dimension>
</Dimensions>
');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'params', 'Configuration params', '<?xml version="1.0" encoding="UTF-8"?>
<Params>
	<Param name="urlStyle">classic</Param>
	<Param name="hypertextEditor">fckeditor</Param>
	<Param name="treeStyle_page">classic</Param>
	<Param name="treeStyle_category">classic</Param>
	<Param name="startLangFromBrowser">false</Param>
	<SpecialPages>
		<Param name="notFoundPageCode">notfound</Param>
		<Param name="homePageCode">homepage</Param>
		<Param name="errorPageCode">errorpage</Param>
		<Param name="loginPageCode">login</Param>
	</SpecialPages>
	<ExtendendPrivacyModule>
		<Param name="extendedPrivacyModuleEnabled">false</Param>
		<Param name="maxMonthsSinceLastAccess">6</Param>
		<Param name="maxMonthsSinceLastPasswordChange">3</Param>        
	</ExtendendPrivacyModule>
</Params>
');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jpuserprofileProfileType', 'Definizione del profilo utente', '<?xml version="1.0" encoding="UTF-8"?>
<profiletypes>
	<profiletype typecode="PFL" typedescr="Profilo utente/cittadino tipo">
		<attributes>
			<attribute name="Nome" attributetype="Monotext" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jpuserprofile:firstname</role>
				</roles>
			</attribute>
			<attribute name="Cognome" attributetype="Monotext" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jpuserprofile:surname</role>
				</roles>
			</attribute>
			<attribute name="email" attributetype="Monotext" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jpuserprofile:mail</role>
				</roles>
			</attribute>
			<attribute name="azienda" attributetype="Monotext">
				<validations />
			</attribute>
		</attributes>
	</profiletype>
</profiletypes>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jpwebdynamicform_messageNotifierConfig', 'Configurazione del servizio di notifica Messaggi', '<messagetypes>
    <messagetype typeCode="PER" senderCode="CODE1" mailAttrName="eMail" >
        <recipients>
            <to><![CDATA[Address 1 <address@notexistant1.itte>]]></to>
            <to><![CDATA[Address 2 <address@notexistant2.itte>]]></to>
            <cc><![CDATA[Address 3 <address@notexistant3.itte>]]></cc>
            <bcc><![CDATA[Address 4 <address@notexistant4.itte>]]></bcc>
        </recipients>
        <model>
            <!-- CORPO DELLA MAIL -->
            <body><![CDATA[Corpo della Mail come template di Velocity]]></body>

            <!-- OGGETTO DELLA MAIL -->
            <subject><![CDATA[Oggetto della mail come template di Velocity]]></subject>
        </model>
    </messagetype>
    <messagetype typeCode="COM" senderCode="CODE2" mailAttrName="eMail" store="false" >
        <recipients>
            <to><![CDATA[Address 1 <address@notexistant1.itte>]]></to>
            <to><![CDATA[Address 2 <address@notexistant2.itte>]]></to>
            <to><![CDATA[Address 3 <address@notexistant3.itte>]]></to>
            <cc><![CDATA[Address 4 <address@notexistant4.itte>]]></cc>
            <cc><![CDATA[Address 5 <address@notexistant5.itte>]]></cc>
            <bcc><![CDATA[Address 6 <address@notexistant6.itte>]]></bcc>
        </recipients>
        <model>
            <!-- CORPO DELLA MAIL -->
            <body><![CDATA[Corpo della mail come template di Velocity]]></body>

            <!-- OGGETTO DELLA MAIL -->
            <subject><![CDATA[Oggetto della mail come template di Velocity]]></subject>
        </model>
    </messagetype>
</messagetypes>');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jpmail_config', 'Configurazione del servizio di invio eMail', '<mailConfig>
	<senders>
		<sender code="CODE1">EMAIL1@EMAIL.COM</sender>
	</senders>
	<smtp debug="false" >
		<host>out.virgilio.it</host>
		<user></user>
		<password></password>
	</smtp>
</mailConfig>');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'contentTypes', 'Definition of the Content Types', '<?xml version="1.0" encoding="UTF-8"?>
<contenttypes>
	<contenttype typecode="CNG" typedescr="Generic Content" viewpage="contentsview" listmodel="31" defaultmodel="3">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Longtext" indexingtype="TEXT">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Body" attributetype="Hypertext" indexingtype="TEXT">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>

			<attribute name="Image1" attributetype="Image">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>

			<attribute name="Image2" attributetype="Image">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>

			<list name="Attach" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attach" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</list>
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="DWN" typedescr="Download File" viewpage="newsview" listmodel="41" defaultmodel="4">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Abstract" attributetype="Longtext" indexingtype="TEXT">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>

			<attribute name="File" attributetype="Attach">
				<validations>
					<required>true</required>
				</validations>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
		</attributes>
	</contenttype>
	<contenttype typecode="NEW" typedescr="News" viewpage="newsview" listmodel="21" defaultmodel="2">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Date" attributetype="Date" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Abstract" attributetype="Longtext" indexingtype="TEXT">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Body" attributetype="Hypertext" indexingtype="TEXT">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Image1" attributetype="Image">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Image2" attributetype="Image">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<list name="Attach" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attach" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</list>
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="TST" typedescr="Test Content Type" viewpage="contentsview" listmodel="11" defaultmodel="1">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
		</attributes>
	</contenttype>
	<contenttype typecode="YTB" typedescr="Youtube Video" viewpage="contentsview" listmodel="51" defaultmodel="5">
		<attributes>
			<attribute name="VideoCode" attributetype="Text">
				<validations>
					<required>true</required>
					<expression evalOnValuedAttribute="true">
						<ognlexpression><![CDATA[#attribute.getText().length() > 5]]></ognlexpression>
						<errormessage><![CDATA[Insert the id of the video. Example, it the page is "http://www.youtube.com/watch?v=012345678901" the VideoCode is 012345678901.]]></errormessage>
						<helpmessage><![CDATA[Insert the id of the video. Example, it the page is "http://www.youtube.com/watch?v=012345678901" the VideoCode is 012345678901.]]></helpmessage>
					</expression>
				</validations>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Longtext" indexingtype="TEXT">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Body" attributetype="Hypertext" indexingtype="TEXT">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<list name="Attach" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attach" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</list>
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</list>
		</attributes>
	</contenttype>
</contenttypes>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jpwebdynamicform_messageTypes', 'Definizione dei Tipi di Messaggio', '<?xml version="1.0" encoding="UTF-8"?>
<messagetypes>
	<messagetype typecode="COM" typedescr="Company Form">
		<attributes>
			<attribute name="Company" attributetype="Monotext" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Address" attributetype="Monotext" />
			<attribute name="eMail" attributetype="Monotext">
				<validations>
					<required>true</required>
					<regexp><![CDATA[(.*<.+@.+.[a-z]+>)|(.+@.+.[a-z]+)]]></regexp>
				</validations>
			</attribute>
			<attribute name="Note" attributetype="Monotext">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
		</attributes>
	</messagetype>
	<messagetype typecode="PER" typedescr="Person Form">
		<attributes>
			<attribute name="Name" attributetype="Monotext" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Surname" attributetype="Monotext" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Address" attributetype="Monotext" />
			<attribute name="eMail" attributetype="Monotext">
				<validations>
					<required>true</required>
					<regexp><![CDATA[(.*<.+@.+.[a-z]+>)|(.+@.+.[a-z]+)]]></regexp>
				</validations>
			</attribute>
			<attribute name="Date" attributetype="Date">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Number" attributetype="Number">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Enumerator" attributetype="Enumerator" separator=",">
				<validations>
					<required>true</required>
				</validations>
				<![CDATA[Opzione A,Opzione B,Opzione C,Opzione D,Opzione E,Opzione F,Opzione G]]>
			</attribute>
			<attribute name="Longtext" attributetype="Longtext">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
		</attributes>
	</messagetype>
</messagetypes>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jpcontentfeedback_config', 'Content Feedback global configuration', '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<contentFeedbackConfig>
		<anonymousComment>false</anonymousComment>
		<comment>true</comment>
		<rateComment>true</rateComment>
		<rateContent>true</rateContent>
</contentFeedbackConfig>');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'subIndexDir', 'Name of the sub-directory containing content indexing files', 'indexdir20120406001751');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jpmyportalplus_config', 'Definizione degli oggetti configurabili di My Portal', '<?xml version="1.0" encoding="UTF-8"?>
<myportalConfig><showlets><showlet code="documents_list" /><showlet code="form_list" /><showlet code="inEvidenza" /><showlet code="jpsurvey_pollList" /><showlet code="jpsurvey_questionnaireList" /><showlet code="jpwebdynamicform_message_choice" /><showlet code="latest_events" /><showlet code="latest_news" /><showlet code="latest_video" /></showlets></myportalConfig>
');


--
-- PostgreSQL database dump complete
--

