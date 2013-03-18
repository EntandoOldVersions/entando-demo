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
	<ExtraParams>
		<Param name="jpfrontshortcut_activeFrameFrontEndEditing">false</Param>
		<Param name="jpfrontshortcut_activeContentFrontEndEditing">true</Param>
		<Param name="jpfrontshortcut_activePageFrontEndEditing">true</Param>
	</ExtraParams>
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
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Longtext" indexingtype="TEXT" />
			<attribute name="Body" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="Image1" attributetype="Image" />
			<attribute name="Image2" attributetype="Image" />
			<list name="Attach" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attach" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
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
			</attribute>
			<attribute name="Abstract" attributetype="Longtext" indexingtype="TEXT" />
			<attribute name="File" attributetype="Attach">
				<validations>
					<required>true</required>
				</validations>
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
			</attribute>
			<attribute name="Date" attributetype="Date" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Abstract" attributetype="Longtext" indexingtype="TEXT" />
			<attribute name="Body" attributetype="Hypertext" indexingtype="TEXT" />
			<attribute name="Image1" attributetype="Image" />
			<attribute name="Image2" attributetype="Image" />
			<list name="Attach" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attach" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
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
			</attribute>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Longtext" indexingtype="TEXT" />
			<attribute name="Body" attributetype="Hypertext" indexingtype="TEXT" />
			<list name="Attach" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attach" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
			</list>
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
			</list>
		</attributes>
	</contenttype>
</contenttypes>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jpwebdynamicform_messageTypes', 'Definizione dei Tipi di Messaggio', '<?xml version="1.0" encoding="UTF-8"?>
<messagetypes>
	<messagetype typecode="CNT" typedescr="Contact us">
		<attributes>
			<attribute name="Name" attributetype="Monotext" description="Name" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Surname" attributetype="Monotext" description="Surname" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="eMail" attributetype="Monotext" description="eMail" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Message" attributetype="Longtext" description="Message">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
		</attributes>
	</messagetype>
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
	<messagetype typecode="VRF" typedescr="Vacation Request Form">
		<attributes>
			<attribute name="Name" attributetype="Monotext" description="Name" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Surname" attributetype="Monotext" description="Surname" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="StartDate" attributetype="Date" description="Start Date">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="EndDate" attributetype="Date" description="End Date">
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
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jpmyportalplus_config', 'Definizione degli oggetti configurabili di My Portal', '<?xml version="1.0" encoding="UTF-8"?>
<myportalConfig><showlets><showlet code="CNT" /><showlet code="VRF" /><showlet code="WCN" /><showlet code="documents_list" /><showlet code="inEvidenza" /><showlet code="jpsurvey_pollList" /><showlet code="jpsurvey_questionnaireList" /><showlet code="jpwebdynamicform_message_choice" /><showlet code="latest_events" /><showlet code="latest_news" /><showlet code="latest_video" /></showlets></myportalConfig>
');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'subIndexDir', 'Name of the sub-directory containing content indexing files', 'indexdir20130115185332');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'entandoComponentsReport', 'The component installation report', '<?xml version="1.0" encoding="UTF-8"?>
<reports status="OK">
	<creation>2013-03-14 15:51:16</creation>
	<lastupdate>2013-03-14 15:51:48</lastupdate>
	<components>
		<component code="entandoCore" date="2013-03-14 15:51:16" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="OK">
					<table name="authgroups" />
					<table name="authpermissions" />
					<table name="authroles" />
					<table name="authrolepermissions" />
					<table name="authusers" />
					<table name="authusergroups" />
					<table name="authuserroles" />
					<table name="authusershortcuts" />
					<table name="api_oauth_consumers" />
					<table name="api_oauth_tokens" />
					<table name="apicatalog_methods" />
					<table name="apicatalog_services" />
				</datasource>
				<datasource name="portDataSource" status="OK">
					<table name="sysconfig" />
					<table name="categories" />
					<table name="localstrings" />
					<table name="pagemodels" />
					<table name="pages" />
					<table name="showletcatalog" />
					<table name="showletconfig" />
					<table name="uniquekeys" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jacms" date="2013-03-14 15:51:32" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="OK">
					<table name="contentmodels" />
					<table name="contents" />
					<table name="resources" />
					<table name="resourcerelations" />
					<table name="contentrelations" />
					<table name="contentsearch" />
					<table name="workcontentrelations" />
					<table name="workcontentsearch" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpcontentfeedback" date="2013-03-14 15:51:36" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="OK">
					<table name="jpcontentfeedback_comments" />
					<table name="jpcontentfeedback_rating" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpfastcontentedit" date="2013-03-14 15:51:36" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpfrontshortcut" date="2013-03-14 15:51:36" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpmail" date="2013-03-14 15:51:36" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpmyportalplus" date="2013-03-14 15:51:36" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="OK">
					<table name="jpmyportalplus_userpageconfig" />
				</datasource>
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpsharewith" date="2013-03-14 15:51:37" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="NOT_AVAILABLE" />
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpsurvey" date="2013-03-14 15:51:37" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="OK">
					<table name="jpsurvey" />
					<table name="jpsurvey_questions" />
					<table name="jpsurvey_choices" />
					<table name="jpsurvey_voters" />
					<table name="jpsurvey_responses" />
				</datasource>
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpuserprofile" date="2013-03-14 15:51:38" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="OK">
					<table name="jpuserprofile_authuserprofiles" />
					<table name="jpuserprofile_profilesearch" />
				</datasource>
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
		<component code="jpwebdynamicform" date="2013-03-14 15:51:39" status="OK">
			<schema status="OK">
				<datasource name="servDataSource" status="OK">
					<table name="jpwebdynamicform_messages" />
					<table name="jpwebdynamicform_search" />
					<table name="jpwebdynamicform_answers" />
				</datasource>
				<datasource name="portDataSource" status="NOT_AVAILABLE" />
			</schema>
			<data status="OK">
				<datasource name="servDataSource" status="RESTORE" />
				<datasource name="portDataSource" status="RESTORE" />
			</data>
			<postProcess status="NOT_AVAILABLE" />
		</component>
	</components>
</reports>

');


INSERT INTO categories (catcode, parentcode, titles) VALUES ('home', 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Generale</property>
<property key="en">All</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('events', 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Events</property>
<property key="it">Eventi</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('footerlinks', 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Footer Links</property>
<property key="it">Link per Footer</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('news', 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News</property>
<property key="it">News</property>
</properties>

');


INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE', 'en', 'page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE', 'it', 'pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_MODEL', 'en', 'page model');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_MODEL', 'it', 'modello pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_TITLE', 'en', 'page title');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_TITLE', 'it', 'titolo pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NOT_ALLOWED', 'en', 'User not allowed');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NOT_ALLOWED', 'it', 'Utente non autorizzato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_NOT_FOUND', 'en', 'Page not found');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_NOT_FOUND', 'it', 'Pagina non trovata');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('GENERIC_ERROR', 'en', 'Generic Error');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('GENERIC_ERROR', 'it', 'Errore Generico');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_BASIC', 'it', 'Normale');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_BASIC', 'en', 'Normal');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_MINT', 'it', 'Avanzata');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_MINT', 'en', 'Advanced');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_BASIC_GOTO', 'it', 'Accedi con client normale');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_BASIC_GOTO', 'en', 'Go to the administration with normal client');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_MINT_GOTO', 'it', 'Accedi con client avanzato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_MINT_GOTO', 'en', 'Go to the administration with advanced client');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DATE_FROM', 'en', 'From');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DATE_FROM', 'it', 'Da');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DATE_TO', 'en', 'To');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DATE_TO', 'it', 'A');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('TEXT', 'en', 'Text');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('TEXT', 'it', 'Testo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ALL', 'en', 'All');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ALL', 'it', 'Tutte');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NUMBER_FROM', 'en', 'From');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NUMBER_FROM', 'it', 'Da');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NUMBER_TO', 'en', 'To');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NUMBER_TO', 'it', 'A');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_APPLY', 'en', 'Apply');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_APPLY', 'it', 'Applica');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_CONFIG_INTRO', 'en', 'Choose which content you want to add in this page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_CONFIG_INTRO', 'it', 'Scegli quali contenuti mostrare nella pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_CONFIGMYHOME', 'en', 'Page Content Configuration');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_CONFIGMYHOME', 'it', 'Configura la Pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_INSERTINTOCOLUMN', 'en', 'Inserting it into column');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_INSERTINTOCOLUMN', 'it', 'Inserendolo nella colonna');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_MOVE', 'en', 'Move');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_MOVE', 'it', 'Sposta');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_RESET', 'en', 'Reset the Page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_RESET', 'it', 'Reimposta la pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_MOVETHISSHOWLET', 'en', 'Move this box');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_MOVETHISSHOWLET', 'it', 'Sposta questo box');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_RESET_INTRO', 'en', 'If you want to discard the current configuration you can reset the page.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_RESET_INTRO', 'it', 'Se desideri riportare la pagina alla configurazione predefinita, puoi resettare le impostazioni.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_SWAPITWITH', 'en', 'Swap it with');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_SWAPITWITH', 'it', 'Scambiandolo con');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_LOADING_INFO', 'it', 'Caricamento informazioni in corso...');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_LOADING_INFO', 'en', 'Loading...');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_ERROR_INFO', 'it', 'Si è verificato un errore, riprovare.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_ERROR_INFO', 'en', 'An error has occurred, retry.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_CONFIRM_NEWPASS', 'it', 'Conferma nuova password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_CONFIRM_NEWPASS', 'en', 'Confirm new password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_EDITPASSWORD', 'it', 'Modifica Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_EDITPASSWORD', 'en', 'Edit Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_EDITPASSWORD_TITLE', 'it', 'Modifica Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_EDITPASSWORD_TITLE', 'en', 'Edit Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_EDITPROFILE_TITLE', 'it', 'Modifica profilo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_EDITPROFILE_TITLE', 'en', 'Edit Profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEUP', 'it', 'Sposta su');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEUP', 'en', 'Move up');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEUP_IN', 'it', 'Sposta su in posizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEUP_IN', 'en', 'Move at position');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEDOWN', 'it', 'Sposta giu');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEDOWN', 'en', 'Move down');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEDOWN_IN', 'it', 'Sposta giu in posizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEDOWN_IN', 'en', 'Move down at position');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_REMOVE', 'it', 'Rimuovi dalla lista');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_REMOVE', 'en', 'Remove from list');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_MESSAGE_TITLE_FIELDERRORS', 'it', 'Attenzione, si sono verificati i seguenti errori nella compilazione del modulo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_MESSAGE_TITLE_FIELDERRORS', 'en', 'Warning, please check the module');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_NEWPASS', 'it', 'Nuova password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_NEWPASS', 'en', 'New password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_OLDPASSWORD', 'it', 'Vecchia password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_OLDPASSWORD', 'en', 'Old password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PASSWORD_UPDATED', 'it', 'La password è stata aggiornata correttamente.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PASSWORD_UPDATED', 'en', 'Your password updated successfully.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PROFILE_UPDATED', 'it', 'Profilo aggiornato correttamente.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PROFILE_UPDATED', 'en', 'Your profile is now updated.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_SAVE_PASSWORD', 'it', 'Salva password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_SAVE_PASSWORD', 'en', 'Save password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_SAVE_PROFILE', 'it', 'Salva il profilo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_SAVE_PROFILE', 'en', 'Save profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ADDITEM_LIST', 'it', 'Aggiungi nuovo elemento alla lista');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ADDITEM_LIST', 'en', 'Add an element to the list');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PUBLICCHECK', 'it', 'Il mio profilo è pubblico');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PUBLICCHECK', 'en', 'My profile is public');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_YES', 'it', 'Si');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_YES', 'en', 'Yes');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_NO', 'it', 'No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_NO', 'en', 'No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_BOTH_YES_AND_NO', 'it', 'Indifferente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_BOTH_YES_AND_NO', 'en', 'Both');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MANDATORY_SHORT', 'it', '*');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MANDATORY_SHORT', 'en', '*');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MANDATORY_FULL', 'it', 'Obbligatorio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MANDATORY_FULL', 'en', 'Mandatory');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MINLENGTH_SHORT', 'it', 'Min');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MINLENGTH_SHORT', 'en', 'Min');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MINLENGTH_FULL', 'it', 'Lunghezza Minima');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MINLENGTH_FULL', 'en', 'Minimum length');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MAXLENGTH_SHORT', 'it', 'Max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MAXLENGTH_SHORT', 'en', 'Max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MAXLENGTH_FULL', 'it', 'Lunghezza Massima');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MAXLENGTH_FULL', 'en', 'Maximum length');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_CURRENT_USER_WITHOUT_PROFILE', 'it', 'Utente corrente senza profilo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_CURRENT_USER_WITHOUT_PROFILE', 'en', 'Current user without profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_4', 'it', 'Walter');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_4', 'en', 'Walter');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_4', 'it', 'customer user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_4', 'en', 'customer user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_4', 'it', 'walter');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_4', 'en', 'walter');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_4', 'it', 'pass');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_4', 'en', 'pass');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LABEL_USER', 'it', 'utente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LABEL_USER', 'en', 'user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LABEL_PASS', 'it', 'password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LABEL_PASS', 'en', 'password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_GUEST', 'it', 'Ospite');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_GUEST', 'en', 'Guest');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_GUEST', 'it', 'user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_GUEST', 'en', 'user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_GUEST', 'it', 'guest');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_GUEST', 'en', 'guest');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_GUEST', 'it', 'pass');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_GUEST', 'en', 'pass');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_1', 'it', 'admin');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_1', 'en', 'admin');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_2', 'it', 'intranet user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_2', 'en', 'intranet user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_3', 'it', 'customer user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_3', 'en', 'customer user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LANG_en', 'it', 'English');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LANG_en', 'en', 'English');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LANG_it', 'it', 'Italiano');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LANG_it', 'en', 'Italiano');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_STATUS_CREDENTIALS_INVALID', 'it', 'Credenziali non valide.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_STATUS_CREDENTIALS_INVALID', 'en', 'Username/Password not valid.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USERNAME', 'it', 'Utente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USERNAME', 'en', 'Username');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('COPYRIGHT', 'it', 'Copyright &copy; Entando S.r.l. 2013');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('COPYRIGHT', 'en', 'Copyright &copy; Entando S.r.l. 2013');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCHED_FOR', 'en', 'You searched for');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCHED_FOR', 'it', 'Hai cercato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_FORM_TITLE', 'en', 'Search');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_FORM_TITLE', 'it', 'Cerca');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_GO', 'en', 'Go');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_GO', 'it', 'Vai');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_NOTHING_FOUND', 'en', 'Nothing found.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_NOTHING_FOUND', 'it', 'Nessun risultato trovato.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS', 'en', 'Search results');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS', 'it', 'Risultati della ricerca');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS_INTRO', 'en', 'You''ve found');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS_INTRO', 'it', 'Sono stati trovati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS_OUTRO', 'en', 'results');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS_OUTRO', 'it', 'risultati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME', 'it', 'Benvenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME', 'en', 'Welcome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LINKS', 'en', 'Links');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LINKS', 'it', 'Approfondimenti');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ATTACHMENTS', 'en', 'Attachments');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ATTACHMENTS', 'it', 'Allegati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ARCHIVE_STYLE1_TITLE', 'en', 'Choose new style');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ARCHIVE_STYLE1_TITLE', 'it', 'Scegli questo stile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ARCHIVE_STYLE2_TITLE', 'en', 'Choose new style');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ARCHIVE_STYLE2_TITLE', 'it', 'Scegli questo stile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ARCHIVE_STYLE3_TITLE', 'en', 'Choose new style');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ARCHIVE_STYLE3_TITLE', 'it', 'Scegli questo stile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRNome', 'it', 'Nome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRNome', 'en', 'Name');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRCognome', 'it', 'Cognome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRCognome', 'en', 'Surname');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRemail', 'it', 'Email');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRemail', 'en', 'Email');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_1', 'en', 'Jeff');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_1', 'it', 'Jeff');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_1', 'en', 'jeff');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_1', 'it', 'jeff');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_1', 'en', 'adminadmin');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_1', 'it', 'adminadmin');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_2', 'en', 'Caroline');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_2', 'it', 'Caroline');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_2', 'en', 'caroline');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_2', 'it', 'caroline');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_3', 'en', 'Max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_3', 'it', 'Max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_3', 'en', 'max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_3', 'it', 'max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_3', 'en', 'customer');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_3', 'it', 'customer');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_2', 'en', 'intranet');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_2', 'it', 'intranet');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpsharewith_TITLE', 'it', 'Condividi con...');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpsharewith_TITLE', 'en', 'Share with...');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpsharewith_NOSCRIPT', 'en', 'This feature needs a Javascript enabled browser.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpsharewith_NOSCRIPT', 'it', 'Questa funzionalità ha bisogno di un browser con Javascript attivato.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jacms_LIST_VIEWER_FIELD', 'en', 'The value for field');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jacms_LIST_VIEWER_FIELD', 'it', 'Il valore del campo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jacms_LIST_VIEWER_INVALID_FORMAT', 'en', 'is invalid');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jacms_LIST_VIEWER_INVALID_FORMAT', 'it', 'non è corretto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PORTAL_TITLE', 'it', 'Entando Demo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PORTAL_TITLE', 'en', 'Entando Demo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PREV', 'it', 'Prec');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PREV', 'en', 'Prev');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NEXT', 'it', 'Succ');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NEXT', 'en', 'Next');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DOWNLOAD', 'it', 'Download');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DOWNLOAD', 'en', 'Download');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRazienda', 'en', 'Company');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRazienda', 'it', 'Azienda');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LIST_VIEWER_EMPTY', 'it', 'Nessun risultato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LIST_VIEWER_EMPTY', 'en', 'Nothing found');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LOGIN', 'it', 'Login');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LOGIN', 'en', 'Sign In');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LOGOUT', 'it', 'Logout');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LOGOUT', 'en', 'Sign Out');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('EDIT_THIS_CONTENT', 'en', 'Edit this content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('EDIT_THIS_CONTENT', 'it', 'Modifica questo contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('TWEET', 'en', 'Tweet');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('TWEET', 'it', 'Tweet');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('BEGIN_GUEST', 'en', 'Begin guest');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('BEGIN_GUEST', 'it', 'Begin guest');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_caroline', 'en', '<strong>Welcome Caroline!</strong> you are a co-worker and you can access to the intranet area!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_caroline', 'it', '<strong>Benvenuta Caroline!</strong> sei una collaboratrice e puoi accedere alla sezione intranet!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_max', 'en', '<strong>Welcome Max!</strong> you are a customer and you can access to the customer area!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_max', 'it', '<strong>Welcome Max!</strong> sei un cliente e puoi accedere alla sezione clienti!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH', 'en', 'Search');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH', 'it', 'Cerca');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_jeff', 'en', '<strong>Welcome, Jeff</strong>! you are an administrator with full control over the entire portal!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_jeff', 'it', '<strong>Benvenuto, Jeff!</strong> sei un amministratore con controllo completo di tutto il portale!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_admin', 'en', '<strong>Welcome Admin!</strong> you are an administrator with full control over the entire portal!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_admin', 'it', '<strong>Benvenuto Admin!</strong> sei un amministratore con controllo completo di tutto il portale!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LOGIN_AS', 'en', 'Sign in as');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LOGIN_AS', 'it', 'Accedi come');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PLEASE_LOGIN', 'en', 'Please Sign In');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PLEASE_LOGIN', 'it', 'E'' necessario effettuare l''accesso');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PLEASE_LOGIN_AGAIN', 'en', 'Please Sign Out and Sign In again.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PLEASE_LOGIN_AGAIN', 'it', 'E'' necessario riloggarsi.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PLEASE_LOGIN_TO_EDIT_PASSWORD', 'en', 'Please Sign Out and Sign In again in order to change your password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PLEASE_LOGIN_TO_EDIT_PASSWORD', 'it', 'E'' necessario effettuare l''accesso per cambiare la password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_BY', 'en', 'Search by');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_BY', 'it', 'Cerca per');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_USER_NOT_ALLOWED', 'it', 'Operazione non consentita');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_USER_NOT_ALLOWED', 'en', 'Operation not allowed');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_GENERIC_ERROR', 'it', 'Si è verificato un errore');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_GENERIC_ERROR', 'en', 'An error is happened');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_ERRORS', 'it', 'Errori');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_ERRORS', 'en', 'Errors');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_WORKING_ON', 'it', 'Stai lavorando a');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_WORKING_ON', 'en', 'You are working on');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONTENT_FREE', 'it', 'Contenuto visibile a tutti');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONTENT_FREE', 'en', 'Content visible to all');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SAVE', 'it', 'Salva');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SAVE', 'en', 'Save');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SEARCH', 'it', 'Cerca');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SEARCH', 'en', 'Search');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONTINUE', 'it', 'Continua');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONTINUE', 'en', 'Continue');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_URL', 'it', 'Link a url');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_URL', 'en', 'Link to url');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_PAGE', 'it', 'Link a pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_PAGE', 'en', 'Link to page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_CONTENT', 'it', 'Link a contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_CONTENT', 'en', 'Link to content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_CONTENT_ON_PAGE', 'it', 'su pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_CONTENT_ON_PAGE', 'en', 'on page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE', 'it', 'Configura');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE', 'en', 'Configure');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REMOVE', 'it', 'Rimuovi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REMOVE', 'en', 'Remove');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_DO_THIS_ON_DEFAULT_LANG', 'it', 'Questo Attributo può essere usato solamente nella sezione della lingua di default');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_DO_THIS_ON_DEFAULT_LANG', 'en', 'You can only fill this Attribute from the default language section');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_LINK_ATTRIBUTE', 'it', 'Configura Attributo Link');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_LINK_ATTRIBUTE', 'en', 'Configure Link Attribute');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_STEP_1_OF_2', 'it', '(Passo 1 di 2)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_STEP_1_OF_2', 'en', '(Step 1 of 2)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_STEP_2_OF_2', 'it', '(Passo 2 di 2)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_STEP_2_OF_2', 'en', '(Step 2 of 2)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CHOOSE_LINK_TYPE', 'it', 'Scelta tipo di link');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CHOOSE_LINK_TYPE', 'en', 'Choose link type');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_LINK_TO_CONTENT', 'it', 'Scegli un Contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_LINK_TO_CONTENT', 'en', 'Choose a Content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SEARCH_FOR_DESCR', 'it', 'Cerca per Descrizione:');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SEARCH_FOR_DESCR', 'en', 'Search for Description:');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SEARCH_FILTERS', 'it', 'Raffina la Ricerca');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SEARCH_FILTERS', 'en', 'Refine your Search');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_TYPE', 'it', 'Tipo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_TYPE', 'en', 'Type');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SELECT_ALL', 'it', 'Tutti');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SELECT_ALL', 'en', 'All');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_STATUS', 'it', 'Stato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_STATUS', 'en', 'Status');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINKATTRIBUTE_CONTENT_SUMMARY', 'it', 'La tabella mostra l''elenco dei contenuti disponibili per la configurazione del LinkAttribute. Per ogni contenuto è indicata la descrizione, il codice, il Gruppo di Utenti a cui appartiene, la data di creazione e quella di ultima modifica.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINKATTRIBUTE_CONTENT_SUMMARY', 'en', 'This table shows a list of contents available for the configuration of LinkAttribute. For each content it shows description, code, group, date of creation and of last modification.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINKATTRIBUTE_CONTENT_CAPTION', 'it', 'Lista Contenuti');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINKATTRIBUTE_CONTENT_CAPTION', 'en', 'Content List');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_DESCRIPTION', 'it', 'Descrizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_DESCRIPTION', 'en', 'Description');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_GROUP', 'it', 'Gruppo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_GROUP', 'en', 'Group');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CREATION_DATE', 'it', 'Creazione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CREATION_DATE', 'en', 'Creation');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LAST_EDIT', 'it', 'Ultima Modifica');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LAST_EDIT', 'en', 'Last Edit');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_MAKE_CONTENT_ON_PAGE', 'it', 'Prosegui scegliendo anche una Pagina di pubblicazione temporanea');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_eMail', 'en', 'Email');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_MAKE_CONTENT_ON_PAGE', 'en', 'Continue choosing a Page for on-the-fly publishing');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_LINK_TO_PAGE', 'it', 'Scegli una  Pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_LINK_TO_PAGE', 'en', 'Choose a Page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_FOR_THE_CONTENT', 'it', 'per il Contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_FOR_THE_CONTENT', 'en', 'for the Content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_PAGE_TREE', 'it', 'Albero delle Pagine');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_PAGE_TREE', 'en', 'Page Tree');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIRM', 'it', 'Conferma');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIRM', 'en', 'Confirm');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_URL', 'it', 'Inserisci un URL valido (esempio: http://www.miosito.it/)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_URL', 'en', 'Insert a valid URL (ex: http://www.miosito.it/)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_URL', 'it', 'URL');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_URL', 'en', 'URL');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_PREVIOUS_LINK', 'it', 'In precedenza era stato configurato un');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_PREVIOUS_LINK', 'en', 'Previously configured as');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_EDIT_CONTENT', 'it', 'Modifica');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_EDIT_CONTENT', 'en', 'Edit');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REMOVE_CONTENT', 'it', 'Elimina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REMOVE_CONTENT', 'en', 'Remove');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LABEL_NEW_CONTENT', 'it', 'Crea un nuovo contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LABEL_NEW_CONTENT', 'en', 'Create a new content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CHOOSE_ATTACH', 'it', 'Scegli un allegato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CHOOSE_ATTACH', 'en', 'Choose an attachment');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CHOOSE_IMAGE', 'it', 'Scegli un''immagine');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CHOOSE_IMAGE', 'en', 'Choose an image');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CATEGORY', 'it', 'Categoria');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CATEGORY', 'en', 'Category');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_JOIN', 'it', 'Associa');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_JOIN', 'en', 'Join');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_JOIN_TO', 'it', 'Associa al Contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_JOIN_TO', 'en', 'Join to Content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LABEL_NEW_RESOURCE', 'en', 'New Resource');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LABEL_NEW_RESOURCE', 'it', 'Nuova Risorsa');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_BACK_TO_CONTENT', 'en', 'Back to the Content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_BACK_TO_CONTENT', 'it', 'Torna al Contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REQUIRED_SHORT', 'en', '*');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REQUIRED_SHORT', 'it', '*');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REQUIRED_FULL', 'en', 'Required');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REQUIRED_FULL', 'it', 'Obbligatorio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_INFO', 'en', 'Info');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_INFO', 'it', 'Info');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_FILE', 'en', 'File');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_FILE', 'it', 'File');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CATEGORIES_MANAGEMENT', 'en', 'Categories Management');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CATEGORIES_MANAGEMENT', 'it', 'Gestione delle Categorie');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_RESOURCES_CATEGORIES_SUMMARY', 'en', 'The table shows the categories associated with the resource. For each category shows the description (also known as the title), and you can remove it from the table.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_RESOURCES_CATEGORIES_SUMMARY', 'it', 'La tabella mostra le Categorie associate alla Risorsa. Per ogni categoria è indicata la descrizione (nota anche come titolo), ed è possibile rimuoverla dalla tabella.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_RESOURCES_CATEGORIES', 'en', 'Categories');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_RESOURCES_CATEGORIES', 'it', 'Categorie');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_RESOURCES_CATEGORY', 'en', 'Category');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_RESOURCES_CATEGORY', 'it', 'Categoria');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_INFO', 'en', 'The fields marked with * are required.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_INFO', 'it', 'I campi contrassegnati dal simbolo * sono obbligatori.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MANDATORY_FULL', 'en', 'Mandatory');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MANDATORY_FULL', 'it', 'Obbligatorio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MANDATORY_SHORT', 'en', '*');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MANDATORY_SHORT', 'it', '*');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MAXLENGTH_FULL', 'en', 'Max Length');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MAXLENGTH_FULL', 'it', 'Lunghezza massima');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MAXLENGTH_SHORT', 'en', 'max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MAXLENGTH_SHORT', 'it', 'max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MINLENGTH_FULL', 'en', 'Min Length');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MINLENGTH_FULL', 'it', 'Lunghezza minima');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MINLENGTH_SHORT', 'en', 'min');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MINLENGTH_SHORT', 'it', 'min');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_INVIA', 'en', 'Send');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_INVIA', 'it', 'Invia');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_MESSAGE_SAVE_CONFIRMATION', 'it', 'Il messaggio è stato inviato correttamente. Se vuoi inviaci un''altra');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_MESSAGE_SAVE_CONFIRMATION', 'en', 'The message has been sent successfully. If you need, send us another');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_MESSAGE_REQUEST_LINK', 'en', 'request');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_MESSAGE_REQUEST_LINK', 'it', 'richiesta');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_SELECT', 'en', 'Select');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_SELECT', 'it', 'Seleziona');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_MESSAGETYPE', 'it', 'Scegliere un tipo di messaggio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_MESSAGETYPE', 'en', 'Choose a message type');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_CHOOSE_TYPE', 'it', 'Scegli e continua');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_CHOOSE_TYPE', 'en', 'Select and continue');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ERRORS', 'it', 'Errori durante la compilazione del modulo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ERRORS', 'en', 'Errors occured');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_YES', 'it', 'Si');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_YES', 'en', 'Yes');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_NO', 'it', 'No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_NO', 'en', 'No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_BOTH_YES_AND_NO', 'it', 'Indifferente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_BOTH_YES_AND_NO', 'en', 'Both');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ERRORS_HAPPENED', 'it', 'Si sono verificati degli errori!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ERRORS_HAPPENED', 'en', 'An error has happened!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_Company', 'it', 'Azienda');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_Company', 'en', 'Company');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_Address', 'it', 'Indirizzo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_Address', 'en', 'Address');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_eMail', 'it', 'Email');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_Note', 'it', 'Messaggio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_Note', 'en', 'Message');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_SAVE', 'it', 'Invia');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_SAVE', 'en', 'Send');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_CONTENT_RATING', 'it', 'Valutazione del Contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_CONTENT_RATING', 'en', 'Content Rating');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_AVG_RATING', 'it', 'Voto medio dei lettori:');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_AVG_RATING', 'en', 'Average users rating:');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTERS_NUM', 'it', 'votanti.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTERS_NUM', 'en', 'voters.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTERS_NULL', 'it', 'Ancora nessun utente ha votato questo contenuto.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTERS_NULL', 'en', 'No rating yet.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTE', 'it', 'Valuta');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTE', 'en', 'Rate it Now');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTE_SUBMIT', 'it', 'Invia la Valutazione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTE_SUBMIT', 'en', 'Send Rating');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENTS', 'it', 'Commenti');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENTS', 'en', 'Comments');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_AUTHOR', 'it', 'Autore');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_AUTHOR', 'en', 'Author');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_DATE', 'it', 'Data');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_DATE', 'en', 'Date');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_TEXT', 'it', 'Testo Commento');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_TEXT', 'en', 'Comment Text');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_DELETE', 'it', 'Cancella');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_DELETE', 'en', 'Delete');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_RATING', 'it', 'Valutazione Commento');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_RATING', 'en', 'Comment Rating');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_NORATING', 'it', 'Nessuna valutazione da parte degli utenti.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_NORATING', 'en', 'No rating yet.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_LABEL_RATING', 'it', 'Voto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_LABEL_RATING', 'en', 'Rating Value');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_SEND', 'it', 'Invia');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_SEND', 'en', 'Send');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_THE_CONTENT', 'it', 'Commenta il Contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_THE_CONTENT', 'en', 'Comment this Content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_LABEL_COMMENTTEXT', 'it', 'Testo del Commento');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_LABEL_COMMENTTEXT', 'en', 'Comment Text');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENTS_NULL', 'it', 'Ancora nessun commento per questo contenuto.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENTS_NULL', 'en', 'No comments yet.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ACTIVE_QUESTIONNAIRE', 'en', 'active Questionnaires');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ACTIVE_QUESTIONNAIRE', 'it', 'questionari attivi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_AGE', 'en', 'Age');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_AGE', 'it', 'Età');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ANSWER_NUMBER', 'en', 'response number');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ANSWER_NUMBER', 'it', 'risposta numero');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ANSWERS', 'en', 'Answers');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ANSWERS', 'it', 'Risposte');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ARCHIVE_ENDDAY', 'en', 'and expired');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ARCHIVE_ENDDAY', 'it', 'ed è scaduto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_BEGIN', 'en', 'Begins');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_BEGIN', 'it', 'Inizia il');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_COUNTRY', 'en', 'City');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_COUNTRY', 'it', 'Città');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_DESCRIPTION', 'en', 'Description');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_DESCRIPTION', 'it', 'Descrizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ENDDAY', 'en', 'and expires');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ENDDAY', 'it', 'e scadrà');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_ALREADY_VOTED', 'en', 'Mistake! You have already voted.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_ALREADY_VOTED', 'it', 'Errore! Hai già votato.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_EXPIRED_SURVEY', 'en', 'Mistake! The survey is already expired.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_EXPIRED_SURVEY', 'it', 'Errore! Il sondaggio è scaduto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_FINALRESULTNOTALLOWED', 'en', 'Mistake! The display of final results is not allowed.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_FINALRESULTNOTALLOWED', 'it', 'Errore! La visualizzazione dei risultati finali non è permessa.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_NOTBEGUNYET', 'en', 'Mistake! You have not yet begun.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_NOTBEGUNYET', 'it', 'Errore! Non hai ancora cominciato.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_NULL_VOTER_RESPONSE', 'en', 'Mistake! The number of responses is zero');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_NULL_VOTER_RESPONSE', 'it', 'Errore! Il numero di risposte è nullo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_PARTIALRESULTSNOTALLOWED', 'en', 'Mistake! Display of partial results is not allowed.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_PARTIALRESULTSNOTALLOWED', 'it', 'Errore! La visualizzazione dei risultati parziali non è permessa.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_USER_NOT_ALLOWED', 'en', 'Mistake! Unauthorized.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_USER_NOT_ALLOWED', 'it', 'Errore! Utente non autorizzato.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_FINAL_RESULTS', 'en', 'Final Results');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_FINAL_RESULTS', 'it', 'Risultati finali');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_FREE_TEXT', 'en', 'Free Text');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_FREE_TEXT', 'it', 'Testo Libero');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO', 'en', 'Send');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO', 'it', 'Invia');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_ACTIVE_POLLS', 'en', 'active Polls');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_ACTIVE_POLLS', 'it', 'sondaggi attivi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_ACTIVE_POLLS', 'en', 'Go to the list of active polls');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_ACTIVE_POLLS', 'it', 'Vai alla lista dei sondaggi attivi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_ACTIVE_QUESTIONNAIRE', 'en', 'Go to the list of active surveys');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_ACTIVE_QUESTIONNAIRE', 'it', 'Vai alla lista dei questionari attivi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_POLL', 'en', 'Go to');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_POLL', 'it', 'Vai a');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_POLL_ARCHIVE', 'en', 'Go to surveys');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_POLL_ARCHIVE', 'it', 'Vai all''archivio sondaggi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_QUESTIONNAIRE', 'en', 'Vai a');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_QUESTIONNAIRE', 'it', 'Vai a');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_QUESTIONNAIRE_ARCHIVE', 'en', 'Go to questionnaires');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_QUESTIONNAIRE_ARCHIVE', 'it', 'Vai all''archivio questionari');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_INSERT_FREE_TEXT', 'en', 'Enter free text');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_INSERT_FREE_TEXT', 'it', 'Inserisci il testo libero');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_MAX_ANSWERS', 'en', 'Maximum number of responses');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_MAX_ANSWERS', 'it', 'Numero massimo di risposte');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_MIN_ANSWERS', 'en', 'Minimum number of responses');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_MIN_ANSWERS', 'it', 'Numero minimo di risposte');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_OBTAINED', 'en', 'scored');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_OBTAINED', 'it', 'ha ottenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_PARTIAL_RESULTS', 'en', 'Subtotals');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_PARTIAL_RESULTS', 'it', 'Risultati parziali');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_PERSON', 'en', 'people.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_PERSON', 'it', 'persone.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLL', 'en', 'poll');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLL', 'it', 'sondaggio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLL_ARCHIVE', 'en', 'Archive');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLL_ARCHIVE', 'it', 'Archivio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLL_STARTDAY', 'en', 'The survey was published');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLL_STARTDAY', 'it', 'Il sondaggio è stato pubblicato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS', 'en', 'Polls');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS', 'it', 'Sondaggi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS_ARCHIVE_INTRO', 'en', 'If you want you can go back to');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS_ARCHIVE_INTRO', 'it', 'Se vuoi puoi tornare ai');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS_LIST', 'en', 'List active polls');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS_LIST', 'it', 'Lista dei sondaggi attivi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS_LIST_INTRO', 'en', 'If you want you can see the results of polls ended in');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS_LIST_INTRO', 'it', 'Se vuoi puoi vedere i risultati dei sondaggi scaduti nell''');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_PROFILE_NEEDED', 'en', 'It takes some of your data. Thank you for your cooperation.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_PROFILE_NEEDED', 'it', 'Sono necessari alcuni tuoi dati anagrafici. Grazie per la collaborazione.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTION', 'en', 'Question');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTION', 'it', 'Domanda');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTION_OF', 'en', 'of');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTION_OF', 'it', 'di');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTIONNAIRE_ARCHIVE', 'en', 'Archive');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTIONNAIRE_ARCHIVE', 'it', 'Archivio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTIONNAIRE_LIST_INTRO', 'en', 'If you want, you can see the list of expired surveys browsing the');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTIONNAIRE_LIST_INTRO', 'it', 'Se vuoi puoi vedere i questionari scaduti nell''');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_SEX', 'en', 'Gender');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_SEX', 'it', 'Sesso');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_SURVEY', 'en', 'questionnaire');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_SURVEY', 'it', 'questionario');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_SURVEY_STARTDAY', 'en', 'The questionnaire was posted');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_SURVEY_STARTDAY', 'it', 'Il questionario è stato pubblicato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_THANKS_FOR', 'en', 'Thank you for cooperating. If you want you can return to the list');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_THANKS_FOR', 'it', 'Grazie per aver collaborato. Se vuoi puoi tornare alla lista dei');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_TITLE', 'en', 'Title');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_TITLE', 'it', 'Titolo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_VOTED_TOT', 'en', 'All voted');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_VOTED_TOT', 'it', 'Hanno votato in tutto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_VOTES', 'en', 'votes');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_VOTES', 'it', 'voti');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_HAVE_NOT_VOTED', 'en', 'You have not voted');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_HAVE_NOT_VOTED', 'it', 'Non hai ancora votato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_HAVE_VOTED', 'en', 'You have already voted');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_HAVE_VOTED', 'it', 'Hai già votato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_NOT_VOTED', 'en', '(You have not voted)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_NOT_VOTED', 'it', '(Non hai ancora votato)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_VOTED', 'en', '(You have already voted)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_VOTED', 'it', '(Hai già votato)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpsurvey_POLLS_ARCHIVE_LIST_TITLE', 'it', 'Archivio dei Sondaggi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpsurvey_POLLS_ARCHIVE_LIST_TITLE', 'en', 'Polls Archive');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CONTENT_CHANGED', 'it', 'Il contenuto è stato salvato correttamente. La pagina si sta ricaricando.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CONTENT_CHANGED', 'en', 'Content saved. This page will be reloaded');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('EDIT_CONTENT', 'it', 'Modifica Contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('EDIT_CONTENT', 'en', 'Edit Content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WIDGET_EDIT_POPUP_TITLE', 'it', 'Edit');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WIDGET_EDIT_POPUP_TITLE', 'en', 'Edit');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_FASTCONTENTEDIT_SHOWLET_TITLE', 'it', 'Modifica Contenuto da Frontend');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_FASTCONTENTEDIT_SHOWLET_TITLE', 'en', 'Edit Content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_INTRO_en', 'it', 'Inglese');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_INTRO_en', 'en', 'English');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_INTRO_it', 'it', 'Italiano');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_INTRO_it', 'en', 'Italian');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Date', 'it', 'Data');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Date', 'en', 'Date');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Body', 'it', 'Testo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Body', 'en', 'Body');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Image1', 'it', 'Immagine 1');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Image1', 'en', 'Image 1');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Image2', 'it', 'Immagine 2');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Image2', 'en', 'Image 2');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Attach', 'it', 'Allegati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Attach', 'en', 'Attachments');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Links', 'it', 'Link correlati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Links', 'en', 'Related links');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LIST', 'it', 'Lista');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LIST', 'en', 'List');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_TITLE_COM', 'it', 'Form Azienda');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_TITLE_COM', 'en', 'Company Form');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LABEL_NEW_ATTACH', 'en', 'New File');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LABEL_NEW_ATTACH', 'it', 'Nuovo File');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LABEL_NEW_IMAGE', 'it', 'Nuovo File');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LABEL_NEW_IMAGE', 'en', 'New File');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('VIEW_ALL', 'it', 'View All');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('VIEW_ALL', 'en', 'View All');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('EDIT_CONTENT_BACKOFFICE', 'en', 'Edit Content (Backoffice)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('EDIT_CONTENT_BACKOFFICE', 'it', 'Modifica Contenuto (Backoffice)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CNG_Title', 'en', 'Title');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CNG_Title', 'it', 'Titolo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CNG_Abstract', 'en', 'Abstract');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CNG_Abstract', 'it', 'Estratto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Title', 'en', 'Title');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Title', 'it', 'Titolo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Abstract', 'en', 'Abstract');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Abstract', 'it', 'Estratto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('MESSAGE_TITLE_FIELDERRORS', 'en', 'Error');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('MESSAGE_TITLE_FIELDERRORS', 'it', 'Errore');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Name', 'en', 'Name');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Name', 'it', 'Nome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Surname', 'en', 'Surname');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Surname', 'it', 'Cognome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Address', 'en', 'Address');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Address', 'it', 'Indirizzo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_eMail', 'en', 'Email');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_eMail', 'it', 'Email');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Date', 'en', 'Birthday');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Date', 'it', 'Data di nascita');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Number', 'en', 'Height (cm)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Number', 'it', 'Altezza (cm)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Text', 'en', 'Personal WebSite');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Text', 'it', 'Sito Personale');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Longtext', 'en', 'Note');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Longtext', 'it', 'Note');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_SAVE', 'en', 'Send');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_SAVE', 'it', 'Invia');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Enumerator', 'en', 'Contract Type');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Enumerator', 'it', 'Tipo Contratto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_TITLE_PER', 'en', 'User Form');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_TITLE_PER', 'it', 'Form Utente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SLOGAN_TITLE', 'en', 'Welcome to Entando Portal Demo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SLOGAN_TITLE', 'it', 'Benvenuto nel Portale Demo di Entando');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCES', 'it', 'Risorse API');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCES', 'en', 'API Resources');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_ERROR', 'it', 'Errore');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_ERROR', 'en', 'Errors');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE', 'it', 'Risorsa');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE', 'en', 'Resource');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_DESCRIPTION', 'it', 'Descrizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_DESCRIPTION', 'en', 'Description');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_GOTO_DETAILS', 'it', 'Vai al dettaglio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_GOTO_DETAILS', 'en', 'Go to details');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_OFF', 'it', 'Non Attivo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_OFF', 'en', 'Not Active');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_FREE', 'it', 'Attivo, Accesso Libero');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_FREE', 'en', 'Active, Free Access');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_AUTH', 'it', 'Attivo, Utenti Registrati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_AUTH', 'en', 'Active, Registered Users');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_LOCK', 'it', 'Metodo Attivo, Utenti Registrati con Autorizzazione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_LOCK', 'en', 'Active, Registered Users with Permission');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_NA', 'it', 'Metodo Non Disponibile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_STATUS_NA', 'en', 'Method Not Available');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_NO_RESOURCES', 'it', 'Non ci sono Risorse API disponibili.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_NO_RESOURCES', 'en', 'No API Resources available at the moment.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_TABLE_SUMMARY', 'it', 'La tabella elenaca le Risorse API disponibile nel sistema. Nome della risorsa, la sua descrizione e lo stato di ciascun metodo.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_TABLE_SUMMARY', 'en', 'The table lists the API Resources available in the system. Method name, description, group and the status of each method.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_NAME', 'it', 'Nome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_NAME', 'en', 'Name');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_NAMESPACE', 'it', 'Namespace');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_NAMESPACE', 'en', 'Namespace');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_SOURCE', 'it', 'Sorgente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_SOURCE', 'en', 'Source');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_URI', 'it', 'URI');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_RESOURCE_URI', 'en', 'URI');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_EXTENSION', 'it', 'Estensione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_EXTENSION', 'en', 'Extension');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_EXTENSION_NOTE', 'it', '''.xml'' per la risposta in formato xml e ''.json'' per la risposta in formato json.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_EXTENSION_NOTE', 'en', '''.xml'' for response in xml format and ''.json'' for json.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_KO', 'it', 'Non disponibile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_KO', 'en', 'Not available');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD', 'it', 'Metodo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD', 'en', 'Method');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_OK', 'it', 'Disponibile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_OK', 'en', 'Available');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTHORIZATION', 'it', 'Autorizzazione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTHORIZATION', 'en', 'Authorization');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_FREE', 'it', 'Nessuna, questo metodo è pubblico');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_FREE', 'en', 'None, this method is public');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_WITH_PERM', 'it', 'Utenti registrati con permesso');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_WITH_PERM', 'en', 'Registered users with permission');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_SIMPLE', 'it', 'Utenti registrati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_AUTH_SIMPLE', 'en', 'Registered users');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMAS', 'it', 'Schema XML');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMAS', 'en', 'XML Schemas');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMA_REQ', 'it', 'Richiesta');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMA_REQ', 'en', 'Request');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMA_RESP', 'it', 'Risposta');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_SCHEMA_RESP', 'en', 'Response');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_PARAMS_SUMM', 'it', 'Questa tabella mostra i parametri per la richiesta del metodo. Per ciascuno di essi ci sono tre colonne: il nome del parametro, la descrizione del parametro e l''indicazione di obbligatorietà.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_PARAMS_SUMM', 'en', 'This table shows the request parameters for this method. For each of them there are three columns: the parameter name, the parameter description and whether if it''s mandatory or not.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_REQUEST_PARAMS', 'it', 'Parametri');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_METHOD_REQUEST_PARAMS', 'en', 'Parameters');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_PARAM_NAME', 'it', 'Nome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_PARAM_NAME', 'en', 'Name');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_PARAM_DESCRIPTION', 'it', 'Descrizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_PARAM_DESCRIPTION', 'en', 'Description');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_PARAM_REQUIRED', 'it', 'Obbligatorio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_PARAM_REQUIRED', 'en', 'Mandatory');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('YES', 'it', 'Si');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('YES', 'en', 'Yes');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NO', 'it', 'No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NO', 'en', 'No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_GOTO_LIST', 'it', 'Lista delle Risorse API');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_GOTO_LIST', 'en', 'API Resource List');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_GOTO_SERVICE_LIST', 'it', 'Lista Servizi API');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_GOTO_SERVICE_LIST', 'en', 'API Service List');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICES', 'it', 'Servizi API');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICES', 'en', 'API Services');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE', 'it', 'Servizio API');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE', 'en', 'API Service');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARENT_API', 'it', 'Risorsa API');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARENT_API', 'en', 'Parent API Resource');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_KEY', 'it', 'Chiave');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_KEY', 'en', 'Key');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTHORIZATION', 'it', 'Autorizzazione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTHORIZATION', 'en', 'Authority');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTH_FREE', 'it', 'Libera');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTH_FREE', 'en', 'Free');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTH_SIMPLE', 'it', 'Autenticazione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTH_SIMPLE', 'en', 'Simple Autentication');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTH_WITH_PERM', 'it', 'Autenticazione con permesso');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTH_WITH_PERM', 'en', 'Authentication with permission');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTH_WITH_GROUP', 'it', 'Autenticazione con gruppo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_AUTH_WITH_GROUP', 'en', 'Authentication with group');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_URI', 'it', 'Service URI');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_URI', 'en', 'Service URI');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_SCHEMAS', 'it', 'XML Schema');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_SCHEMAS', 'en', 'XML Schema');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_SCHEMA_RESP', 'it', 'Risposta');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_SCHEMA_RESP', 'en', 'Response');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAMETERS_SUMMARY', 'it', 'Summary..');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAMETERS_SUMMARY', 'en', 'Summary..');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAMETERS', 'it', 'Parametri');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAMETERS', 'en', 'Parameters');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_NAME', 'it', 'Nome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_NAME', 'en', 'Name');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_DESCRIPTION', 'it', 'Descrizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_DESCRIPTION', 'en', 'Description');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_REQUIRED', 'it', 'Obbligatorio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_REQUIRED', 'en', 'Required');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_DEFAULT_VALUE', 'it', 'Default');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_PARAM_DEFAULT_VALUE', 'en', 'Default');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_DESCRIPTION', 'en', 'Description');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ENTANDO_API_SERVICE_DESCRIPTION', 'it', 'Descrizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_CNG_Title', 'en', 'Title');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_CNG_Abstract', 'en', 'Abstract');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_CNG_Body', 'en', 'Body');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_CNG_Image1', 'en', 'Image1');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_CNG_Image2', 'en', 'Image2');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_CNG_Attach', 'en', 'Attach');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_CNG_Links', 'en', 'Links');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_YTB_VideoCode', 'en', 'VideoCode');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_YTB_Title', 'en', 'Title');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_YTB_Abstract', 'en', 'Abstract');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_YTB_Body', 'en', 'Body');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_YTB_Attach', 'en', 'Attach');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_YTB_Links', 'en', 'Links');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_TITLE_CNT', 'en', 'Contact us');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_CNT_Name', 'en', 'Name');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_CNT_Surname', 'en', 'Surname');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_CNT_eMail', 'en', 'eMail');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_CNT_Message', 'en', 'Message');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_CNT_SAVE', 'en', 'Send Request');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_CNT_SAVE', 'it', 'Invia Richiesta');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SLOGAN_DESCRIPTION', 'en', 'Entando is a Java Open Source portal-like platform for making you happy building web, cloud, mobile and social enterprise-class solutions.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SLOGAN_DESCRIPTION', 'it', 'Entando is a Java Open Source portal-like platform for making you happy building web, cloud, mobile and social enterprise-class solutions.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_guest', 'en', '<strong>Welcome Guest!</strong>');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_guest', 'it', '<strong>Welcome Guest!</strong>');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_TITLE_VRF', 'en', 'Vacation Request Form');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_VRF_Name', 'en', 'Name');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_VRF_Surname', 'en', 'Surname');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_VRF_StartDate', 'en', 'Start Date');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_VRF_EndDate', 'en', 'End Date');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_VRF_SAVE', 'en', 'Send Request');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_VRF_SAVE', 'it', 'Invia Richiesta');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_NEWPAGE', 'en', 'New Page from');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_NEWPAGE', 'it', 'Nuova Pagina da');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_EDITPAGE', 'en', 'Edit Page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_EDITPAGE', 'it', 'Edita Pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_DELETEPAGE', 'en', 'Delete Page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_DELETEPAGE', 'it', 'Cancella Pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_POPUP_TITLE', 'en', 'Edit');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_POPUP_TITLE', 'it', 'Edit');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_EDIT_FRAME', 'en', 'Edit frame:');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_EDIT_FRAME', 'it', 'Modifica Posizione:');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_EMPTY_FRAME', 'en', 'Empty frame:');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_EMPTY_FRAME', 'it', 'Svuola la posizione:');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_EDIT_THIS_CONTENT', 'en', 'Edit this content (Front Shortcut)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfrontshortcut_EDIT_THIS_CONTENT', 'it', 'Modifica questo contenuto (Front Shortcut)');


INSERT INTO pagemodels (code, descr, frames, plugincode) VALUES ('internal', 'Internal', '<frames>
	<frame locked="true" pos="0">
		<descr>Top Header I</descr>
		<defaultShowlet code="navigation_langbar" />
	</frame>
	<frame locked="true" pos="1">
		<descr>Top Header II</descr>
<defaultShowlet code="login_form" />
	</frame>
	<frame locked="true" pos="2">
		<descr>Top Header III</descr>
	</frame>
	<frame locked="true" pos="3">
		<descr>Header I</descr>
	</frame>
	<frame locked="true" pos="4">
		<descr>Header II</descr>
		<defaultShowlet code="search_form" />
	</frame>
	<frame locked="true" pos="5">
		<descr>Header III</descr>
	</frame>
	<frame locked="true" pos="6">
		<descr>Users I</descr>
	</frame>
	<frame locked="true" pos="7">
		<descr>Users II</descr>
	</frame>
	<frame locked="true" pos="8">
		<descr>Users III</descr>
	</frame>
	<frame locked="true" pos="9">
		<descr>Users IV</descr>
	</frame>
	<frame locked="true" pos="10">
		<descr>Content I</descr>
		<defaultShowlet code="navigation_menu">
			<properties>
				<property key="navSpec">code(homepage).subtree(1)</property>
			</properties>
		</defaultShowlet>
	</frame>
	<frame locked="true" pos="11">
		<descr>Content II</descr>
	</frame>
	<frame locked="true" pos="12">
		<descr>Content III</descr>
	</frame>
	<frame locked="true" pos="13">
		<descr>Content IV</descr>
	</frame>
	<frame locked="true" pos="14" main="true">
		<descr>Left Column I</descr>
	</frame>
	<frame locked="true" pos="15">
		<descr>Left Column II</descr>
	</frame>
	<frame locked="true" pos="16">
		<descr>Left Column III</descr>
	</frame>
	<frame locked="true" pos="17">
		<descr>Left Column IV</descr>
	</frame>
	<frame locked="true" pos="18">
		<descr>Left Column V</descr>
	</frame>
	<frame locked="true" pos="19">
		<descr>Left Column VI</descr>
	</frame>
	<frame locked="true" pos="20">
		<descr>Left Column VII</descr>
	</frame>
	<frame locked="true" pos="21">
		<descr>Left Column VIII</descr>
	</frame>
	<frame locked="true" pos="22">
		<descr>Left Column IX</descr>
	</frame>
	<frame locked="true" pos="23">
		<descr>Left Column X</descr>
	</frame>
	<frame locked="true" pos="24">
		<descr>Right Column I</descr>
	</frame>
	<frame locked="true" pos="25">
		<descr>Right Column II</descr>
	</frame>
	<frame locked="true" pos="26">
		<descr>Right Column III</descr>
	</frame>
	<frame locked="true" pos="27">
		<descr>Right Column IV</descr>
	</frame>
	<frame locked="true" pos="28">
		<descr>Right Column V</descr>
	</frame>
	<frame locked="true" pos="29">
		<descr>Right Column VI</descr>
	</frame>
	<frame locked="true" pos="30">
		<descr>Right Column VII</descr>
	</frame>
	<frame locked="true" pos="31">
		<descr>Right Column VIII</descr>
	</frame>
	<frame locked="true" pos="32">
		<descr>Right Column IX</descr>
	</frame>
	<frame locked="true" pos="33">
		<descr>Right Column X</descr>
	</frame>
	<frame locked="true" pos="34">
		<descr>Footer I</descr>
	</frame>
	<frame locked="true" pos="35">
		<descr>Footer II</descr>
	</frame>
	<frame locked="true" pos="36">
		<descr>Footer III</descr>
		<defaultShowlet code="jpsharewith" />
	</frame>
	<frame locked="true" pos="37">
		<descr>Footer IV</descr>
	</frame>
</frames>', NULL);
INSERT INTO pagemodels (code, descr, frames, plugincode) VALUES ('jpfrontshortcut_test', 'jpfrontshortcut plugin - Test', '<frames>
	<frame locked="true" pos="0">
		<descr>Frame I</descr>
	</frame>
	<frame locked="true" pos="1">
		<descr>Frame II</descr>
	</frame>
	<frame locked="true" pos="2">
		<descr>Frame III</descr>
	</frame>
	<frame locked="true" pos="3">
		<descr>Frame IV</descr>
	</frame>
	<frame locked="true" pos="4">
		<descr>Frame V</descr>
	</frame>
	<frame locked="true" pos="5">
		<descr>Frame VI</descr>
	</frame>
	<frame locked="true" pos="6">
		<descr>Frame VII</descr>
	</frame>
	<frame locked="true" pos="7">
		<descr>Frame VIII</descr>
	</frame>
	<frame locked="true" pos="8">
		<descr>Frame IX</descr>
	</frame>
	<frame locked="true" pos="9">
		<descr>Frame X</descr>
	</frame>
</frames>', 'jpfrontshortcut');
INSERT INTO pagemodels (code, descr, frames, plugincode) VALUES ('home', 'Home Page', '<frames>
	<frame locked="true" pos="0">
		<descr>Top Header I</descr>
		<defaultShowet code="navigation_langbar" />
	</frame>
	<frame locked="true" pos="1">
		<descr>Top Header II</descr>
		<defaultShowet code="login_form" />
	</frame>
	<frame locked="true" pos="2">
		<descr>Top Header III</descr>
	</frame>
	<frame locked="true" pos="3">
		<descr>Header I</descr>
	</frame>
	<frame locked="true" pos="4">
		<descr>Header II</descr>
		<defaultShowet code="search_form" />
	</frame>
	<frame locked="true" pos="5">
		<descr>Header III</descr>
	</frame>
	<frame locked="true" pos="6">
		<descr>Users I</descr>
	</frame>
	<frame locked="true" pos="7">
		<descr>Users II</descr>
	</frame>
	<frame locked="true" pos="8">
		<descr>Users III</descr>
	</frame>
	<frame locked="true" pos="9">
		<descr>Users IV</descr>
	</frame>
	<frame locked="true" pos="10">
		<descr>Content I</descr>
		<defaultShowet code="navigation_menu">
			<properties>
				<property key="navSpec">code(homepage).subtree(1)</property>
			</properties>
		</defaultShowet>
	</frame>
	<frame locked="true" pos="11">
		<descr>Content II</descr>
	</frame>
	<frame locked="true" pos="12">
		<descr>Content III</descr>
	</frame>
	<frame locked="true" pos="13">
		<descr>Content IV</descr>
	</frame>
	<!-- start column 1 -->
		<frame column="1" locked="false" pos="14">
			<descr>Widgets Column 1 - I</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="15">
			<descr>Widgets Column 1 - II</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="16">
			<descr>Widgets Column 1 - III</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="17">
			<descr>Widgets Column 1 - IV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="18">
			<descr>Widgets Column 1 - V</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="19">
			<descr>Widgets Column 1 - VI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="20">
			<descr>Widgets Column 1 - VII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="21">
			<descr>Widgets Column 1 - VIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="22">
			<descr>Widgets Column 1 - IX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="23">
			<descr>Widgets Column 1 - X</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="24">
			<descr>Widgets Column 1 - XI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="25">
			<descr>Widgets Column 1 - XII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="26">
			<descr>Widgets Column 1 - XIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="27">
			<descr>Widgets Column 1 - XIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="28">
			<descr>Widgets Column 1 - XV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="29">
			<descr>Widgets Column 1 - XVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="30">
			<descr>Widgets Column 1 - XVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="31">
			<descr>Widgets Column 1 - XVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="32">
			<descr>Widgets Column 1 - XIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="33">
			<descr>Widgets Column 1 - XX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="34">
			<descr>Widgets Column 1 - XXI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="35">
			<descr>Widgets Column 1 - XXII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="36">
			<descr>Widgets Column 1 - XXIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="37">
			<descr>Widgets Column 1 - XXIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="38">
			<descr>Widgets Column 1 - XXV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="39">
			<descr>Widgets Column 1 - XXVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="40">
			<descr>Widgets Column 1 - XXVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="41">
			<descr>Widgets Column 1 - XXVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="42">
			<descr>Widgets Column 1 - XXIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="43">
			<descr>Widgets Column 1 - XXX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="44">
			<descr>Widgets Column 1 - XXXI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="45">
			<descr>Widgets Column 1 - XXXII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="46">
			<descr>Widgets Column 1 - XXXIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="47">
			<descr>Widgets Column 1 - XXXIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="48">
			<descr>Widgets Column 1 - XXXV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="49">
			<descr>Widgets Column 1 - XXXVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="50">
			<descr>Widgets Column 1 - XXXVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="51">
			<descr>Widgets Column 1 - XXXVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="52">
			<descr>Widgets Column 1 - XXXIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="53">
			<descr>Widgets Column 1 - XL</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="54">
			<descr>Widgets Column 1 - XLI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="55">
			<descr>Widgets Column 1 - XLII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="56">
			<descr>Widgets Column 1 - XLIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="57">
			<descr>Widgets Column 1 - XLIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="58">
			<descr>Widgets Column 1 - XLV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="59">
			<descr>Widgets Column 1 - XLVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="60">
			<descr>Widgets Column 1 - XLVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="61">
			<descr>Widgets Column 1 - XLVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="62">
			<descr>Widgets Column 1 - XLIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="63">
			<descr>Widgets Column 1 - L</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<!-- end column 1 -->
		<!-- start column 2 -->
		<frame column="2" locked="false" pos="64">
			<descr>Widgets Column 2 - I</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="65">
			<descr>Widgets Column 2 - II</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="66">
			<descr>Widgets Column 2 - III</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="67">
			<descr>Widgets Column 2 - IV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="68">
			<descr>Widgets Column 2 - V</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="69">
			<descr>Widgets Column 2 - VI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="70">
			<descr>Widgets Column 2 - VII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="71">
			<descr>Widgets Column 2 - VIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="72">
			<descr>Widgets Column 2 - IX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="73">
			<descr>Widgets Column 2 - X</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="74">
			<descr>Widgets Column 2 - XI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="75">
			<descr>Widgets Column 2 - XII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="76">
			<descr>Widgets Column 2 - XIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="77">
			<descr>Widgets Column 2 - XIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="78">
			<descr>Widgets Column 2 - XV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="79">
			<descr>Widgets Column 2 - XVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="80">
			<descr>Widgets Column 2 - XVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="81">
			<descr>Widgets Column 2 - XVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="82">
			<descr>Widgets Column 2 - XIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="83">
			<descr>Widgets Column 2 - XX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="84">
			<descr>Widgets Column 2 - XXI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="85">
			<descr>Widgets Column 2 - XXII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="86">
			<descr>Widgets Column 2 - XXIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="87">
			<descr>Widgets Column 2 - XXIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="88">
			<descr>Widgets Column 2 - XXV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="89">
			<descr>Widgets Column 2 - XXVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="90">
			<descr>Widgets Column 2 - XXVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="91">
			<descr>Widgets Column 2 - XXVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="92">
			<descr>Widgets Column 2 - XXIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="93">
			<descr>Widgets Column 2 - XXX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="94">
			<descr>Widgets Column 2 - XXXI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="95">
			<descr>Widgets Column 2 - XXXII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="96">
			<descr>Widgets Column 2 - XXXIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="97">
			<descr>Widgets Column 2 - XXXIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="98">
			<descr>Widgets Column 2 - XXXV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="99">
			<descr>Widgets Column 2 - XXXVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="100">
			<descr>Widgets Column 2 - XXXVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="101">
			<descr>Widgets Column 2 - XXXVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="102">
			<descr>Widgets Column 2 - XXXIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="103">
			<descr>Widgets Column 2 - XL</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="104">
			<descr>Widgets Column 2 - XLI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="105">
			<descr>Widgets Column 2 - XLII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="106">
			<descr>Widgets Column 2 - XLIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="107">
			<descr>Widgets Column 2 - XLIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="108">
			<descr>Widgets Column 2 - XLV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="109">
			<descr>Widgets Column 2 - XLVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="110">
			<descr>Widgets Column 2 - XLVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="111">
			<descr>Widgets Column 2 - XLVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="112">
			<descr>Widgets Column 2 - XLIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="113">
			<descr>Widgets Column 2 - L</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
	<!--  end column 2 -->
	<!--  start column 3 -->
		<frame column="3" locked="false" pos="114">
			<descr>Widgets Column 3 - I</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="115">
			<descr>Widgets Column 3 - II</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="116">
			<descr>Widgets Column 3 - III</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="117">
			<descr>Widgets Column 3 - IV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="118">
			<descr>Widgets Column 3 - V</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="119">
			<descr>Widgets Column 3 - VI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="120">
			<descr>Widgets Column 3 - VII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="121">
			<descr>Widgets Column 3 - VIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="122">
			<descr>Widgets Column 3 - IX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="123">
			<descr>Widgets Column 3 - X</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="124">
			<descr>Widgets Column 3 - XI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="125">
			<descr>Widgets Column 3 - XII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="126">
			<descr>Widgets Column 3 - XIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="127">
			<descr>Widgets Column 3 - XIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="128">
			<descr>Widgets Column 3 - XV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="129">
			<descr>Widgets Column 3 - XVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="130">
			<descr>Widgets Column 3 - XVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="131">
			<descr>Widgets Column 3 - XVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="132">
			<descr>Widgets Column 3 - XIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="133">
			<descr>Widgets Column 3 - XX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="134">
			<descr>Widgets Column 3 - XXI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="135">
			<descr>Widgets Column 3 - XXII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="136">
			<descr>Widgets Column 3 - XXIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="137">
			<descr>Widgets Column 3 - XXIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="138">
			<descr>Widgets Column 3 - XXV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="139">
			<descr>Widgets Column 3 - XXVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="140">
			<descr>Widgets Column 3 - XXVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="141">
			<descr>Widgets Column 3 - XXVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="142">
			<descr>Widgets Column 3 - XXIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="143">
			<descr>Widgets Column 3 - XXX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="144">
			<descr>Widgets Column 3 - XXXI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="145">
			<descr>Widgets Column 3 - XXXII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="146">
			<descr>Widgets Column 3 - XXXIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="147">
			<descr>Widgets Column 3 - XXXIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="148">
			<descr>Widgets Column 3 - XXXV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="149">
			<descr>Widgets Column 3 - XXXVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="150">
			<descr>Widgets Column 3 - XXXVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="151">
			<descr>Widgets Column 3 - XXXVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="152">
			<descr>Widgets Column 3 - XXXIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="153">
			<descr>Widgets Column 3 - XL</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="154">
			<descr>Widgets Column 3 - XLI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="155">
			<descr>Widgets Column 3 - XLII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="156">
			<descr>Widgets Column 3 - XLIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="157">
			<descr>Widgets Column 3 - XLIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="158">
			<descr>Widgets Column 3 - XLV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="159">
			<descr>Widgets Column 3 - XLVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="160">
			<descr>Widgets Column 3 - XLVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="161">
			<descr>Widgets Column 3 - XLVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="162">
			<descr>Widgets Column 3 - XLIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="163">
			<descr>Widgets Column 3 - L</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
	<!--  end column 3 -->
	<frame locked="true" pos="164">
		<descr>Footer I</descr>
	</frame>
	<frame locked="true" pos="165">
		<descr>Footer II</descr>
	</frame>
	<frame locked="true" pos="166">
		<descr>Footer III</descr>
		<defaultShowet code="jpsharewith" />
	</frame>
	<frame locked="true" pos="167">
		<descr>Footer IV</descr>
		<defaultShowet code="navigation_menu">
			<properties>
				<property key="navSpec">code(homepage) + code(view_content_test)</property>
			</properties>
		</defaultShowet>
	</frame>
</frames>', NULL);


INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('homepage', 'homepage', -1, 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Home</property>
<property key="it">Home</property>
</properties>', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('login', 'service', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Pagina di login</property>
<property key="en">Login</property>
</properties>', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('errorpage', 'service', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Error page</property>
<property key="it">Pagina di errore</property>
</properties>', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('notfound', 'service', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Page not found</property>
<property key="it">Pagina non trovata</property>
</properties>', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('search', 'service', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Results</property>
<property key="it">Risultati della Ricerca</property>
</properties>', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('newsview', 'service', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the News</property>
<property key="it">Leggi la Notizia</property>
</properties>', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('profile', 'service', 6, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Profile Edit</property>
<property key="it">Modifica Profile</property>
</properties>', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news_style1', 'news_archive', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News Archive</property>
<property key="it">News Archive</property>
</properties>', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news_style2', 'news_archive', 2, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News Archive</property>
<property key="it">News Archive</property>
</properties>', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news_style3', 'news_archive', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News Archive</property>
<property key="it">News Archive</property>
</properties>', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('configure_latest_documents', 'service', 7, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Latest Documents</property>
<property key="it">Ultimi documenti</property>
</properties>', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('events', 'homepage', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Events</property>
<property key="it">Eventi</property>
</properties>', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('contentsview', 'service', 8, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the content</property>
<property key="it">Leggi il Contenuto</property>
</properties>', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('service', 'homepage', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Pagine di Servizio</property>
<property key="en">Service</property>
</properties>', 'free', 0, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('formview', 'service', 10, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Dynamic Form</property>
<property key="it">Form Dinamico</property>
</properties>', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news_archive', 'homepage', 2, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News</property>
<property key="it">News</property>
</properties>', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('surveys_list', 'quest_suveys', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Active Questionnaires</property> 
<property key="it">Questionari Attivi</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('video_archive', 'homepage', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Video Archive</property>
<property key="it">Archivio Video</property>
</properties>', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('fastcontentedit', 'service', 9, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Frontent Content Editing</property>
<property key="it">Modifica Contenuto da Frontend</property>
</properties>', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('surveys_archive', 'quest_suveys', 2, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Questionnaires Archive</property> 
<property key="it">Archivio Questionari</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('survey_detail', 'quest_suveys', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Questionnaire Details</property> 
<property key="it">Dettaglio Questionario</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('survey_results', 'quest_suveys', 4, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Questionnaire Results</property> 
<property key="it">Risultati Questionario</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('polls_list', 'quest_suveys', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Active Polls</property> 
<property key="it">Sondaggi Attivi</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('polls_archive', 'quest_suveys', 6, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Polls Archive</property> 
<property key="it">Archivio Sondaggi</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('poll_detail', 'quest_suveys', 7, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Poll Details</property> 
<property key="it">Dettaglio Sondaggi</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('poll_results', 'quest_suveys', 8, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Poll Details</property> 
<property key="it">Dettaglio Sondaggi</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('quest_suveys', 'homepage', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Questionnaires and Surveys</property>
<property key="it">Questionari e Sondaggi</property>
</properties>', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('apis', 'homepage', 6, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">APIs</property>
<property key="it">APIs</property>
</properties>', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>');


INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a Content</property>
<property key="it">Contenuti - Pubblica un Contenuto</property>
</properties>', '<config>
	<parameter name="contentId">Content ID</parameter>
	<parameter name="modelId">Content Model ID</parameter>
	<action name="viewerConfig"/>
</config>', 'jacms', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('messages_system', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">System Messages</property>
<property key="it">Messaggi di Sistema</property>
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('search_result', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search - Search Result</property>
<property key="it">Ricerca - Risultati della Ricerca</property>
</properties>', NULL, 'jacms', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('login_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Login Form</property>
<property key="it">Form di Login</property>
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Internal Servlet</property>
<property key="it">Invocazione di una Servlet Interna</property>
</properties>', '<config>
	<parameter name="actionPath">
		Path to an action or to a JSP. You must prepend ''/ExtStr2'' to any Struts2 action path
	</parameter>
	<action name="configSimpleParameter"/>
</config>', NULL, NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpmyportalplus_void', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">My Portal - Void</property>
<property key="it">My Portal - Vuoto</property>
</properties>', NULL, 'jpmyportalplus', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpmyportalplus_sample_showlet', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">My Portal - Sample Showlet</property>
<property key="it">My Portal - Showlet di Esempio</property>
</properties>', NULL, 'jpmyportalplus', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpuserprofile_editCurrentUser', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User</property>
<property key="it">Edita Utente Corrente</property>
</properties>', NULL, 'jpuserprofile', 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpuserprofile/Front/CurrentUser/edit.action</property>
</properties>', 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpuserprofile_editCurrentUser_password', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User Password</property>
<property key="it">Edita Password Utente Corrente</property>
</properties>', NULL, 'jpuserprofile', 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpuserprofile/Front/CurrentUser/editPassword.action</property>
</properties>', 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpuserprofile_editCurrentUser_profile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User Profile</property>
<property key="it">Edita Profilo Utente Corrente</property>
</properties>', NULL, 'jpuserprofile', 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpuserprofile/Front/CurrentUser/Profile/edit.action</property>
</properties>', 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('navigation_langbar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Langbar</property>
<property key="it">Navigazione - Barra della Lingua</property>
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('search_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search - Search Form</property>
<property key="it">Ricerca - Form di Ricerca</property>
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Navigation Menu</property>
<property key="it">Navigazione - Menu di Navigazione</property>
</properties>', '<config>
	<parameter name="navSpec">Rules for the Page List auto-generation</parameter>
	<action name="navigatorConfig" />
</config>', NULL, NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('news_choose_style', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News - Choose style</property>
<property key="it">Notizie - Scegli stile</property>
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('documents_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Latest Documents</property>
<property key="it">Documenti recenti</property>
</properties>', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="linkDescr_it">Configura</property>
<property key="pageLink">configure_latest_documents</property>
<property key="linkDescr_en">Configure</property>
<property key="contentType">DWN</property>
<property key="modelId">42</property>
</properties>', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('latest_news', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Latest News</property>
<property key="it">Ultime Notizie</property>
</properties>

', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">1</property>
<property key="linkDescr_it">Configura</property>
<property key="categories">news</property>
<property key="pageLink">news_style1</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="linkDescr_en">Configure</property>
<property key="contentType">NEW</property>
<property key="modelId">27</property>
</properties>

', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpsharewith', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Share With...</property>
<property key="it">Condividi con...</property>
</properties>', NULL, 'jpsharewith', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('mobile_myentando', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">My Entando Showcase</property>
<property key="it">My Entando Showcase</property>
</properties>', NULL, NULL, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG45</property>
<property key="modelId">33</property>
</properties>', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('inEvidenza', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Top Story</property>
<property key="it">In Evidenza</property>
</properties>', NULL, NULL, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG45</property>
<property key="modelId">34</property>
</properties>', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('latest_events', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Latest Events</property>
<property key="it">Ultimi Eventi</property>
</properties>', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">2</property>
<property key="linkDescr_it">Configura</property>
<property key="categories">events</property>
<property key="pageLink">events</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="linkDescr_en">Configure</property>
<property key="contentType">NEW</property>
<property key="modelId">26</property>
</properties>', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpfastcontentedit_formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Content Editing Form</property>
<property key="it">Form Editing Contenuti</property>
</properties>', '<config>
	<parameter name="typeCode">Content Type (optional)</parameter>
	<parameter name="authorAttribute">Name of attribute containing Author name (optional)</parameter>
	<action name="jpfastcontenteditConfig"/>
</config>', 'jpfastcontentedit', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpwebdynamicform_message_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Dynamic Web Forms - Publish the form for a Message Type</property>
<property key="it">Dynamic Web Forms - Pubblica il form di un tipo di Messaggio</property>
</properties>', '<config>
	<parameter name="typeCode">Code of the Message Type</parameter>
	<action name="webdynamicformConfig"/>
</config>', 'jpwebdynamicform', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('form_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">WebForms</property>
<property key="it">WebForms</property>
</properties>', NULL, NULL, 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpwebdynamicform/Message/User/listTypes?doSimpleList=true</property>
</properties>', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('content_feedback_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Content Feedback - Publish a Content</property>
<property key="it">Feedback Contenuti - Pubblica un Contenuto</property>
</properties>

', '<config>
	<parameter name="contentId">Content ID</parameter>
	<parameter name="modelId">Content Model ID</parameter>
	<parameter name="usedContentRating">Enable content rating (true|false)</parameter>
	<parameter name="usedComment">Enable user comments (true|false)</parameter>
	<parameter name="usedCommentWithRating">Enable rating on comments (true|false)</parameter>
	<parameter name="commentValidation">Enable administrator moderation of comments (true|false)</parameter> 
<action name="viewerContentFeedbackConfig"/>
</config>', 'jpcontentfeedback', NULL, NULL, 1, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('latest_video', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Latest Video</property>
<property key="it">Ultimi Video</property>
</properties>', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">1</property>
<property key="linkDescr_it">Archivio</property>
<property key="pageLink">video_archive</property>
<property key="filters">(order=DESC;attributeFilter=false;key=created)</property>
<property key="linkDescr_en">Archive</property>
<property key="contentType">YTB</property>
<property key="modelId">52</property>
</properties>', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('form_new', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Dynamic Web Forms - Form Viewer</property>
<property key="it">Dynamic Web Forms - Form Viewer</property>
</properties>', NULL, NULL, 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpwebdynamicform/Message/User/new</property>
</properties>', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpsurvey_pollList', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Polls</property>
<property key="it">Sondaggi</property>
</properties>', NULL, 'jpsurvey', NULL, NULL, 1, 'intranet');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpsurvey_questionnaireList', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Questionnaires</property>
<property key="it">Questionari</property>
</properties>', NULL, 'jpsurvey', NULL, NULL, 1, 'intranet');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpsurvey_pollArchive', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Polls Archive</property>
<property key="it">Archivio dei Sondaggi</property>
</properties>', NULL, 'jpsurvey', NULL, NULL, 1, 'intranet');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpsurvey_questionnaireArchive', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Questionnaires Archive</property>
<property key="it">Archivio Questionari</property>
</properties>', NULL, 'jpsurvey', NULL, NULL, 1, 'intranet');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpsurvey_detailsSurvey', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Questionnaire/Survey - Details</property>
<property key="it">Questionari/Sondaggi - Dettaglio</property>
</properties>', NULL, 'jpsurvey', 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpsurvey/Front/Survey/entryPoint.action</property>
</properties>', 1, 'intranet');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpsurvey_resultsSurvey', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Questionnaire/Survey - Show Results</property>
<property key="it">Questionario/Sondaggio - Mostra Risultati</property>
</properties>', NULL, 'jpsurvey', 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpsurvey/Front/SurveyDetail/entryPoint.action</property>
</properties>', 1, 'intranet');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a List of Contents</property>
<property key="it">Contenuti - Pubblica una Lista di Contenuti</property>
</properties>', '<config>
	<parameter name="contentType">Content Type (mandatory)</parameter>
	<parameter name="modelId">Content Model</parameter>
	<parameter name="userFilters">Front-End user filter options</parameter>
	<parameter name="category">Content Category **deprecated**</parameter>
	<parameter name="categories">Content Category codes (comma separeted)</parameter>
	<parameter name="orClauseCategoryFilter" />
	<parameter name="maxElemForItem">Contents for each page</parameter>
	<parameter name="maxElements">Number of contents</parameter>
	<parameter name="filters" />
	<parameter name="title_{lang}">Widget Title in lang {lang}</parameter>
	<parameter name="pageLink">The code of the Page to link</parameter>
	<parameter name="linkDescr_{lang}">Link description in lang {lang}</parameter>
	<action name="listViewerConfig"/>
</config>', 'jacms', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpwebdynamicform_message_choice', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Dynamic Web Forms - Choice of a type of Message</property>
<property key="it">Dynamic Web Forms - Scelta tipo di Messaggio</property>
</properties>', NULL, 'jpwebdynamicform', 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpwebdynamicform/Message/User/listTypes</property>
</properties>', 1, 'intranet');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('entando_apis', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">APIs</property>
<property key="it">APIs</property>
</properties>
', NULL, NULL, 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/Front/Api/Resource/list.action</property>
</properties>
', 1, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpfastcontentedit_content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a List of Contents Editables from Front-End</property>
<property key="it">Contenuti - Pubblica una Lista di contenuti editabili da Front-End</property>
</properties>', '<config>
	<parameter name="contentType">Content Type (mandatory)</parameter>
	<parameter name="modelId">Content Model</parameter>
	<parameter name="userFilters">Front-End user filter options</parameter>
	<parameter name="category">Content Category **deprecated**</parameter>
	<parameter name="categories">Content Category codes (comma separeted)</parameter>
	<parameter name="orClauseCategoryFilter" />
	<parameter name="maxElemForItem">Contents for each page</parameter>
	<parameter name="filters" />
	<parameter name="title_{lang}">Showlet Title in lang {lang}</parameter>
	<parameter name="pageLink">The code of the Page to link</parameter>
	<parameter name="linkDescr_{lang}">Link description in lang {lang}</parameter>
	<action name="listViewerConfig"/>
</config>', 'jpfastcontentedit', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpfrontshortcut_content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a Content</property>
<property key="it">Contenuti - Pubblica un Contenuto</property>
</properties>', '<config>
	<parameter name="contentId">Content ID</parameter>
	<parameter name="modelId">Content Model ID</parameter>
	<action name="viewerConfig"/>
</config>', 'jpfrontshortcut', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('CNT', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contact Us Form</property>
<property key="it">Form Contatti</property>
</properties>

', NULL, NULL, 'jpwebdynamicform_message_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="typeCode">CNT</property>
</properties>

', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('WCN', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Content</property>
<property key="it">Content</property>
</properties>

', NULL, NULL, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG77</property>
<property key="modelId">34</property>
</properties>

', 0, 'administrators');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('VRF', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Vacation Request Form</property>
<property key="it">Form Richiesta Ferie</property>
</properties>

', NULL, NULL, 'jpwebdynamicform_message_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="typeCode">VRF</property>
</properties>

', 0, 'intranet');


INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('search', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('search', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('search', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('search', 14, 'search_result', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('profile', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('profile', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('profile', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('profile', 14, 'jpuserprofile_editCurrentUser_password', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('profile', 15, 'jpuserprofile_editCurrentUser_profile', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style1', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style2', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style3', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style1', 15, 'news_choose_style', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style2', 15, 'news_choose_style', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style3', 15, 'news_choose_style', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style1', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style1', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 166, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('events', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('events', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('events', 2, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('events', 15, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="userFilters">(attributeFilter=true;key=Title)</property>
<property key="categories">events</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="contentType">NEW</property>
<property key="modelId">21</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('configure_latest_documents', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('configure_latest_documents', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('configure_latest_documents', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('configure_latest_documents', 14, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="title_it">Documenti</property>
<property key="filters">(order=DESC;attributeFilter=false;key=modified)</property>
<property key="title_en">Latest Documents</property>
<property key="contentType">DWN</property>
<property key="modelId">4</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('configure_latest_documents', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('notfound', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('notfound', 2, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('notfound', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('notfound', 14, 'messages_system', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('notfound', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('errorpage', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('errorpage', 2, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('errorpage', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('errorpage', 14, 'messages_system', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('errorpage', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('newsview', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('newsview', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('contentsview', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('contentsview', 14, 'content_viewer', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style1', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style2', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style2', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style2', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style3', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style3', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style3', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('events', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('notfound', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 75, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 76, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 77, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 78, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 79, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 80, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 81, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 82, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('errorpage', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('newsview', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('newsview', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('newsview', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('search', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('profile', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('configure_latest_documents', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('contentsview', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('contentsview', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('contentsview', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style1', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style2', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style3', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('events', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('search', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('profile', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('contentsview', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 16, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 17, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 18, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 19, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 20, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 21, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 22, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 26, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 27, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 28, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 29, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 30, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 31, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 32, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 33, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 34, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 35, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 36, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 37, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 38, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 39, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 40, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 41, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 42, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 43, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 44, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 46, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 47, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 48, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 49, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 50, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 51, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 52, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 53, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 54, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 56, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 57, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 58, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 59, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 60, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 61, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 62, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 63, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 68, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 69, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 70, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 71, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 72, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 83, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 84, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 85, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 86, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 87, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 88, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 89, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 90, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 91, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 92, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 93, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 94, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 95, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 96, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 97, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 98, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 99, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 100, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 101, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 102, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 103, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 104, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 105, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 106, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 107, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 108, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 109, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 110, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 111, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 112, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 113, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 114, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 115, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 116, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 117, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 118, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 119, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 120, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 121, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 122, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 126, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 127, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 128, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 129, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 130, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 131, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 132, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 133, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 134, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 135, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 136, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 137, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 138, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 139, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 140, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 141, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 142, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 143, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 144, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 145, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 146, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 147, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 148, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 149, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 150, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 151, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 152, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 153, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 154, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 155, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 156, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 157, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 158, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 159, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 160, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 161, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 162, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 163, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 55, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 45, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_list', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_list', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_list', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_list', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_list', 15, 'jpsurvey_questionnaireList', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_archive', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_archive', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_archive', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_archive', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_archive', 15, 'jpsurvey_questionnaireArchive', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_detail', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_detail', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_detail', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_detail', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_detail', 15, 'jpsurvey_detailsSurvey', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_results', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_results', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_results', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_results', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_results', 15, 'jpsurvey_resultsSurvey', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_list', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_list', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_list', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_list', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_list', 15, 'jpsurvey_pollList', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_archive', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_archive', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_archive', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_archive', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_archive', 15, 'jpsurvey_pollArchive', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_detail', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_detail', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_detail', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_detail', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_detail', 15, 'jpsurvey_detailsSurvey', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_results', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_results', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_results', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_results', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_results', 15, 'jpsurvey_resultsSurvey', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('formview', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('formview', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('formview', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('formview', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('formview', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('formview', 14, 'form_new', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('quest_suveys', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('quest_suveys', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('quest_suveys', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('quest_suveys', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('quest_suveys', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('quest_suveys', 14, 'jpsurvey_pollList', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('quest_suveys', 16, 'jpsurvey_questionnaireList', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 164, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG59</property>
<property key="modelId">35</property>
</properties>

', 'CNG59');
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('newsview', 14, 'content_feedback_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="usedContentRating">true</property>
<property key="usedCommentWithRating">true</property>
<property key="usedComment">true</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('video_archive', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('video_archive', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('video_archive', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('video_archive', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('video_archive', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('video_archive', 15, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">20</property>
<property key="title_it">Archivio Video</property>
<property key="userFilters">(attributeFilter=false;key=category)+(attributeFilter=true;key=Title)</property>
<property key="filters">(order=DESC;attributeFilter=false;key=created)</property>
<property key="title_en">Video Archive</property>
<property key="contentType">YTB</property>
<property key="modelId">53</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('fastcontentedit', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('fastcontentedit', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('fastcontentedit', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('fastcontentedit', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('fastcontentedit', 14, 'jpfastcontentedit_formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="typeCode">NEW</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('fastcontentedit', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 14, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 15, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_archive', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_archive', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_archive', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_archive', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_archive', 15, 'news_choose_style', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_archive', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('apis', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('apis', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('apis', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('apis', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('apis', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_archive', 14, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">3</property>
<property key="categories">news</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="contentType">NEW</property>
<property key="modelId">22</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style1', 14, 'jpfastcontentedit_content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">3</property>
<property key="title_it">Ultime Notizie</property>
<property key="categories">news</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="title_en">Latest News</property>
<property key="contentType">NEW</property>
<property key="modelId">22</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style2', 14, 'jpfastcontentedit_content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">3</property>
<property key="title_it">Ultime Notizie</property>
<property key="categories">news</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="title_en">Latest News</property>
<property key="contentType">NEW</property>
<property key="modelId">23</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style3', 14, 'jpfastcontentedit_content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">3</property>
<property key="title_it">Ultime Notizie</property>
<property key="categories">news</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="title_en">Latest News</property>
<property key="contentType">NEW</property>
<property key="modelId">24</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 124, 'CNT', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 24, 'latest_events', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 125, 'jpsurvey_questionnaireList', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 67, 'latest_video', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 64, 'WCN', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 65, 'latest_news', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 23, 'inEvidenza', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 66, 'documents_list', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 25, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 123, 'VRF', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('apis', 15, 'entando_apis', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('apis', 14, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG86</property>
<property key="modelId">3</property>
</properties>

', 'CNG86');


INSERT INTO uniquekeys (id, keyvalue) VALUES (1, 91);


INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (1, 'TST', 'Main', 'TITLE $content.Title.text', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (11, 'TST', 'for List', '<a href="$content.getContentLink()">$content.Title.text</a>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (31, 'CNG', 'for Lists', '<a href="$content.getContentLink()">$content.Title.text</a>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (32, 'CNG', 'for widget - documents', '<div class="widget_doc">
	#if ($content.Attach.size()>0)
	<ul>
	  #foreach ($item in $content.Attach )
	  <li><a href="$item.attachPath">$item.text</a></li>
	  #end
	</ul>
	#end
</div>', 'contentmodels/generic.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (4, 'DWN', 'Complete def. (title, abstract,file)', '<h2>$content.Title.text</h2>
	<p>$content.Abstract.text</p>
	<p><a href="$content.File.attachPath">$content.Title.text</a></p>
', 'contentmodels/generic.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (42, 'DWN', 'for widget', '<div class="widget_doc">
	<a href="$content.File.attachPath" title="$i18n.getLabel("DOWNLOAD")">$content.Title.text</a>
</div>', 'contentmodels/generic.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (33, 'CNG', 'for widget - mobile', '<div class="news">
	#if ( $content.Image1.getImagePath("2")!="" )
	<img src="$content.Image1.getImagePath("2")" alt="$content.Image1.text" class="left"/>
	#end
	#if ($content.Links.size()>0)
  	<ul>
	  #foreach ($item in $content.Links)
	  <li><a href="$item.destination">$item.text</a></li>
	  #end
	</ul>
	#end
</div>', 'contentmodels/generic.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (3, 'CNG', 'Complete def. (title, text, attach, links)', '<div class="news-2">
	<h2>$content.Title.text</h2>
	#if ( $content.Image1.getImagePath("3")!="" )
	<img src="$content.Image1.getImagePath("3")" alt="$content.Image1.text" />
	#end
	$content.Body.text
	#if ( $content.Image2.getImagePath("2")!="" )
	<img src="$content.Image2.getImagePath("2")" alt="$content.Image2.text" />
	#end
	#if ($content.Attach.size()>0)
	<h3>$i18n.getLabel("ATTACHMENTS")</h3>
	<ul>
	  #foreach ($item in $content.Attach )
	  <li><a href="$item.attachPath">$item.text</a></li>
	  #end
	</ul>
	#end
	#if ($content.Links.size()>0)
	<h3>$i18n.getLabel("LINKS")</h3>
	<ul>
	  #foreach ($item in $content.Links)
	  <li><a href="$item.destination">$item.text</a></li>
	  #end
	</ul>
	#end
</div>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (41, 'DWN', 'for Lists', '<a href="$content.getContentLink()">$content.Title.text</a>', 'contentmodels/generic.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (51, 'YTB', 'for Lists (title)', '<p><a href="$content.getContentLink()">$content.Title.text</a></p>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (5, 'YTB', 'Complete def. (title, video, text, attach, links)', '<div class="ytb-5">
	<h2>$content.Title.text</h2>
	<div class="video">
		<iframe width="640" height="360" src="http://www.youtube.com/embed/$content.VideoCode.text?wmode=transparent"" frameborder="0" allowfullscreen></iframe>
	</div>
	$content.Body.text
	#if ($content.Attach.size()>0)
	<h3>$i18n.getLabel("ATTACHMENTS")</h3>
	<ul>
	  #foreach ($item in $content.Attach )
	  <li><a href="$item.attachPath">$item.text</a></li>
	  #end
	</ul>
	#end
	#if ($content.Links.size()>0)
	<h3>$i18n.getLabel("LINKS")</h3>
	<ul>
	  #foreach ($item in $content.Links)
	  <li><a href="$item.destination">$item.text</a></li>
	  #end
	</ul>
	#end
</div>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (25, 'NEW', 'for List - Mobile', '<a href="$content.contentLink">$content.Title.text</a>', 'contentmodels/NEW.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (52, 'YTB', 'for widget (title, video, descr)', '<div class="widget">
<div class="video">
	<iframe width="290" height="177" src="http://www.youtube.com/embed/$content.VideoCode.text?wmode=transparent"" frameborder="0" allowfullscreen></iframe>
</div>
</div>
#if ($content.isUserAllowed("editContents"))
#set ($frontEndEditingParam = $info.getConfigParameter("jpfrontshortcut_activeContentFrontEndEditing"))
#if ($frontEndEditingParam && $frontEndEditingParam == "true") 
<!-- modal popup start-->
<p class="vai">
<a id="options_anchor_$content.getId()" href="javascript:void(0)">$i18n.getLabel("EDIT_CONTENT")</a>
<script type=''text/javascript''>
jQuery(document).ready(function () { 
jQuery.struts2_jquery.bind(jQuery(''#options_anchor_$content.getId()''),{
"opendialog": "widgetDialog",
"jqueryaction": "anchor",
"id": "anchor_config_$content.getId()",
"href": "$info.getConfigParameter("applicationBaseURL")do/jpfrontshortcut/Content/introView?modelId=52&request_locale=$content.getLangCode()&langCode=$content.getLangCode()&contentId=$content.getId()",
"button": false
});
 });  
</script>
</p>
<!-- modal popup end -->
#end
#end', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (23, 'NEW', 'for Archive - style 2', '<div class="news">
  <p>$content.Date.getFormattedDate("dd/MM/yyyy")</p>
  <h3>$content.Title.text</h3>
  <p>$content.Abstract.text</p>
  <p class="alignRight"><a href="$content.contentLink">Read More &raquo;</a></p>
</div>', 'contentmodels/NEW.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (22, 'NEW', 'for Archive - style 1', '<div class="news"> 
#if ($content.Image1.imagePath("2") != "")
<img src="$content.Image1.imagePath("2")" alt="$content.Image1.text" class="left" />
#end
<div class="box">
  <h3>$content.Title.text</h3>
  <p>$content.Date.getFormattedDate("dd/MM/yyyy")</p>
  <p>$content.Abstract.text</p>
  <p class="alignRight"><a href="$content.contentLink">Read More &raquo;</a></p>
  </div>
</div>', 'contentmodels/NEW.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (24, 'NEW', 'for Archive - style 3', '<div class="news_2images clear">
<div class="box_2images">
#if ($content.Image1.imagePath("1") != "")
<img src="$content.Image1.imagePath("1")" alt="$content.Image1.text" />
#end
#if ($content.Image2.imagePath("1") != "")
<img src="$content.Image2.imagePath("1")" alt="$content.Image2.text" />
#end
</div>
<div class="box">
  <h3>$content.Title.text</h3>
  <p class="alignRight">$content.Date.getFormattedDate("dd/MM/yyyy")</p>
  <p>$content.Abstract.text</p>
  <p class="alignRight"><a href="$content.contentLink">Read More &raquo;</a></p>
</div>
</div>', 'contentmodels/NEW.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (2, 'NEW', 'Complete def. (title, date, text, attach, links)', '<div class="news-2">
	<h2>$content.Title.text</h2>
	<p>
	  $content.Date.fullDate
	</p>
	#if ( $content.Image1.getImagePath("2")!="" )
	<img src="$content.Image1.getImagePath("2")" alt="$content.Image1.text" />
	#end
	$content.Body.text
	#if ( $content.Image2.getImagePath("2")!="" )
	<img src="$content.Image2.getImagePath("2")" alt="$content.Image2.text" />
	#end
	#if ($content.Attach.size()>0)
	<h3>$i18n.getLabel("ATTACHMENTS")</h3>
	<ul>
	  #foreach ($item in $content.Attach )
	  <li><a href="$item.attachPath">$item.text</a></li>
	  #end
	</ul>
	#end
	#if ($content.Links.size()>0)
	<h3>$i18n.getLabel("LINKS")</h3>
	<ul>
	  #foreach ($item in $content.Links)
	  <li><a href="$item.destination">$item.text</a></li>
	  #end
	</ul>
	#end
</div>', 'contentmodels/NEW.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (35, 'CNG', 'footer links', '<div class="footer-column">
<h2 class="title">$content.Title.text</h2>
<ul>
#foreach ($item in $content.Links)
<li><a href="$item.destination">$item.text</a></li>
#end
</ul>
</div>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (26, 'NEW', 'per widget', '<div class="news">
	#if ( $content.Image1.getImagePath("1")!="" )
	<img src="$content.Image1.getImagePath("1")" alt="$content.Image1.text"  class="left"/>
	#end
	<h3><a href="$content.contentLink">$content.Title.text</a></h3>
<p class="share-buttons shares$content.id">
	<!-- twitter share -->
	<a href="http://twitter.com/share"
		class="twitter-share-button"
		data-url="$content.contentLink"
		data-text="$content.Title.text"
		data-count="none"
		data-lang="it">
			$i18n.getLabel("TWEET")</a>
	<!-- twitter share end -->
	<!-- fb start-->
	<span id="fb-root-$content.id"></span>
	<script src="http://connect.facebook.net/it_IT/all.js#xfbml=$content.id"></script>
	<fb:like href="$content.contentLink" send="false" layout="button_count" width="120" show_faces="false" font="arial"></fb:like>
	<!-- fb end -->
</p>
</div>
', 'contentmodels/NEW.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (53, 'YTB', 'preview', '<div class="video video53">
  <iframe width="290" height="177" src="http://www.youtube.com/embed/$content.VideoCode.text?wmode=transparent"" frameborder="0" allowfullscreen></iframe>
  <div class="right">
	<h3><a href="$content.contentLink">$content.Title.text</a></h3>
      <p>
      $content.Abstract.text
      </p>
  </div>
</div>', 'contentmodels/YTB.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (21, 'NEW', 'for lists', '<div class="new-21">
	<h3><a href="$content.contentLink">$content.Title.text</a></h3>
	<p>$content.Date.shortDate</p>
	<p>
		$content.Abstract.text
	</p>
</div>', 'contentmodels/NEW.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (34, 'CNG', 'for widget (title,image,abstract)', '<div class="widget">
<h3><a href="$content.getContentLink()">$content.Title.text</a></h3>
#if ( $content.Image1.getImagePath("2")!="" )
<img src="$content.Image1.getImagePath("2")" alt="$content.Image1.text" class="left" />
#end
<p>$content.Abstract.text</p>
</div>
#if ($content.isUserAllowed("editContents"))
#set ($frontEndEditingParam = $info.getConfigParameter("jpfrontshortcut_activeContentFrontEndEditing"))
#if ($frontEndEditingParam && $frontEndEditingParam == "true") 
<!-- modal popup start-->
<p class="vai">
<a id="options_anchor_$content.getId()" href="javascript:void(0)">$i18n.getLabel("EDIT_CONTENT")</a>
<script type=''text/javascript''>
jQuery(document).ready(function () { 
jQuery.struts2_jquery.bind(jQuery(''#options_anchor_$content.getId()''),{
"opendialog": "widgetDialog",
"jqueryaction": "anchor",
"id": "anchor_config_$content.getId()",
"href": "$info.getConfigParameter("applicationBaseURL")do/jpfrontshortcut/Content/introView?modelId=34&request_locale=$content.getLangCode()&langCode=$content.getLangCode()&contentId=$content.getId()",
"button": false
});
 });  
</script>
</p>
<!-- modal popup end -->
#end
#if ($content.isUserAllowed("enterBackend"))
<p class="vai">
  <a href="$info.getConfigParameter("applicationBaseURL")do/jacms/Content/edit.action?request_locale=$content.getLangCode()&contentId=$content.getId()">$i18n.getLabel("EDIT_CONTENT_BACKOFFICE")</a>
</p>
#end
#end', 'contentmodels/generic.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (27, 'NEW', 'per widget with fast edit', '<div class="news">
	#if ( $content.Image1.getImagePath("1")!="" )
	<img src="$content.Image1.getImagePath("1")" alt="$content.Image1.text"  class="left"/>
	#end
	<h3><a href="$content.contentLink">$content.Title.text</a></h3>
<p class="share-buttons shares$content.id">
	<!-- twitter share -->
	<a href="http://twitter.com/share"
		class="twitter-share-button"
		data-url="$content.contentLink"
		data-text="$content.Title.text"
		data-count="none"
		data-lang="it">
			$i18n.getLabel("TWEET")</a>
	<!-- twitter share end -->
	<!-- fb start-->
	<span id="fb-root-$content.id"></span>
	<script src="http://connect.facebook.net/it_IT/all.js#xfbml=$content.id"></script>
	<fb:like href="$content.contentLink" send="false" layout="button_count" width="120" show_faces="false" font="arial"></fb:like>
	<!-- fb end -->
</p>
#if ($content.isUserAllowed("editContents"))
#set ($frontEndEditingParam = $info.getConfigParameter("jpfrontshortcut_activeContentFrontEndEditing"))
#if ($frontEndEditingParam && $frontEndEditingParam == "true") 
<!-- modal popup start-->
<p class="vai">
<a id="options_anchor_$content.getId()" href="javascript:void(0)">$i18n.getLabel("EDIT_CONTENT")</a>
<script type=''text/javascript''>
jQuery(document).ready(function () { 
jQuery.struts2_jquery.bind(jQuery(''#options_anchor_$content.getId()''),{
"opendialog": "widgetDialog",
"jqueryaction": "anchor",
"id": "anchor_config_$content.getId()",
  "href": "$info.getConfigParameter("applicationBaseURL")do/jpfrontshortcut/Content/introView?modelId=27&request_locale=$content.getLangCode()&langCode=$content.getLangCode()&contentId=$content.getId()",
"button": false
});
 });  
</script>
</p>
<!-- modal popup end -->
#end
#if ($content.isUserAllowed("enterBackend"))
<p class="vai">
<a href="$info.getConfigParameter("applicationBaseURL")do/jacms/Content/edit.action?request_locale=$content.getLangCode()&contentId=$content.getId()">$i18n.getLabel("EDIT_CONTENT_BACKOFFICE")</a>
</p>
#end
#end
</div>', 'contentmodels/NEW.css');


INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG45', 'CNG', 'Top Story', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG45" typecode="CNG" typedescr="Generic Content"><descr>Top Story</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Widget-based Homepage</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">You are in the homepage of the internet portal demo, widget based. You can display your preferred contents, configure and create your custom homepage using the "drag and drop" feature.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	You are in the homepage of the internet portal demo, widget based. You can configure and create your custom homepage using the &quot;drag and drop&quot; feature.</p>
<p>
	You can display your preferred content, drag&amp;drop widgets and decide page widget composition by adding, removing and positioning the objects. Widgets can be shared among groups. Personalization features are based on role based permissions depending on administrator.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="26" lang="en" /><text lang="en">Homepage</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>20.0</version><lastEditor>admin</lastEditor><created>20110926155919</created><lastModified>20130313113626</lastModified></content>
', '20110926155919', '20130313113627', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG45" typecode="CNG" typedescr="Generic Content"><descr>Top Story</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Widget-based Homepage</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">You are in the homepage of the internet portal demo, widget based. You can display your preferred contents, configure and create your custom homepage using the "drag and drop" feature.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	You are in the homepage of the internet portal demo, widget based. You can configure and create your custom homepage using the &quot;drag and drop&quot; feature.</p>
<p>
	You can display your preferred content, drag&amp;drop widgets and decide page widget composition by adding, removing and positioning the objects. Widgets can be shared among groups. Personalization features are based on role based permissions depending on administrator.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="26" lang="en" /><text lang="en">Homepage</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>20.0</version><lastEditor>admin</lastEditor><created>20110926155919</created><lastModified>20130313113626</lastModified></content>
', 'free', '20.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DWN49', 'DWN', 'Intranet Documentation', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN49" typecode="DWN" typedescr="Scheda Download"><descr>Intranet Documentation</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Documentazione per Intranet</text><text lang="en">Intranet Documentation</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Descrive l''organizzazione dei pacchetti e della documentazione disponibili nell''are intranet.</text><text lang="en">The document describes the organization of packages and documentation available in the intranet area.</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="48" lang="en" /><text lang="en">Intranet Documentation</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110926160826</created><lastModified>20110926160826</lastModified></content>
', '20110926160826', '20110926160826', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN49" typecode="DWN" typedescr="Scheda Download"><descr>Intranet Documentation</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Documentazione per Intranet</text><text lang="en">Intranet Documentation</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Descrive l''organizzazione dei pacchetti e della documentazione disponibili nell''are intranet.</text><text lang="en">The document describes the organization of packages and documentation available in the intranet area.</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="48" lang="en" /><text lang="en">Intranet Documentation</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110926160826</created><lastModified>20110926160826</lastModified></content>
', 'administrators', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DWN47', 'DWN', 'Entando Customer Case Study Template', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN47" typecode="DWN" typedescr="Download File"><descr>Entando Customer Case Study Template</descr><groups mainGroup="administrators"><group name="customers" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Entando Customer Case Study Template</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="46" lang="en" /><text lang="en">Entando Customer Case Study Template</text></attribute></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>jeff</lastEditor><created>20110926160209</created><lastModified>20130311181623</lastModified></content>
', '20110926160209', '20130311181623', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN47" typecode="DWN" typedescr="Download File"><descr>Entando Customer Case Study Template</descr><groups mainGroup="administrators"><group name="customers" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Entando Customer Case Study Template</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="46" lang="en" /><text lang="en">Entando Customer Case Study Template</text></attribute></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>jeff</lastEditor><created>20110926160209</created><lastModified>20130311181623</lastModified></content>
', 'administrators', '3.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG56', 'CNG', 'Welcome to Entando Portal Demo', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG56" typecode="CNG" typedescr="Generic Content"><descr>Welcome to Entando Portal Demo</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Benvenuto in Entando Portal Demo</text><text lang="en">Welcome to Entando Portal Demo</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Entando is a Java Open Source portal-like platform for making you happy building web, cloud, mobile and social enterprise-class solutions.</text><text lang="en">Entando is a Java Open Source portal-like platform for making you happy building web, cloud, mobile and social enterprise-class solutions.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Entando &egrave; una moderna<strong> piattaforma Portal open source</strong> che abilita una organizzazione ai <strong>nuovi modelli di</strong> <strong>interazione del web 2.0</strong>.</p>
<p>
	Entando &egrave; una piattaforma web open source che combina<strong> in un&#39;unica soluzione</strong> le funzionalit&agrave; degli <strong>Enterprise Portal</strong>, dei <strong>content management</strong> e dei <strong>framework applicativi</strong>.</p>
<p>
	Entando &egrave; uno strumento adatto per sviluppatori e aziende IT che desiderano avere il pieno controllo di una piattaforma web dotata di moduli software, funzionalit&agrave; e strumenti di gestione che facilitano le personalizzazioni, aumentano la velocit&agrave; di sviluppo e consentono una forte personalizzazione.</p>
<p>
	Dal punto vista dell&#39;organizzazione che intende affidare la realizzazione ad un azienda IT, &egrave; un prodotto che consente di ottenere un risultato finale rispondente alle esigenze, facilmente evolvibile per adeguarlo al proprio business. E&#39; un prodotto orientato al <strong>web 2.0</strong>, al <strong>social</strong>, agli <strong>analytics</strong>, e agli <strong>standard internazionali</strong> e alla <strong>multicanalit&agrave;</strong>.</p>
<p>
	Dal punto di vista degli utilizzatori, &egrave; uno strumento che non richiede professionalit&agrave; tecnica per la gestione quotidiana del portale <strong>internet</strong>, <strong>intranet</strong> o <strong>extranet</strong>.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Entando is a Java Open Source portal-like platform for making you happy building web, cloud, mobile and social enterprise-class solutions.</p>
<p>
	Entando is a web platform that combines <strong>enterprise</strong> <strong>portal</strong>,<strong> content management</strong> and <strong>framework</strong> capabilities in a <strong>all-in-one platform</strong>.</p>
<p>
	It can help <strong>companies</strong> and <strong>governments</strong> to improve organizational effectiveness by <strong>facilitating</strong> <strong>information</strong> <strong>sharing</strong>, <strong>participation</strong> and <strong>collaboration</strong> in web 2.0 era.</p>
<p>
	Entando also <strong>provides</strong> developers and IT companies with components, tools and<strong> best practices</strong> for platform <strong>extensibility</strong>, <strong>system administration</strong> and <strong>interoperability</strong> that speed up work, reduce costs and allow easy customization.</p>
<p>
	It the same time, it is a <strong>simple</strong> and <strong>useful tool</strong> for companies and organizations who want to self-manage their information.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="57" lang="en" /><text lang="it">Cosa è Entando</text><text lang="en">What is Entando</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>jeff</lastEditor><created>20110926193524</created><lastModified>20130312145057</lastModified></content>
', '20110926193524', '20130312145057', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG56" typecode="CNG" typedescr="Generic Content"><descr>Welcome to Entando Portal Demo</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Benvenuto in Entando Portal Demo</text><text lang="en">Welcome to Entando Portal Demo</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Entando is a Java Open Source portal-like platform for making you happy building web, cloud, mobile and social enterprise-class solutions.</text><text lang="en">Entando is a Java Open Source portal-like platform for making you happy building web, cloud, mobile and social enterprise-class solutions.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Entando &egrave; una moderna<strong> piattaforma Portal open source</strong> che abilita una organizzazione ai <strong>nuovi modelli di</strong> <strong>interazione del web 2.0</strong>.</p>
<p>
	Entando &egrave; una piattaforma web open source che combina<strong> in un&#39;unica soluzione</strong> le funzionalit&agrave; degli <strong>Enterprise Portal</strong>, dei <strong>content management</strong> e dei <strong>framework applicativi</strong>.</p>
<p>
	Entando &egrave; uno strumento adatto per sviluppatori e aziende IT che desiderano avere il pieno controllo di una piattaforma web dotata di moduli software, funzionalit&agrave; e strumenti di gestione che facilitano le personalizzazioni, aumentano la velocit&agrave; di sviluppo e consentono una forte personalizzazione.</p>
<p>
	Dal punto vista dell&#39;organizzazione che intende affidare la realizzazione ad un azienda IT, &egrave; un prodotto che consente di ottenere un risultato finale rispondente alle esigenze, facilmente evolvibile per adeguarlo al proprio business. E&#39; un prodotto orientato al <strong>web 2.0</strong>, al <strong>social</strong>, agli <strong>analytics</strong>, e agli <strong>standard internazionali</strong> e alla <strong>multicanalit&agrave;</strong>.</p>
<p>
	Dal punto di vista degli utilizzatori, &egrave; uno strumento che non richiede professionalit&agrave; tecnica per la gestione quotidiana del portale <strong>internet</strong>, <strong>intranet</strong> o <strong>extranet</strong>.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Entando is a Java Open Source portal-like platform for making you happy building web, cloud, mobile and social enterprise-class solutions.</p>
<p>
	Entando is a web platform that combines <strong>enterprise</strong> <strong>portal</strong>,<strong> content management</strong> and <strong>framework</strong> capabilities in a <strong>all-in-one platform</strong>.</p>
<p>
	It can help <strong>companies</strong> and <strong>governments</strong> to improve organizational effectiveness by <strong>facilitating</strong> <strong>information</strong> <strong>sharing</strong>, <strong>participation</strong> and <strong>collaboration</strong> in web 2.0 era.</p>
<p>
	Entando also <strong>provides</strong> developers and IT companies with components, tools and<strong> best practices</strong> for platform <strong>extensibility</strong>, <strong>system administration</strong> and <strong>interoperability</strong> that speed up work, reduce costs and allow easy customization.</p>
<p>
	It the same time, it is a <strong>simple</strong> and <strong>useful tool</strong> for companies and organizations who want to self-manage their information.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="57" lang="en" /><text lang="it">Cosa è Entando</text><text lang="en">What is Entando</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>jeff</lastEditor><created>20110926193524</created><lastModified>20130312145057</lastModified></content>
', 'free', '3.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW17', 'NEW', 'Entando version 3.2', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW17" typecode="NEW" typedescr="News"><descr>Entando version 3.2</descr><groups mainGroup="free"><group name="free" /></groups><categories><category id="news" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Ecco le novità di Entando 3.2</text><text lang="en">Entando 3.2 Release News</text></attribute><attribute name="Date" attributetype="Date"><date>20131101</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Tante le novità presenti nella nuova versione, Entando 3.2, frutto di un percorso evolutivo che soddisfa le esigenze di aziende, sviluppatori e utenti finali.</text><text lang="en">A lot of innovations and improvements in Entando 3.2 release, result of an evolutionary process that meets the needs of enterprises, developers and users.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Tante le novit&agrave; presenti nella nuova versione, Entando 3.2, frutto di un percorso evolutivo che soddisfa le esigenze di aziende, sviluppatori e utenti finali.</p>
<p>
	Gli elementi caratterizzanti e innovativi di questa nuova release riguarderanno diversi temi, in particolare rivolti a semplificare e velocizzare le fasi di sviluppo per aziende e sviluppatori che utilizzano Entando, come ad esempio l&#39;introduzione di novit&agrave; che consentiranno una pi&ugrave; rapida e semplice installazione del sistema e di tutti i suoi componenti e lo switch immediato da un DBMS ad un altro.<br />
	Anche lo sviluppo del front-end di Entando presenter&agrave; una evoluzione con l&#39;integrazione del framework Twitter Bootstrap, come base di partenza opzionale.<br />
	E cosa dire della possibilit&agrave; di personalizzare ancora pi&ugrave; velocemente gli elementi grafici e funzionali di Entando grazie all&#39;introduzione dei Bundles che consentiranno ad esempio un facile riutilizzo dei template grafici realizzati. Con i Bundles inoltre si potranno importare in un unico e semplice passo un nuovo Tipo di Contenuto con annesso i suoi Modelli di Contenuto cosi come alcuni contenuti di prova gi&agrave; &ldquo;pronti per l&#39;uso&rdquo;.</p>
<p>
	Importanti le novit&agrave; che riguarderanno anche la versione Enterprise della piattaforma come ad esempio la disponibilit&agrave; di nuovi plugin tra i quali il &ldquo;social&rdquo; che consentir&agrave; agli amministratori e utenti di condividere i contenuti con i social network direttamente dall&rsquo;area di amministrazione dei portali Entando in fase di redazione.</p>
<p>
	Novit&agrave; anche per coloro che sono interessati alle soluzioni intranet, avranno infatti a disposizione un nuovo connettore alla suite di Business Intelligence Jaspersoft che consentir&agrave; di integrare in Entando le funzionalit&agrave; di amministrazione, analisi e reportistica.</p>
<p>
	Queste e altre novit&agrave; sono a disposizione nella nuova release Entando 3.2.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	A lot of innovations and improvements in Entando 3.2 version, result of an evolutionary process that meets the needs of enterprises, developers and users.</p>
<p>
	Many of the new features are aimed to <strong>simplify </strong>and <strong>speed-up the development stages</strong> for companies and developers using Entando, such as the introduction of innovations that enable a <strong>faster and easier installation</strong> of the system and all its components and the immediately <strong>switch from a DBMS to another</strong>.</p>
<p>
	Also the development of the Entando front-end will present an evolution with the integration of<strong> Twitter Bootstrap framework</strong>, as a starting option.</p>
<p>
	And what about the possibility to <strong>customize</strong>, even faster, <strong>graphics </strong>and <strong>functional elements</strong> of Entando with the introduction of <em><strong>Bundles </strong></em>that will allow for example an easy <strong>reuse of graphical templates</strong>. With Bundles also you can import in one simple step a new <em>Content Types</em> with a range of <em>Content Models</em>, and even some <strong>&quot;ready to use&quot; contents</strong>.</p>
<p>
	Important news also for the <strong>Enterprise Edition</strong> of the platform, enterprise end users will gain access to <strong>new plugins</strong> including the &quot;<em><strong>social</strong></em>&quot; plugin that will allow administrators and users to<strong> share contents</strong> with social networks directly from the administration area of Entando Portals <strong>during the editing process</strong>.</p>
<p>
	Business users and those interested in intranet solutions will benefit from the new <strong>connector to Jaspersoft Business Intelligence Suite</strong> that will integrate in Entando <strong>administration, analysis and reporting features</strong>.</p>
<p>
	These and other new features are available in the new release, Entando 3.2.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="67" lang="en" /><text lang="en">Entando 3.2</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>9.0</version><lastEditor>admin</lastEditor><created>20110926140558</created><lastModified>20130313115015</lastModified></content>
', '20110926140558', '20130313115015', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW17" typecode="NEW" typedescr="News"><descr>Entando version 3.2</descr><groups mainGroup="free"><group name="free" /></groups><categories><category id="news" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Ecco le novità di Entando 3.2</text><text lang="en">Entando 3.2 Release News</text></attribute><attribute name="Date" attributetype="Date"><date>20131101</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Tante le novità presenti nella nuova versione, Entando 3.2, frutto di un percorso evolutivo che soddisfa le esigenze di aziende, sviluppatori e utenti finali.</text><text lang="en">A lot of innovations and improvements in Entando 3.2 release, result of an evolutionary process that meets the needs of enterprises, developers and users.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Tante le novit&agrave; presenti nella nuova versione, Entando 3.2, frutto di un percorso evolutivo che soddisfa le esigenze di aziende, sviluppatori e utenti finali.</p>
<p>
	Gli elementi caratterizzanti e innovativi di questa nuova release riguarderanno diversi temi, in particolare rivolti a semplificare e velocizzare le fasi di sviluppo per aziende e sviluppatori che utilizzano Entando, come ad esempio l&#39;introduzione di novit&agrave; che consentiranno una pi&ugrave; rapida e semplice installazione del sistema e di tutti i suoi componenti e lo switch immediato da un DBMS ad un altro.<br />
	Anche lo sviluppo del front-end di Entando presenter&agrave; una evoluzione con l&#39;integrazione del framework Twitter Bootstrap, come base di partenza opzionale.<br />
	E cosa dire della possibilit&agrave; di personalizzare ancora pi&ugrave; velocemente gli elementi grafici e funzionali di Entando grazie all&#39;introduzione dei Bundles che consentiranno ad esempio un facile riutilizzo dei template grafici realizzati. Con i Bundles inoltre si potranno importare in un unico e semplice passo un nuovo Tipo di Contenuto con annesso i suoi Modelli di Contenuto cosi come alcuni contenuti di prova gi&agrave; &ldquo;pronti per l&#39;uso&rdquo;.</p>
<p>
	Importanti le novit&agrave; che riguarderanno anche la versione Enterprise della piattaforma come ad esempio la disponibilit&agrave; di nuovi plugin tra i quali il &ldquo;social&rdquo; che consentir&agrave; agli amministratori e utenti di condividere i contenuti con i social network direttamente dall&rsquo;area di amministrazione dei portali Entando in fase di redazione.</p>
<p>
	Novit&agrave; anche per coloro che sono interessati alle soluzioni intranet, avranno infatti a disposizione un nuovo connettore alla suite di Business Intelligence Jaspersoft che consentir&agrave; di integrare in Entando le funzionalit&agrave; di amministrazione, analisi e reportistica.</p>
<p>
	Queste e altre novit&agrave; sono a disposizione nella nuova release Entando 3.2.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	A lot of innovations and improvements in Entando 3.2 version, result of an evolutionary process that meets the needs of enterprises, developers and users.</p>
<p>
	Many of the new features are aimed to <strong>simplify </strong>and <strong>speed-up the development stages</strong> for companies and developers using Entando, such as the introduction of innovations that enable a <strong>faster and easier installation</strong> of the system and all its components and the immediately <strong>switch from a DBMS to another</strong>.</p>
<p>
	Also the development of the Entando front-end will present an evolution with the integration of<strong> Twitter Bootstrap framework</strong>, as a starting option.</p>
<p>
	And what about the possibility to <strong>customize</strong>, even faster, <strong>graphics </strong>and <strong>functional elements</strong> of Entando with the introduction of <em><strong>Bundles </strong></em>that will allow for example an easy <strong>reuse of graphical templates</strong>. With Bundles also you can import in one simple step a new <em>Content Types</em> with a range of <em>Content Models</em>, and even some <strong>&quot;ready to use&quot; contents</strong>.</p>
<p>
	Important news also for the <strong>Enterprise Edition</strong> of the platform, enterprise end users will gain access to <strong>new plugins</strong> including the &quot;<em><strong>social</strong></em>&quot; plugin that will allow administrators and users to<strong> share contents</strong> with social networks directly from the administration area of Entando Portals <strong>during the editing process</strong>.</p>
<p>
	Business users and those interested in intranet solutions will benefit from the new <strong>connector to Jaspersoft Business Intelligence Suite</strong> that will integrate in Entando <strong>administration, analysis and reporting features</strong>.</p>
<p>
	These and other new features are available in the new release, Entando 3.2.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="67" lang="en" /><text lang="en">Entando 3.2</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>9.0</version><lastEditor>admin</lastEditor><created>20110926140558</created><lastModified>20130313115015</lastModified></content>
', 'free', '9.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DWN38', 'DWN', 'Entando System Requirements', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN38" typecode="DWN" typedescr="Download File"><descr>Entando System Requirements</descr><groups mainGroup="administrators"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Setup a Java Environment</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">This document details software needed to run and develop the Entando Platform</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="37" lang="en" /><text lang="en">Setup a Java Environment</text></attribute></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>jeff</lastEditor><created>20110926153251</created><lastModified>20130311180537</lastModified></content>
', '20110926153251', '20130311180537', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN38" typecode="DWN" typedescr="Download File"><descr>Entando System Requirements</descr><groups mainGroup="administrators"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Setup a Java Environment</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">This document details software needed to run and develop the Entando Platform</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="37" lang="en" /><text lang="en">Setup a Java Environment</text></attribute></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>jeff</lastEditor><created>20110926153251</created><lastModified>20130311180537</lastModified></content>
', 'administrators', '3.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('TST2', 'TST', 'Contenuto 1', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="TST2" typecode="TST" typedescr="Test Type"><descr>Contenuto 1</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contenuto 1</text><text lang="en">Contenuto 1</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110905174152</created><lastModified>20110905174152</lastModified></content>
', '20110905174152', '20110905174152', '<?xml version="1.0" encoding="UTF-8"?>
<content id="TST2" typecode="TST" typedescr="Test Type"><descr>Contenuto 1</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contenuto 1</text><text lang="en">Contenuto 1</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110905174152</created><lastModified>20110905174152</lastModified></content>
', 'free', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('TST4', 'TST', 'Contenuto 3', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="TST4" typecode="TST" typedescr="Test Type"><descr>Contenuto 3</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contenuto 3</text><text lang="en">Contenuto 3</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110905174237</created><lastModified>20110905174237</lastModified></content>
', '20110905174237', '20110905174237', '<?xml version="1.0" encoding="UTF-8"?>
<content id="TST4" typecode="TST" typedescr="Test Type"><descr>Contenuto 3</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contenuto 3</text><text lang="en">Contenuto 3</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110905174237</created><lastModified>20110905174237</lastModified></content>
', 'free', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DWN44', 'DWN', 'Internal Company Procedures', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN44" typecode="DWN" typedescr="Download File"><descr>Internal Company Procedures</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Procedure Aziendali</text><text lang="en">Internal Company Procedures</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="43" lang="en" /><text lang="it">Internal Company Procedures</text><text lang="en">Internal Company Procedures</text></attribute></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20110926155822</created><lastModified>20130311181325</lastModified></content>
', '20110926155822', '20130311181325', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN44" typecode="DWN" typedescr="Download File"><descr>Internal Company Procedures</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Procedure Aziendali</text><text lang="en">Internal Company Procedures</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="43" lang="en" /><text lang="it">Internal Company Procedures</text><text lang="en">Internal Company Procedures</text></attribute></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20110926155822</created><lastModified>20130311181325</lastModified></content>
', 'administrators', '2.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DWN53', 'DWN', 'Entando Model', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN53" typecode="DWN" typedescr="Scheda Download"><descr>Entando Model</descr><groups mainGroup="administrators"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Il Modello Entando</text><text lang="en">Entando Model</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Descrive il modello concettuale che sta alla base del progetto Entando.</text><text lang="en">This document describes the conceptual model of Entando project</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="52" lang="en" /><text lang="it">Il Modello Entando</text><text lang="en">Entando Model</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110926162601</created><lastModified>20110926162601</lastModified></content>
', '20110926162601', '20110926162601', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN53" typecode="DWN" typedescr="Scheda Download"><descr>Entando Model</descr><groups mainGroup="administrators"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Il Modello Entando</text><text lang="en">Entando Model</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Descrive il modello concettuale che sta alla base del progetto Entando.</text><text lang="en">This document describes the conceptual model of Entando project</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="52" lang="en" /><text lang="it">Il Modello Entando</text><text lang="en">Entando Model</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110926162601</created><lastModified>20110926162601</lastModified></content>
', 'administrators', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW33', 'NEW', 'New Customer Services', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW33" typecode="NEW" typedescr="News"><descr>New Customer Services</descr><groups mainGroup="administrators"><group name="customers" /></groups><categories><category id="news" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Nuovi servizi per i clienti</text><text lang="en">New customer Services</text></attribute><attribute name="Date" attributetype="Date"><date>20131223</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Nuovi servizi per i clienti sono disponibili nell''area riservata</text><text lang="en">New services for customers are available in the reserved area.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Nuovi servizi per i clienti sono disponibili nell&#39;area riservata.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	New services for customers are available in the reserved area.<br />
	&nbsp;</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="32" lang="en" /><text lang="it">Servizi clienti</text><text lang="en">Customer Services</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>11.0</version><lastEditor>jeff</lastEditor><created>20110926151115</created><lastModified>20130313130426</lastModified></content>
', '20110926151115', '20130313130426', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW33" typecode="NEW" typedescr="News"><descr>New Customer Services</descr><groups mainGroup="administrators"><group name="customers" /></groups><categories><category id="news" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Nuovi servizi per i clienti</text><text lang="en">New customer Services</text></attribute><attribute name="Date" attributetype="Date"><date>20131223</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Nuovi servizi per i clienti sono disponibili nell''area riservata</text><text lang="en">New services for customers are available in the reserved area.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Nuovi servizi per i clienti sono disponibili nell&#39;area riservata.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	New services for customers are available in the reserved area.<br />
	&nbsp;</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="32" lang="en" /><text lang="it">Servizi clienti</text><text lang="en">Customer Services</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>11.0</version><lastEditor>jeff</lastEditor><created>20110926151115</created><lastModified>20130313130426</lastModified></content>
', 'administrators', '11.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DWN40', 'DWN', 'Product Details', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN40" typecode="DWN" typedescr="Scheda Download"><descr>Product Details</descr><groups mainGroup="administrators"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Scheda Prodotto</text><text lang="en">Product Details</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Questo documento descrive le caratteristiche del prodotto e i suoi benefici.</text><text lang="en">This document describes the characteristics and benefits of the product.</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="39" lang="en" /><text lang="it">Scheda Prodotto</text><text lang="en">Product Card</text></attribute></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20110926154050</created><lastModified>20110926154829</lastModified></content>
', '20110926154050', '20110926154829', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN40" typecode="DWN" typedescr="Scheda Download"><descr>Product Details</descr><groups mainGroup="administrators"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Scheda Prodotto</text><text lang="en">Product Details</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Questo documento descrive le caratteristiche del prodotto e i suoi benefici.</text><text lang="en">This document describes the characteristics and benefits of the product.</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="39" lang="en" /><text lang="it">Scheda Prodotto</text><text lang="en">Product Card</text></attribute></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20110926154050</created><lastModified>20110926154829</lastModified></content>
', 'administrators', '2.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW21', 'NEW', 'Intranet Area', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW21" typecode="NEW" typedescr="News"><descr>Intranet Area</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories><category id="news" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Benvenuti nell''area Intranet dedicata ai collaboratori</text><text lang="en">Welcome to the Intranet Area for co-workers</text></attribute><attribute name="Date" attributetype="Date"><date>20131204</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Nell''area Intranet è possibile trovare informazioni riservate ai collaboratori.</text><text lang="en">In the Intranet Area you can find reserved informations for co-workers.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Nell&#39;area Intranet &egrave; possibile trovare informazioni riservate ai collaboratori.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	In the Intranet Area are available information and services reserved to co-workers.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="20" lang="en" /><text lang="en">Intranet Area</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>19.0</version><lastEditor>jeff</lastEditor><created>20110926141837</created><lastModified>20130311170745</lastModified></content>
', '20110926141837', '20130311170745', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW21" typecode="NEW" typedescr="News"><descr>Intranet Area</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories><category id="news" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Benvenuti nell''area Intranet dedicata ai collaboratori</text><text lang="en">Welcome to the Intranet Area for co-workers</text></attribute><attribute name="Date" attributetype="Date"><date>20131204</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Nell''area Intranet è possibile trovare informazioni riservate ai collaboratori.</text><text lang="en">In the Intranet Area you can find reserved informations for co-workers.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Nell&#39;area Intranet &egrave; possibile trovare informazioni riservate ai collaboratori.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	In the Intranet Area are available information and services reserved to co-workers.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="20" lang="en" /><text lang="en">Intranet Area</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>19.0</version><lastEditor>jeff</lastEditor><created>20110926141837</created><lastModified>20130311170745</lastModified></content>
', 'administrators', '19.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG55', 'CNG', 'Useful Links', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG55" typecode="CNG" typedescr="Generic Content"><descr>Useful Links</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Collegamenti utili</text><text lang="en">Some useful links</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<ul>
	<li>
		<a href="#!U;http://www.entando.com!#">Entando Portal</a></li>
	<li>
		<a href="#!U;http://entando.org!#">Entando Community</a></li>
	<li>
		<a href="#!U;http://github.com/entando/!#">Entando on GitHub</a></li>
	<li class="last">
		<a href="#!U;http://blog.entando.com!#">Entando Blog</a></li>
	<li class="last">
		<a href="#!U;http://groups.google.com/group/entando/!#">Entando Forum</a></li>
</ul>
]]></hypertext><hypertext lang="en"><![CDATA[<ul>
	<li>
		<a href="#!U;http://www.entando.com!#">Entando Portal</a></li>
	<li>
		<a href="#!U;http://entando.org!#">Entando Community</a></li>
	<li>
		<a href="#!U;http://github.com/entando/!#">Entando on GitHub</a></li>
	<li class="last">
		<a href="#!U;http://blog.entando.com!#">Entando Blog</a></li>
	<li class="last">
		<a href="#!U;http://groups.google.com/group/entando/!#">Entando Forum</a></li>
</ul>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image" /><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20110926192903</created><lastModified>20130311175932</lastModified></content>
', '20110926192903', '20130311175932', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG55" typecode="CNG" typedescr="Generic Content"><descr>Useful Links</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Collegamenti utili</text><text lang="en">Some useful links</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<ul>
	<li>
		<a href="#!U;http://www.entando.com!#">Entando Portal</a></li>
	<li>
		<a href="#!U;http://entando.org!#">Entando Community</a></li>
	<li>
		<a href="#!U;http://github.com/entando/!#">Entando on GitHub</a></li>
	<li class="last">
		<a href="#!U;http://blog.entando.com!#">Entando Blog</a></li>
	<li class="last">
		<a href="#!U;http://groups.google.com/group/entando/!#">Entando Forum</a></li>
</ul>
]]></hypertext><hypertext lang="en"><![CDATA[<ul>
	<li>
		<a href="#!U;http://www.entando.com!#">Entando Portal</a></li>
	<li>
		<a href="#!U;http://entando.org!#">Entando Community</a></li>
	<li>
		<a href="#!U;http://github.com/entando/!#">Entando on GitHub</a></li>
	<li class="last">
		<a href="#!U;http://blog.entando.com!#">Entando Blog</a></li>
	<li class="last">
		<a href="#!U;http://groups.google.com/group/entando/!#">Entando Forum</a></li>
</ul>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image" /><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20110926192903</created><lastModified>20130311175932</lastModified></content>
', 'free', '2.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('TST3', 'TST', 'Contenuto 2', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="TST3" typecode="TST" typedescr="Test Type"><descr>Contenuto 2</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contenuto 2</text><text lang="en">Contenuto 2</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110905174213</created><lastModified>20110905174213</lastModified></content>
', '20110905174213', '20110905174213', '<?xml version="1.0" encoding="UTF-8"?>
<content id="TST3" typecode="TST" typedescr="Test Type"><descr>Contenuto 2</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contenuto 2</text><text lang="en">Contenuto 2</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110905174213</created><lastModified>20110905174213</lastModified></content>
', 'free', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW22', 'NEW', 'Company Meeting', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW22" typecode="NEW" typedescr="News"><descr>Company Meeting</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories><category id="events" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Incontro riservato ai collaboratori</text><text lang="en">Meeting reserved for co-workers</text></attribute><attribute name="Date" attributetype="Date"><date>20131211</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Presto verrà organizzato un incontro riservato ai collaboratori dell''azienda.</text><text lang="en">Soon we organize a meeting reserved to co-workers</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Presto verr&agrave; organizzato un incontro riservato ai collaboratori dell&#39;azienda.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Soon we organize a meeting reserved to co-workers</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="10" lang="en" /><text lang="en">Meeting</text></attribute><attribute name="Image2" attributetype="Image"><resource resourcetype="Image" id="24" lang="en" /><text lang="en">Company Meeting</text></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>8.0</version><lastEditor>jeff</lastEditor><created>20110926142222</created><lastModified>20130311173023</lastModified></content>
', '20110926142222', '20130311173023', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW22" typecode="NEW" typedescr="News"><descr>Company Meeting</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories><category id="events" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Incontro riservato ai collaboratori</text><text lang="en">Meeting reserved for co-workers</text></attribute><attribute name="Date" attributetype="Date"><date>20131211</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Presto verrà organizzato un incontro riservato ai collaboratori dell''azienda.</text><text lang="en">Soon we organize a meeting reserved to co-workers</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Presto verr&agrave; organizzato un incontro riservato ai collaboratori dell&#39;azienda.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Soon we organize a meeting reserved to co-workers</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="10" lang="en" /><text lang="en">Meeting</text></attribute><attribute name="Image2" attributetype="Image"><resource resourcetype="Image" id="24" lang="en" /><text lang="en">Company Meeting</text></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>8.0</version><lastEditor>jeff</lastEditor><created>20110926142222</created><lastModified>20130311173023</lastModified></content>
', 'administrators', '8.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW30', 'NEW', 'Now are available the Reports for customers', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW30" typecode="NEW" typedescr="News"><descr>Now are available the Reports for customers</descr><groups mainGroup="administrators"><group name="customers" /></groups><categories><category id="news" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Ora sono disponibili i report per i clienti</text><text lang="en">New reports for customers now available</text></attribute><attribute name="Date" attributetype="Date"><date>20131210</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Ora sono disponibili i report per i clienti nell''area riservata</text><text lang="en">New reports for customers are available in the reserved area</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Ora sono disponibili i report per i clienti nell&#39;area riservata</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	New reports for customers are available in the reserved area.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="31" lang="en" /><text lang="en">Analytics</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>8.0</version><lastEditor>jeff</lastEditor><created>20110926150343</created><lastModified>20130311170820</lastModified></content>
', '20110926150343', '20130311170820', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW30" typecode="NEW" typedescr="News"><descr>Now are available the Reports for customers</descr><groups mainGroup="administrators"><group name="customers" /></groups><categories><category id="news" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Ora sono disponibili i report per i clienti</text><text lang="en">New reports for customers now available</text></attribute><attribute name="Date" attributetype="Date"><date>20131210</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Ora sono disponibili i report per i clienti nell''area riservata</text><text lang="en">New reports for customers are available in the reserved area</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Ora sono disponibili i report per i clienti nell&#39;area riservata</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	New reports for customers are available in the reserved area.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="31" lang="en" /><text lang="en">Analytics</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>8.0</version><lastEditor>jeff</lastEditor><created>20110926150343</created><lastModified>20130311170820</lastModified></content>
', 'administrators', '8.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW19', 'NEW', 'Available the new calendar of Entando Courses for 2013', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW19" typecode="NEW" typedescr="News"><descr>Available the new calendar of Entando Courses for 2013</descr><groups mainGroup="free"><group name="free" /></groups><categories><category id="news" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contribuisci al progetto Entando: proponi la tua idea</text><text lang="en">Available the new calendar of Entando Courses for 2013</text></attribute><attribute name="Date" attributetype="Date"><date>20111020</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Condividi le tue idee su come migliorare il progetto jAPS 2.0 nell''ambito delle categorie: community, documentazione, funzionalità del core e plugins.</text><text lang="en">The best way to get started with Entando is to partecipate in our training courses to learn and become productive in a short time.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il modo migliore per iniziare con Entando &egrave; quello di partecipare ai nostri corsi di formazione per <strong>imparare </strong>e <strong>diventare</strong> <strong>produttivi in breve tempo</strong>.</p>
<p>
	I corsi di formazione, distribuiti da Entando, sono disegnati tenendo conto delle reali esigenze degli utenti e costituiscono un <strong>percorso formativo valido</strong>, <strong>coerente </strong>e <strong>strutturato </strong>per acquisire competenze sulla piattaforma Entando.</p>
<p>
	<strong>Lista dei corsi:</strong></p>
<p>
	<strong>BOOTCAMP </strong>(1 giorno): overview dei principali vantaggi e caratteristiche della piattaforma Entando. I partecipanti impareranno come accedere e utilizzare le principali funzionalit&agrave; della versione pi&ugrave; recente di Entando</p>
<p>
	<strong>FUNDAMENTALS</strong> (2 giorni): introduzione tecnica sulle funzionalit&agrave; di Entando. I partecipanti potranno conoscere il modello architetturale e come configurare, personalizzare e utilizzare Entando per sviluppare soluzioni personalizzate e progetti.</p>
<p>
	Di seguito il <strong>calendario dei corsi </strong>Entando per il 2013.</p>
<table border="0" cellpadding="0" cellspacing="0" class="table-basic" width="100%">
	<caption>
		&nbsp;</caption>
	<thead>
		<tr>
			<th colspan="1" scope="col">
				Corsi</th>
			<th scope="col">
				Durata</th>
			<th colspan="1" scope="col">
				Localit&agrave;</th>
			<th colspan="1" scope="col">
				Data</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Giorno</td>
			<td align="center">
				Cagliari - Italy</td>
			<td align="center">
				9 Aprile 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Giorni</td>
			<td align="center">
				Cagliari - Italy</td>
			<td align="center">
				10 - 11 Aprile 2013</td>
		</tr>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Giorno</td>
			<td align="center">
				Rome - Italy</td>
			<td align="center">
				21 Maggio 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Giorni</td>
			<td align="center">
				Rome - Italy</td>
			<td align="center">
				22 - 23 Maggio 2013</td>
		</tr>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Giorno</td>
			<td align="center">
				Milan - Italy</td>
			<td align="center">
				11 Giugno 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Giorni</td>
			<td align="center">
				Milan - Italy</td>
			<td align="center">
				12 - 13 Giugno 2013</td>
		</tr>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Giorno</td>
			<td align="center">
				Dublin - Ireland</td>
			<td align="center">
				7 Maggio 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Giorni</td>
			<td align="center">
				Dublin - Ireland</td>
			<td align="center">
				16 - 17 Maggio 2013</td>
		</tr>
	</tbody>
</table>
<p>
	<strong>Per maggiori informazioni sul calendario dei corsi <a href="#!U;http://www.entando.com!#">contattaci</a>.</strong></p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	The best way to get started with Entando is to partecipate in our training courses to learn and become productive in a short time.</p>
<p>
	<strong>Courses List:</strong></p>
<p>
	<strong>BOOTCAMP </strong>(1 day): overview of key benefits and features of Entando Platform. Participants will learn how to&nbsp; access and use the core features of the latest release of Entando.</p>
<p>
	<strong>FUNDAMENTALS</strong> (2 days): technical overview of Entando Platform. Participants will learn the fundamentals of Entando Platform application development to start building new applications.</p>
<p>
	Here the calendar of Entando courses for 2013.</p>
<table border="0" cellpadding="0" cellspacing="0" class="table-basic" width="100%">
	<caption>
		&nbsp;</caption>
	<thead>
		<tr>
			<th colspan="1" scope="col">
				Training Courses</th>
			<th scope="col">
				Duration</th>
			<th colspan="1" scope="col">
				Location</th>
			<th colspan="1" scope="col">
				Date</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Day</td>
			<td align="center">
				Cagliari - Italy</td>
			<td align="center">
				9 April 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Days</td>
			<td align="center">
				Cagliari - Italy</td>
			<td align="center">
				10 - 11 April 2013</td>
		</tr>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Day</td>
			<td align="center">
				Rome - Italy</td>
			<td align="center">
				21 May 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Days</td>
			<td align="center">
				Rome - Italy</td>
			<td align="center">
				22 - 23 May 2013</td>
		</tr>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Day</td>
			<td align="center">
				Milan - Italy</td>
			<td align="center">
				11 June 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Days</td>
			<td align="center">
				Milan - Italy</td>
			<td align="center">
				12 - 13 June 2013</td>
		</tr>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Day</td>
			<td align="center">
				Dublin - Ireland</td>
			<td align="center">
				7 May 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Days</td>
			<td align="center">
				Dublin - Ireland</td>
			<td align="center">
				16 - 17 May 2013</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	<strong>For more information about our courses or to register, please&nbsp;<a href="#!U;http://www.entando.com!#">contact us</a>. </strong></p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="68" lang="en" /><text lang="en">Training</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando Portal</text></attribute></list></attributes><status>PUBLIC</status><version>6.0</version><lastEditor>jeff</lastEditor><created>20110926141219</created><lastModified>20130311170717</lastModified></content>
', '20110926141219', '20130311170717', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW19" typecode="NEW" typedescr="News"><descr>Available the new calendar of Entando Courses for 2013</descr><groups mainGroup="free"><group name="free" /></groups><categories><category id="news" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contribuisci al progetto Entando: proponi la tua idea</text><text lang="en">Available the new calendar of Entando Courses for 2013</text></attribute><attribute name="Date" attributetype="Date"><date>20111020</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Condividi le tue idee su come migliorare il progetto jAPS 2.0 nell''ambito delle categorie: community, documentazione, funzionalità del core e plugins.</text><text lang="en">The best way to get started with Entando is to partecipate in our training courses to learn and become productive in a short time.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Il modo migliore per iniziare con Entando &egrave; quello di partecipare ai nostri corsi di formazione per <strong>imparare </strong>e <strong>diventare</strong> <strong>produttivi in breve tempo</strong>.</p>
<p>
	I corsi di formazione, distribuiti da Entando, sono disegnati tenendo conto delle reali esigenze degli utenti e costituiscono un <strong>percorso formativo valido</strong>, <strong>coerente </strong>e <strong>strutturato </strong>per acquisire competenze sulla piattaforma Entando.</p>
<p>
	<strong>Lista dei corsi:</strong></p>
<p>
	<strong>BOOTCAMP </strong>(1 giorno): overview dei principali vantaggi e caratteristiche della piattaforma Entando. I partecipanti impareranno come accedere e utilizzare le principali funzionalit&agrave; della versione pi&ugrave; recente di Entando</p>
<p>
	<strong>FUNDAMENTALS</strong> (2 giorni): introduzione tecnica sulle funzionalit&agrave; di Entando. I partecipanti potranno conoscere il modello architetturale e come configurare, personalizzare e utilizzare Entando per sviluppare soluzioni personalizzate e progetti.</p>
<p>
	Di seguito il <strong>calendario dei corsi </strong>Entando per il 2013.</p>
<table border="0" cellpadding="0" cellspacing="0" class="table-basic" width="100%">
	<caption>
		&nbsp;</caption>
	<thead>
		<tr>
			<th colspan="1" scope="col">
				Corsi</th>
			<th scope="col">
				Durata</th>
			<th colspan="1" scope="col">
				Localit&agrave;</th>
			<th colspan="1" scope="col">
				Data</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Giorno</td>
			<td align="center">
				Cagliari - Italy</td>
			<td align="center">
				9 Aprile 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Giorni</td>
			<td align="center">
				Cagliari - Italy</td>
			<td align="center">
				10 - 11 Aprile 2013</td>
		</tr>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Giorno</td>
			<td align="center">
				Rome - Italy</td>
			<td align="center">
				21 Maggio 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Giorni</td>
			<td align="center">
				Rome - Italy</td>
			<td align="center">
				22 - 23 Maggio 2013</td>
		</tr>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Giorno</td>
			<td align="center">
				Milan - Italy</td>
			<td align="center">
				11 Giugno 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Giorni</td>
			<td align="center">
				Milan - Italy</td>
			<td align="center">
				12 - 13 Giugno 2013</td>
		</tr>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Giorno</td>
			<td align="center">
				Dublin - Ireland</td>
			<td align="center">
				7 Maggio 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Giorni</td>
			<td align="center">
				Dublin - Ireland</td>
			<td align="center">
				16 - 17 Maggio 2013</td>
		</tr>
	</tbody>
</table>
<p>
	<strong>Per maggiori informazioni sul calendario dei corsi <a href="#!U;http://www.entando.com!#">contattaci</a>.</strong></p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	The best way to get started with Entando is to partecipate in our training courses to learn and become productive in a short time.</p>
<p>
	<strong>Courses List:</strong></p>
<p>
	<strong>BOOTCAMP </strong>(1 day): overview of key benefits and features of Entando Platform. Participants will learn how to&nbsp; access and use the core features of the latest release of Entando.</p>
<p>
	<strong>FUNDAMENTALS</strong> (2 days): technical overview of Entando Platform. Participants will learn the fundamentals of Entando Platform application development to start building new applications.</p>
<p>
	Here the calendar of Entando courses for 2013.</p>
<table border="0" cellpadding="0" cellspacing="0" class="table-basic" width="100%">
	<caption>
		&nbsp;</caption>
	<thead>
		<tr>
			<th colspan="1" scope="col">
				Training Courses</th>
			<th scope="col">
				Duration</th>
			<th colspan="1" scope="col">
				Location</th>
			<th colspan="1" scope="col">
				Date</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Day</td>
			<td align="center">
				Cagliari - Italy</td>
			<td align="center">
				9 April 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Days</td>
			<td align="center">
				Cagliari - Italy</td>
			<td align="center">
				10 - 11 April 2013</td>
		</tr>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Day</td>
			<td align="center">
				Rome - Italy</td>
			<td align="center">
				21 May 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Days</td>
			<td align="center">
				Rome - Italy</td>
			<td align="center">
				22 - 23 May 2013</td>
		</tr>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Day</td>
			<td align="center">
				Milan - Italy</td>
			<td align="center">
				11 June 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Days</td>
			<td align="center">
				Milan - Italy</td>
			<td align="center">
				12 - 13 June 2013</td>
		</tr>
		<tr>
			<th align="left">
				BOOTCAMP</th>
			<td align="center">
				1 Day</td>
			<td align="center">
				Dublin - Ireland</td>
			<td align="center">
				7 May 2013</td>
		</tr>
		<tr>
			<th align="left">
				GETTING STARTED WITH ENTANDO</th>
			<td align="center">
				2 Days</td>
			<td align="center">
				Dublin - Ireland</td>
			<td align="center">
				16 - 17 May 2013</td>
		</tr>
	</tbody>
</table>
<p>
	&nbsp;</p>
<p>
	<strong>For more information about our courses or to register, please&nbsp;<a href="#!U;http://www.entando.com!#">contact us</a>. </strong></p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="68" lang="en" /><text lang="en">Training</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando Portal</text></attribute></list></attributes><status>PUBLIC</status><version>6.0</version><lastEditor>jeff</lastEditor><created>20110926141219</created><lastModified>20130311170717</lastModified></content>
', 'free', '6.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG59', 'CNG', 'Entando Links', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG59" typecode="CNG" typedescr="Generic Content"><descr>Entando Links</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Entando</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="Body" attributetype="Hypertext" /><attribute name="Image1" attributetype="Image" /><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando Portal</text></attribute><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://entando.org/</urldest></link><text lang="en">Entando Community</text></attribute><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://github.com/entando/</urldest></link><text lang="en">Entando on GitHub</text></attribute></list></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>jeff</lastEditor><created>20111117112633</created><lastModified>20130311175539</lastModified></content>
', '20111117112633', '20130311175539', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG59" typecode="CNG" typedescr="Generic Content"><descr>Entando Links</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Entando</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="Body" attributetype="Hypertext" /><attribute name="Image1" attributetype="Image" /><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando Portal</text></attribute><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://entando.org/</urldest></link><text lang="en">Entando Community</text></attribute><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://github.com/entando/</urldest></link><text lang="en">Entando on GitHub</text></attribute></list></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>jeff</lastEditor><created>20111117112633</created><lastModified>20130311175539</lastModified></content>
', 'free', '3.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW66', 'NEW', 'News Widget Description', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW66" typecode="NEW" typedescr="News"><descr>News Widget Description</descr><groups mainGroup="free"><group name="free" /></groups><categories><category id="news" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Questo widget ti consente di accedere alle ultime news</text><text lang="en">This widget allows to access to the latest news and stay tuned!</text></attribute><attribute name="Date" attributetype="Date"><date>20131125</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Questo widget mostra le ultime news in base alla gruppo di appartenenza dell''utente.</text><text lang="en">This widget shows the latest news based on to the user group!</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Questo widget mostra le ultime news in base alla gruppo di appartenenza dell&#39;utente.</p>
<p>
	Se sei un utente guest puoi solo visualizzare i commenti e i voti sui contenuti, ma non puoi votare ed inserire commenti.</p>
<p>
	Solo gli amministratori possono farlo.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	This widget shows the latest news based on to the user group!</p>
<p>
	If you are guest user you can only see comments and content rating but you can&#39;t vote and insert comments.</p>
<p>
	Only administrators can do it.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="65" lang="en" /><text lang="en">Entando Logo</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>7.0</version><lastEditor>jeff</lastEditor><created>20130311152342</created><lastModified>20130314155432</lastModified></content>
', '20130311152342', '20130314155432', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW66" typecode="NEW" typedescr="News"><descr>News Widget Description</descr><groups mainGroup="free"><group name="free" /></groups><categories><category id="news" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Questo widget ti consente di accedere alle ultime news</text><text lang="en">This widget allows to access to the latest news and stay tuned!</text></attribute><attribute name="Date" attributetype="Date"><date>20131125</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Questo widget mostra le ultime news in base alla gruppo di appartenenza dell''utente.</text><text lang="en">This widget shows the latest news based on to the user group!</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Questo widget mostra le ultime news in base alla gruppo di appartenenza dell&#39;utente.</p>
<p>
	Se sei un utente guest puoi solo visualizzare i commenti e i voti sui contenuti, ma non puoi votare ed inserire commenti.</p>
<p>
	Solo gli amministratori possono farlo.</p>
<p>
	&nbsp;</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	This widget shows the latest news based on to the user group!</p>
<p>
	If you are guest user you can only see comments and content rating but you can&#39;t vote and insert comments.</p>
<p>
	Only administrators can do it.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="65" lang="en" /><text lang="en">Entando Logo</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>7.0</version><lastEditor>jeff</lastEditor><created>20130311152342</created><lastModified>20130314155432</lastModified></content>
', 'free', '7.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW70', 'NEW', 'Entando 3.2 Webinar', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW70" typecode="NEW" typedescr="News"><descr>Entando 3.2 Webinar</descr><groups mainGroup="free" /><categories><category id="events" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="en">Entando 3.2 Webinar</text></attribute><attribute name="Date" attributetype="Date"><date>20131001</date></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	We would like to invite you to a special webinar for the latest enhancements to Entando 3.2 Release.</p>
<p>
	The Webinar will be a great opportunity for learning and get up to speed with the significant new developments Entando has brought to simplification and generalization of Entando installation, API Engine module, development of the front-end with Bootstrap framework and introduction of new components, Bundles, that allow customization and specialization of the graphic elements and functions of the base platform.</p>
<p>
	Join our Webinar to learn how:</p>
<ul>
	<li>
		Create a portal built on Entando from scratch in minutes</li>
	<li>
		Customize Entando layout in few steps</li>
	<li>
		Install and configure Entando Plugins and Bundles</li>
	<li>
		Switch from one DBMS to another</li>
</ul>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="69" lang="en" /><text lang="en">The future</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20130311164815</created><lastModified>20130313114908</lastModified></content>
', '20130311164815', '20130313114908', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW70" typecode="NEW" typedescr="News"><descr>Entando 3.2 Webinar</descr><groups mainGroup="free" /><categories><category id="events" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="en">Entando 3.2 Webinar</text></attribute><attribute name="Date" attributetype="Date"><date>20131001</date></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	We would like to invite you to a special webinar for the latest enhancements to Entando 3.2 Release.</p>
<p>
	The Webinar will be a great opportunity for learning and get up to speed with the significant new developments Entando has brought to simplification and generalization of Entando installation, API Engine module, development of the front-end with Bootstrap framework and introduction of new components, Bundles, that allow customization and specialization of the graphic elements and functions of the base platform.</p>
<p>
	Join our Webinar to learn how:</p>
<ul>
	<li>
		Create a portal built on Entando from scratch in minutes</li>
	<li>
		Customize Entando layout in few steps</li>
	<li>
		Install and configure Entando Plugins and Bundles</li>
	<li>
		Switch from one DBMS to another</li>
</ul>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="69" lang="en" /><text lang="en">The future</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>admin</lastEditor><created>20130311164815</created><lastModified>20130313114908</lastModified></content>
', 'free', '2.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW71', 'NEW', 'Events Widget Description', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW71" typecode="NEW" typedescr="News"><descr>Events Widget Description</descr><groups mainGroup="free"><group name="free" /></groups><categories><category id="events" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Questo widget mostra gli ultimi eventi in base al gruppo di appartenenza dell''utente.</text><text lang="en">This widget shows the latest events based on the user group.</text></attribute><attribute name="Date" attributetype="Date"><date>20131113</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Questo widget mostra gli ultimi eventi in base al gruppo di appartenenza dell''utente.</text><text lang="en">This widget shows the latest events based on the user group.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Questo widget mostra gli ultimi eventi in base al gruppo di appartenenza dell&#39;utente.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	This widget shows the latest events based on the user group.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="72" lang="en" /><text lang="en">Events</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20130311165733</created><lastModified>20130313115117</lastModified></content>
', '20130311165733', '20130313115117', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW71" typecode="NEW" typedescr="News"><descr>Events Widget Description</descr><groups mainGroup="free"><group name="free" /></groups><categories><category id="events" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Questo widget mostra gli ultimi eventi in base al gruppo di appartenenza dell''utente.</text><text lang="en">This widget shows the latest events based on the user group.</text></attribute><attribute name="Date" attributetype="Date"><date>20131113</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Questo widget mostra gli ultimi eventi in base al gruppo di appartenenza dell''utente.</text><text lang="en">This widget shows the latest events based on the user group.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Questo widget mostra gli ultimi eventi in base al gruppo di appartenenza dell&#39;utente.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	This widget shows the latest events based on the user group.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="72" lang="en" /><text lang="en">Events</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20130311165733</created><lastModified>20130313115117</lastModified></content>
', 'free', '3.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG73', 'CNG', 'Web Forms Widget Description', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG73" typecode="CNG" typedescr="Generic Content"><descr>Web Forms Widget Description</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Web Form</text><text lang="en">Web Form</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Con Entando puoi creare form dinamici con campi personalizzati direttamente attraverso le interfacce dell''area di amministrazione del portale.</text><text lang="en">With Etando you can create dynamic web form with custom fields through special interface in the admin area of the portal.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Con Entando puoi creare form dinamici con campi personalizzati direttamente attraverso le interfacce dell&#39;area di amministrazione del portale.</p>
<p>
	Di seguito alcuni esempi di Form:</p>
<ul>
	<li>
		Company Form</li>
	<li>
		User Form</li>
</ul>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	With Etando you can create dynamic web form with custom fields through special interface in the admin area of the portal.</p>
<p>
	Following some example of Forms:</p>
<ul>
	<li>
		Company Form</li>
	<li>
		User Form</li>
</ul>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image" /><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>jeff</lastEditor><created>20130311173819</created><lastModified>20130311174616</lastModified></content>
', '20130311173819', '20130311174616', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG73" typecode="CNG" typedescr="Generic Content"><descr>Web Forms Widget Description</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Web Form</text><text lang="en">Web Form</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Con Entando puoi creare form dinamici con campi personalizzati direttamente attraverso le interfacce dell''area di amministrazione del portale.</text><text lang="en">With Etando you can create dynamic web form with custom fields through special interface in the admin area of the portal.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Con Entando puoi creare form dinamici con campi personalizzati direttamente attraverso le interfacce dell&#39;area di amministrazione del portale.</p>
<p>
	Di seguito alcuni esempi di Form:</p>
<ul>
	<li>
		Company Form</li>
	<li>
		User Form</li>
</ul>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	With Etando you can create dynamic web form with custom fields through special interface in the admin area of the portal.</p>
<p>
	Following some example of Forms:</p>
<ul>
	<li>
		Company Form</li>
	<li>
		User Form</li>
</ul>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image" /><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>jeff</lastEditor><created>20130311173819</created><lastModified>20130311174616</lastModified></content>
', 'free', '3.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG77', 'CNG', 'Fast Content Editing', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG77" typecode="CNG" typedescr="Generic Content"><descr>Fast Content Editing</descr><groups mainGroup="administrators"><group name="administrators" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Fast Content Editing</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">Editors can manage the content directly from the front-end through the "Edit Content" button or from the cms interface through the "Edit Content Backoffice" shortcut.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Editors can manage the content using the two options available in the &quot;configure&quot; menu of the widget:</p>
<ul>
	<li>
		edit the information of the information of the content shown in the widget (abstract and image) directly from the front-end through the &quot;Edit Content&quot; button</li>
	<li>
		edit the full content from the cms interface through the &quot;Edit Content Backoffice&quot; shortcut</li>
</ul>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="76" lang="en" /><text lang="en">Entando Editing</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20130312123217</created><lastModified>20130313114722</lastModified></content>
', '20130312123217', '20130313114722', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG77" typecode="CNG" typedescr="Generic Content"><descr>Fast Content Editing</descr><groups mainGroup="administrators"><group name="administrators" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Fast Content Editing</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">Editors can manage the content directly from the front-end through the "Edit Content" button or from the cms interface through the "Edit Content Backoffice" shortcut.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Editors can manage the content using the two options available in the &quot;configure&quot; menu of the widget:</p>
<ul>
	<li>
		edit the information of the information of the content shown in the widget (abstract and image) directly from the front-end through the &quot;Edit Content&quot; button</li>
	<li>
		edit the full content from the cms interface through the &quot;Edit Content Backoffice&quot; shortcut</li>
</ul>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="76" lang="en" /><text lang="en">Entando Editing</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>admin</lastEditor><created>20130312123217</created><lastModified>20130313114722</lastModified></content>
', 'administrators', '3.0', 'admin');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW79', 'NEW', 'Board Meeting', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW79" typecode="NEW" typedescr="News"><descr>Board Meeting</descr><groups mainGroup="administrators"><group name="administrators" /></groups><categories><category id="events" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="en">Board Meeting</text></attribute><attribute name="Date" attributetype="Date"><date>20131227</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">Next week is planned the board meeting to discuss about new market opportunity.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Next week is planned the board meeting to discuss about new market opportunity.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="78" lang="en" /><text lang="en">Board Meeting</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>jeff</lastEditor><created>20130313120056</created><lastModified>20130313131301</lastModified></content>
', '20130313120056', '20130313131301', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW79" typecode="NEW" typedescr="News"><descr>Board Meeting</descr><groups mainGroup="administrators"><group name="administrators" /></groups><categories><category id="events" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="en">Board Meeting</text></attribute><attribute name="Date" attributetype="Date"><date>20131227</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">Next week is planned the board meeting to discuss about new market opportunity.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Next week is planned the board meeting to discuss about new market opportunity.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="78" lang="en" /><text lang="en">Board Meeting</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>jeff</lastEditor><created>20130313120056</created><lastModified>20130313131301</lastModified></content>
', 'administrators', '3.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW81', 'NEW', 'Customer Meeting', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW81" typecode="NEW" typedescr="News"><descr>Customer Meeting</descr><groups mainGroup="administrators"><group name="customers" /></groups><categories><category id="events" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Incontro riservato ai clienti</text><text lang="en">Meeting reserved for customer</text></attribute><attribute name="Date" attributetype="Date"><date>20131225</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Presto verrà organizzato un incontro riservato ai clienti dell''azienda.</text><text lang="en">Next week is planned the customer meeting to discuss about new market opportunity.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Presto verr&agrave; organizzato un incontro riservato ai clienti dell&#39;azienda.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Next week is planned the customer meeting to discuss about new market opportunity.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="80" lang="en" /><text lang="en">Customer</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>jeff</lastEditor><created>20130313130344</created><lastModified>20130313131211</lastModified></content>
', '20130313130344', '20130313131211', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW81" typecode="NEW" typedescr="News"><descr>Customer Meeting</descr><groups mainGroup="administrators"><group name="customers" /></groups><categories><category id="events" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Incontro riservato ai clienti</text><text lang="en">Meeting reserved for customer</text></attribute><attribute name="Date" attributetype="Date"><date>20131225</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Presto verrà organizzato un incontro riservato ai clienti dell''azienda.</text><text lang="en">Next week is planned the customer meeting to discuss about new market opportunity.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>
	Presto verr&agrave; organizzato un incontro riservato ai clienti dell&#39;azienda.</p>
]]></hypertext><hypertext lang="en"><![CDATA[<p>
	Next week is planned the customer meeting to discuss about new market opportunity.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="80" lang="en" /><text lang="en">Customer</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>3.0</version><lastEditor>jeff</lastEditor><created>20130313130344</created><lastModified>20130313131211</lastModified></content>
', 'administrators', '3.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW83', 'NEW', 'Now available new project reports', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW83" typecode="NEW" typedescr="News"><descr>Now available new project reports</descr><groups mainGroup="administrators"><group name="administrators" /></groups><categories><category id="news" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="en">Now available new project reports</text></attribute><attribute name="Date" attributetype="Date"><date>20131228</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">Now available new project reports</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Now available new project reports</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="82" lang="en" /><text lang="en">Reports</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20130313131130</created><lastModified>20130313132438</lastModified></content>
', '20130313131130', '20130313132438', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW83" typecode="NEW" typedescr="News"><descr>Now available new project reports</descr><groups mainGroup="administrators"><group name="administrators" /></groups><categories><category id="news" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="en">Now available new project reports</text></attribute><attribute name="Date" attributetype="Date"><date>20131228</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">Now available new project reports</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Now available new project reports</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="82" lang="en" /><text lang="en">Reports</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20130313131130</created><lastModified>20130313132438</lastModified></content>
', 'administrators', '2.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('YTB84', 'YTB', 'Entando Mobile', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="YTB84" typecode="YTB" typedescr="Youtube Video"><descr>Entando Mobile</descr><groups mainGroup="free" /><categories /><attributes><attribute name="VideoCode" attributetype="Text"><text lang="en">3lqhPXVv6xQ</text></attribute><attribute name="Title" attributetype="Text"><text lang="en">Entando Mobile</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">Entando Mobile allows organisations of any size or type to display portal content on any android or apple mobile device.&#xD;
&#xD;
MyEntando is the mobile application to easily access and organize</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Entando Mobile allows organisations of any size or type to display portal content on any android or apple mobile device.</p>
<p>
	MyEntando is the mobile application to easily access and organize</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20130313134440</created><lastModified>20130313134534</lastModified></content>
', '20130313134440', '20130313134534', '<?xml version="1.0" encoding="UTF-8"?>
<content id="YTB84" typecode="YTB" typedescr="Youtube Video"><descr>Entando Mobile</descr><groups mainGroup="free" /><categories /><attributes><attribute name="VideoCode" attributetype="Text"><text lang="en">3lqhPXVv6xQ</text></attribute><attribute name="Title" attributetype="Text"><text lang="en">Entando Mobile</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">Entando Mobile allows organisations of any size or type to display portal content on any android or apple mobile device.&#xD;
&#xD;
MyEntando is the mobile application to easily access and organize</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Entando Mobile allows organisations of any size or type to display portal content on any android or apple mobile device.</p>
<p>
	MyEntando is the mobile application to easily access and organize</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20130313134440</created><lastModified>20130313134534</lastModified></content>
', 'free', '2.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('YTB85', 'YTB', 'Entando Backoffice Demo', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="YTB85" typecode="YTB" typedescr="Youtube Video"><descr>Entando Backoffice Demo</descr><groups mainGroup="administrators"><group name="administrators" /></groups><categories /><attributes><attribute name="VideoCode" attributetype="Text"><text lang="en">sU7fHpQokW4</text></attribute><attribute name="Title" attributetype="Text"><text lang="en">Entando Backoffice Demo</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">Entando Backoffice Demo</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Entando Backoffice Demo</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20130313134700</created><lastModified>20130313134700</lastModified></content>
', '20130313134700', '20130313134700', '<?xml version="1.0" encoding="UTF-8"?>
<content id="YTB85" typecode="YTB" typedescr="Youtube Video"><descr>Entando Backoffice Demo</descr><groups mainGroup="administrators"><group name="administrators" /></groups><categories /><attributes><attribute name="VideoCode" attributetype="Text"><text lang="en">sU7fHpQokW4</text></attribute><attribute name="Title" attributetype="Text"><text lang="en">Entando Backoffice Demo</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">Entando Backoffice Demo</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	Entando Backoffice Demo</p>
]]></hypertext></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20130313134700</created><lastModified>20130313134700</lastModified></content>
', 'administrators', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG86', 'CNG', 'APIs', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG86" typecode="CNG" typedescr="Generic Content"><descr>APIs</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">APIs</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">The API Engine allows to expose information, contents of the CMS and platform services, through REST interfaces. Each resource can be exposed through the operations of research, creation, modification and deletion. Each API resource is also protected by an authorization check, through the use of OAuth protocol, whose policies are configurable by the administrator of the system.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	The API Engine allows to expose information, contents of the CMS and platform services, through REST interfaces. Each resource can be exposed through the operations of research, creation, modification and deletion. Each API resource is also protected by an authorization check, through the use of OAuth protocol, whose policies are configurable by the administrator of the system.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image" /><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20130313135558</created><lastModified>20130313135558</lastModified></content>
', '20130313135558', '20130313135558', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG86" typecode="CNG" typedescr="Generic Content"><descr>APIs</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">APIs</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">The API Engine allows to expose information, contents of the CMS and platform services, through REST interfaces. Each resource can be exposed through the operations of research, creation, modification and deletion. Each API resource is also protected by an authorization check, through the use of OAuth protocol, whose policies are configurable by the administrator of the system.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>
	The API Engine allows to expose information, contents of the CMS and platform services, through REST interfaces. Each resource can be exposed through the operations of research, creation, modification and deletion. Each API resource is also protected by an authorization check, through the use of OAuth protocol, whose policies are configurable by the administrator of the system.</p>
]]></hypertext></attribute><attribute name="Image1" attributetype="Image" /><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20130313135558</created><lastModified>20130313135558</lastModified></content>
', 'free', '1.0', 'jeff');


INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('18', 'Image', 'Entando IdeaScale', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="18"><descr>Entando IdeaScale</descr><groups mainGroup="free" /><categories /><masterfile>ideascale_logo.jpeg</masterfile><instance><size>3</size><filename>ideascale_logo_d3.jpeg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>2</size><filename>ideascale_logo_d2.jpeg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>1</size><filename>ideascale_logo_d1.jpeg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>ideascale_logo_d0.jpeg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance></resource>
', 'ideascale_logo.jpeg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('20', 'Image', 'Intranet Area', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="20"><descr>Intranet Area</descr><groups mainGroup="free" /><categories /><masterfile>Intranet_Area.jpg</masterfile><instance><size>3</size><filename>Intranet_Area_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>6 Kb</weight></instance><instance><size>2</size><filename>Intranet_Area_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>1</size><filename>Intranet_Area_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>Intranet_Area_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>239 Kb</weight></instance></resource>
', 'Intranet_Area.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('23', 'Image', 'Intranet Notice Board', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="23"><descr>Intranet Notice Board</descr><groups mainGroup="free" /><categories /><masterfile>Intranet_notice_board.jpg</masterfile><instance><size>3</size><filename>Intranet_notice_board_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>6 Kb</weight></instance><instance><size>2</size><filename>Intranet_notice_board_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>1</size><filename>Intranet_notice_board_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Intranet_notice_board_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>801 Kb</weight></instance></resource>
', 'Intranet_notice_board.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('24', 'Image', 'Company Meeting', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="24"><descr>Company Meeting</descr><groups mainGroup="free" /><categories /><masterfile>Company_Meeting.jpg</masterfile><instance><size>3</size><filename>Company_Meeting_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>10 Kb</weight></instance><instance><size>2</size><filename>Company_Meeting_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>5 Kb</weight></instance><instance><size>1</size><filename>Company_Meeting_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Company_Meeting_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>803 Kb</weight></instance></resource>
', 'Company_Meeting.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('10', 'Image', 'Meeting', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="10"><descr>Meeting</descr><groups mainGroup="free" /><categories /><masterfile>Live_Event_Tzente_Pentaho_Bnova_d5.jpg</masterfile><instance><size>3</size><filename>Live_Event_Tzente_Pentaho_Bnova_d5_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>5 Kb</weight></instance><instance><size>2</size><filename>Live_Event_Tzente_Pentaho_Bnova_d5_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>1</size><filename>Live_Event_Tzente_Pentaho_Bnova_d5_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Live_Event_Tzente_Pentaho_Bnova_d5_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>5 Kb</weight></instance></resource>
', 'Live_Event_Tzente_Pentaho_Bnova_d5.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('25', 'Image', 'Webcast Portal & BI', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="25"><descr>Webcast Portal &amp; BI</descr><groups mainGroup="free" /><categories /><masterfile>Webcast_Analytics.jpg</masterfile><instance><size>3</size><filename>Webcast_Analytics_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>9 Kb</weight></instance><instance><size>2</size><filename>Webcast_Analytics_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>5 Kb</weight></instance><instance><size>1</size><filename>Webcast_Analytics_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Webcast_Analytics_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>576 Kb</weight></instance></resource>
', 'Webcast_Analytics.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('26', 'Image', 'Contribute', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="26"><descr>Contribute</descr><groups mainGroup="free" /><categories /><masterfile>Contribute.jpg</masterfile><instance><size>3</size><filename>Contribute_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>4 Kb</weight></instance><instance><size>2</size><filename>Contribute_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>1</size><filename>Contribute_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>Contribute_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>124 Kb</weight></instance></resource>
', 'Contribute.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('29', 'Image', 'Live Event', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="29"><descr>Live Event</descr><groups mainGroup="free" /><categories /><masterfile>Live_Event.jpg</masterfile><instance><size>3</size><filename>Live_Event_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>10 Kb</weight></instance><instance><size>2</size><filename>Live_Event_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>5 Kb</weight></instance><instance><size>1</size><filename>Live_Event_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Live_Event_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>497 Kb</weight></instance></resource>
', 'Live_Event.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('31', 'Image', 'Analytics', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="31"><descr>Analytics</descr><groups mainGroup="free" /><categories /><masterfile>Analytics.jpg</masterfile><instance><size>3</size><filename>Analytics_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>8 Kb</weight></instance><instance><size>2</size><filename>Analytics_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>4 Kb</weight></instance><instance><size>1</size><filename>Analytics_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Analytics_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>325 Kb</weight></instance></resource>
', 'Analytics.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('32', 'Image', 'Customer Services', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="32"><descr>Customer Services</descr><groups mainGroup="free" /><categories /><masterfile>Customer_services.jpg</masterfile><instance><size>3</size><filename>Customer_services_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>4 Kb</weight></instance><instance><size>2</size><filename>Customer_services_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>1</size><filename>Customer_services_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>Customer_services_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>346 Kb</weight></instance></resource>
', 'Customer_services.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('37', 'Attach', 'Setup Java Environment', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="37"><descr>Setup Java Environment</descr><groups mainGroup="free" /><categories /><masterfile>Setup a Java development environment for the Entando Platform.pdf</masterfile><instance><size>0</size><filename>Setup a Java development environment for the Entando Platform.pdf</filename><mimetype>application/pdf</mimetype><weight>353 Kb</weight></instance></resource>
', 'Setup a Java development environment for the Entando Platform.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('39', 'Attach', 'Product Details', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="39"><descr>Product Details</descr><groups mainGroup="free" /><categories /><masterfile>Entando Overview.pdf</masterfile><instance><size>0</size><filename>Entando Overview.pdf</filename><mimetype>application/pdf</mimetype><weight>592 Kb</weight></instance></resource>
', 'Entando Overview.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('43', 'Attach', 'Internal Company Procedures', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="43"><descr>Internal Company Procedures</descr><groups mainGroup="free" /><categories /><masterfile>Internal_Company_Procedures.pdf</masterfile><instance><size>0</size><filename>Internal_Company_Procedures.pdf</filename><mimetype>application/pdf</mimetype><weight>48 Kb</weight></instance></resource>
', 'Internal_Company_Procedures.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('46', 'Attach', 'Entando Customer Case Study Template', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="46"><descr>Entando Customer Case Study Template</descr><groups mainGroup="free" /><categories /><masterfile>Entando_Customer_Case_study_EN_V1.0.pdf</masterfile><instance><size>0</size><filename>Entando_Customer_Case_study_EN_V1.0.pdf</filename><mimetype>application/pdf</mimetype><weight>74 Kb</weight></instance></resource>
', 'Entando_Customer_Case_study_EN_V1.0.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('48', 'Attach', 'Intranet Documentation', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="48"><descr>Intranet Documentation</descr><groups mainGroup="free" /><categories /><masterfile>Internal_Template_Documentation.pdf</masterfile><instance><size>0</size><filename>Internal_Template_Documentation.pdf</filename><mimetype>application/pdf</mimetype><weight>86 Kb</weight></instance></resource>
', 'Internal_Template_Documentation.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('50', 'Attach', 'Customer Agreement', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="50"><descr>Customer Agreement</descr><groups mainGroup="free" /><categories /><masterfile>Customer_Agreement.pdf</masterfile><instance><size>0</size><filename>Customer_Agreement.pdf</filename><mimetype>application/pdf</mimetype><weight>40 Kb</weight></instance></resource>
', 'Customer_Agreement.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('52', 'Attach', 'Entando Model', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="52"><descr>Entando Model</descr><groups mainGroup="free" /><categories /><masterfile>The Entando Model.pdf</masterfile><instance><size>0</size><filename>The Entando Model.pdf</filename><mimetype>application/pdf</mimetype><weight>444 Kb</weight></instance></resource>
', 'The Entando Model.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('57', 'Image', 'What is Entando', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="57"><descr>What is Entando</descr><groups mainGroup="free" /><categories /><masterfile>What_is_Entando.png</masterfile><instance><size>3</size><filename>What_is_Entando_d3.png</filename><mimetype>image/png</mimetype><weight>8 Kb</weight></instance><instance><size>2</size><filename>What_is_Entando_d2.png</filename><mimetype>image/png</mimetype><weight>4 Kb</weight></instance><instance><size>1</size><filename>What_is_Entando_d1.png</filename><mimetype>image/png</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>What_is_Entando_d0.png</filename><mimetype>image/png</mimetype><weight>43 Kb</weight></instance></resource>
', 'What_is_Entando.png');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('54', 'Image', 'My Entando APP', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="54"><descr>My Entando APP</descr><groups mainGroup="free" /><categories /><masterfile>APP.jpg</masterfile><instance><size>3</size><filename>APP_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>8 Kb</weight></instance><instance><size>2</size><filename>APP_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>4 Kb</weight></instance><instance><size>1</size><filename>APP_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>APP_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>45 Kb</weight></instance></resource>
', 'APP.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('28', 'Image', 'Entando Logo', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="28"><descr>Entando Logo</descr><groups mainGroup="free" /><categories /><masterfile>Entando_green_logo.png</masterfile><instance><size>3</size><filename>Entando_green_logo_d3.png</filename><mimetype>image/png</mimetype><weight>2 Kb</weight></instance><instance><size>2</size><filename>Entando_green_logo_d2.png</filename><mimetype>image/png</mimetype><weight>1 Kb</weight></instance><instance><size>1</size><filename>Entando_green_logo_d1.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>Entando_green_logo_d0.png</filename><mimetype>image/png</mimetype><weight>5 Kb</weight></instance></resource>
', 'Entando_green_logo.png');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('65', 'Image', 'Entando Logo', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="65"><descr>Entando Logo</descr><groups mainGroup="free" /><categories /><masterfile>entando_square_3_w.png</masterfile><instance><size>3</size><filename>entando_square_3_w_d3.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>entando_square_3_w_d2.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>entando_square_3_w_d1.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>entando_square_3_w_d0.png</filename><mimetype>image/png</mimetype><weight>8 Kb</weight></instance></resource>
', 'entando_square_3_w.png');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('67', 'Image', 'Entando version 3.2', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="67"><descr>Entando version 3.2</descr><groups mainGroup="free" /><categories /><masterfile>iStock_000018618958XSmall.jpg</masterfile><instance><size>3</size><filename>iStock_000018618958XSmall_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>iStock_000018618958XSmall_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>iStock_000018618958XSmall_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>iStock_000018618958XSmall_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>89 Kb</weight></instance></resource>
', 'iStock_000018618958XSmall.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('68', 'Image', 'Training Entando 2013', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="68"><descr>Training Entando 2013</descr><groups mainGroup="free" /><categories /><masterfile>shutterstock_30166243.jpg</masterfile><instance><size>3</size><filename>shutterstock_30166243_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>shutterstock_30166243_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>shutterstock_30166243_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>shutterstock_30166243_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>630 Kb</weight></instance></resource>
', 'shutterstock_30166243.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('69', 'Image', 'Webinar', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="69"><descr>Webinar</descr><groups mainGroup="free" /><categories /><masterfile>future-400x300.jpg</masterfile><instance><size>3</size><filename>future-400x300_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>future-400x300_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>future-400x300_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>future-400x300_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>33 Kb</weight></instance></resource>
', 'future-400x300.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('72', 'Image', 'Events', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="72"><descr>Events</descr><groups mainGroup="free" /><categories /><masterfile>Participation.jpg</masterfile><instance><size>3</size><filename>Participation_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>Participation_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>Participation_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>Participation_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>95 Kb</weight></instance></resource>
', 'Participation.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('74', 'Image', 'Communication', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="74"><descr>Communication</descr><groups mainGroup="free" /><categories /><masterfile>comunicazione.jpg</masterfile><instance><size>3</size><filename>comunicazione_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>comunicazione_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>comunicazione_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>comunicazione_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>20 Kb</weight></instance></resource>
', 'comunicazione.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('75', 'Image', 'Satisfaction', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="75"><descr>Satisfaction</descr><groups mainGroup="free" /><categories /><masterfile>employee_satisfaction.jpg</masterfile><instance><size>3</size><filename>employee_satisfaction_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>employee_satisfaction_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>employee_satisfaction_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>employee_satisfaction_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>8 Kb</weight></instance></resource>
', 'employee_satisfaction.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('76', 'Image', 'Editing', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="76"><descr>Editing</descr><groups mainGroup="free" /><categories /><masterfile>Entando_Demo_Editing.png</masterfile><instance><size>3</size><filename>Entando_Demo_Editing_d3.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>2</size><filename>Entando_Demo_Editing_d2.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>1</size><filename>Entando_Demo_Editing_d1.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>Entando_Demo_Editing_d0.png</filename><mimetype>image/png</mimetype><weight>2 Kb</weight></instance></resource>
', 'Entando_Demo_Editing.png');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('78', 'Image', 'Board Meeting', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="78"><descr>Board Meeting</descr><groups mainGroup="free" /><categories /><masterfile>shutterstock_media31467130.jpg</masterfile><instance><size>3</size><filename>shutterstock_media31467130_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>6 Kb</weight></instance><instance><size>2</size><filename>shutterstock_media31467130_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>1</size><filename>shutterstock_media31467130_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>shutterstock_media31467130_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>259 Kb</weight></instance></resource>
', 'shutterstock_media31467130.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('80', 'Image', 'Customer', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="80"><descr>Customer</descr><groups mainGroup="free" /><categories /><masterfile>shutterstock_30997609.jpg</masterfile><instance><size>3</size><filename>shutterstock_30997609_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>4 Kb</weight></instance><instance><size>2</size><filename>shutterstock_30997609_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>1</size><filename>shutterstock_30997609_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>shutterstock_30997609_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>124 Kb</weight></instance></resource>
', 'shutterstock_30997609.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('82', 'Image', 'Project Reports', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="82"><descr>Project Reports</descr><groups mainGroup="free" /><categories /><masterfile>shutterstock_21965143.jpg</masterfile><instance><size>3</size><filename>shutterstock_21965143_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>5 Kb</weight></instance><instance><size>2</size><filename>shutterstock_21965143_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>1</size><filename>shutterstock_21965143_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>shutterstock_21965143_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>42 Kb</weight></instance></resource>
', 'shutterstock_21965143.jpg');


INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('TST2', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('TST4', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('TST3', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN49', NULL, NULL, NULL, NULL, 'intranet');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN49', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN49', NULL, NULL, '48', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN53', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN53', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN53', NULL, NULL, '52', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN40', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN40', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN40', NULL, NULL, '39', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW19', NULL, NULL, NULL, 'news', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW19', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW19', NULL, NULL, '68', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW21', NULL, NULL, NULL, 'news', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW21', NULL, NULL, NULL, NULL, 'intranet');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW21', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW21', NULL, NULL, '20', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW30', NULL, NULL, NULL, 'news', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW30', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW30', NULL, NULL, NULL, NULL, 'customers');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW30', NULL, NULL, '31', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW22', NULL, NULL, NULL, 'events', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW22', NULL, NULL, NULL, NULL, 'intranet');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW22', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW22', NULL, NULL, '10', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW22', NULL, NULL, '24', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG73', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG59', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG55', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN38', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN38', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN38', NULL, NULL, '37', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN44', NULL, NULL, NULL, NULL, 'intranet');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN44', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN44', NULL, NULL, '43', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN47', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN47', NULL, NULL, NULL, NULL, 'customers');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN47', NULL, NULL, '46', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG56', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG56', NULL, NULL, '57', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG45', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG45', NULL, NULL, '26', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG77', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG77', NULL, NULL, '76', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW70', NULL, NULL, NULL, 'events', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW70', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW70', NULL, NULL, '69', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW17', NULL, NULL, NULL, 'news', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW17', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW17', NULL, NULL, '67', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW71', NULL, NULL, NULL, 'events', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW71', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW71', NULL, NULL, '72', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW33', NULL, NULL, NULL, 'news', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW33', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW33', NULL, NULL, NULL, NULL, 'customers');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW33', NULL, NULL, '32', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW81', NULL, NULL, NULL, 'events', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW81', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW81', NULL, NULL, NULL, NULL, 'customers');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW81', NULL, NULL, '80', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW79', NULL, NULL, NULL, 'events', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW79', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW79', NULL, NULL, '78', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW83', NULL, NULL, NULL, 'news', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW83', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW83', NULL, NULL, '82', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('YTB84', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('YTB85', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG86', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW66', NULL, NULL, NULL, 'news', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW66', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW66', NULL, NULL, '65', NULL, NULL);


INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST2', 'Title', 'Contenuto 1', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST2', 'Title', 'Contenuto 1', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST4', 'Title', 'Contenuto 3', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST4', 'Title', 'Contenuto 3', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST3', 'Title', 'Contenuto 2', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST3', 'Title', 'Contenuto 2', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN49', 'Title', 'Intranet Documentation', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN49', 'Title', 'Documentazione per Intranet', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN53', 'Title', 'Entando Model', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN53', 'Title', 'Il Modello Entando', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN40', 'Title', 'Product Details', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN40', 'Title', 'Scheda Prodotto', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW19', 'Title', 'Available the new calendar of Entando Courses for 2013', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW19', 'Title', 'Contribuisci al progetto Entando: proponi la tua idea', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW19', 'Date', NULL, '2011-10-20 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW21', 'Title', 'Welcome to the Intranet Area for co-workers', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW21', 'Title', 'Benvenuti nell''area Intranet dedicata ai collaboratori', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW21', 'Date', NULL, '2013-12-04 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW30', 'Title', 'New reports for customers now available', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW30', 'Title', 'Ora sono disponibili i report per i clienti', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW30', 'Date', NULL, '2013-12-10 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW22', 'Title', 'Meeting reserved for co-workers', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW22', 'Title', 'Incontro riservato ai collaboratori', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW22', 'Date', NULL, '2013-12-11 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG73', 'Title', 'Web Form', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG73', 'Title', 'Web Form', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG59', 'Title', 'Entando', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG59', 'Title', 'Entando', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Some useful links', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Collegamenti utili', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN38', 'Title', 'Setup a Java Environment', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN38', 'Title', 'Setup a Java Environment', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN44', 'Title', 'Internal Company Procedures', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN44', 'Title', 'Procedure Aziendali', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN47', 'Title', 'Entando Customer Case Study Template', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN47', 'Title', 'Entando Customer Case Study Template', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Welcome to Entando Portal Demo', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Benvenuto in Entando Portal Demo', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG45', 'Title', 'Widget-based Homepage', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG45', 'Title', 'Widget-based Homepage', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG77', 'Title', 'Fast Content Editing', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG77', 'Title', 'Fast Content Editing', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW70', 'Title', 'Entando 3.2 Webinar', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW70', 'Title', 'Entando 3.2 Webinar', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW70', 'Date', NULL, '2013-10-01 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW17', 'Title', 'Entando 3.2 Release News', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW17', 'Title', 'Ecco le novità di Entando 3.2', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW17', 'Date', NULL, '2013-11-01 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW71', 'Title', 'This widget shows the latest events based on the user group.', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW71', 'Title', 'Questo widget mostra gli ultimi eventi in base al gruppo di appartenenza dell''utente.', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW71', 'Date', NULL, '2013-11-13 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW33', 'Title', 'New customer Services', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW33', 'Title', 'Nuovi servizi per i clienti', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW33', 'Date', NULL, '2013-12-23 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW81', 'Title', 'Meeting reserved for customer', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW81', 'Title', 'Incontro riservato ai clienti', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW81', 'Date', NULL, '2013-12-25 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW79', 'Title', 'Board Meeting', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW79', 'Title', 'Board Meeting', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW79', 'Date', NULL, '2013-12-27 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW83', 'Title', 'Now available new project reports', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW83', 'Title', 'Now available new project reports', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW83', 'Date', NULL, '2013-12-28 00:00:00', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('YTB84', 'Title', 'Entando Mobile', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('YTB84', 'Title', 'Entando Mobile', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('YTB85', 'Title', 'Entando Backoffice Demo', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('YTB85', 'Title', 'Entando Backoffice Demo', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG86', 'Title', 'APIs', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG86', 'Title', 'APIs', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW66', 'Title', 'This widget allows to access to the latest news and stay tuned!', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW66', 'Title', 'Questo widget ti consente di accedere alle ultime news', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW66', 'Date', NULL, '2013-11-25 00:00:00', NULL, NULL);


INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('NEW19', 'news');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('NEW21', 'news');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('NEW30', 'news');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('NEW22', 'events');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('NEW70', 'events');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('NEW17', 'news');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('NEW71', 'events');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('NEW33', 'news');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('NEW81', 'events');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('NEW79', 'events');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('NEW83', 'news');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('NEW66', 'news');


INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST2', 'Title', 'Contenuto 1', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST2', 'Title', 'Contenuto 1', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST4', 'Title', 'Contenuto 3', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST4', 'Title', 'Contenuto 3', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST3', 'Title', 'Contenuto 2', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST3', 'Title', 'Contenuto 2', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN49', 'Title', 'Intranet Documentation', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN49', 'Title', 'Documentazione per Intranet', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN53', 'Title', 'Entando Model', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN53', 'Title', 'Il Modello Entando', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN40', 'Title', 'Product Details', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN40', 'Title', 'Scheda Prodotto', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW19', 'Title', 'Available the new calendar of Entando Courses for 2013', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW19', 'Title', 'Contribuisci al progetto Entando: proponi la tua idea', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW19', 'Date', NULL, '2011-10-20 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW21', 'Title', 'Welcome to the Intranet Area for co-workers', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW21', 'Title', 'Benvenuti nell''area Intranet dedicata ai collaboratori', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW21', 'Date', NULL, '2013-12-04 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW30', 'Title', 'New reports for customers now available', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW30', 'Title', 'Ora sono disponibili i report per i clienti', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW30', 'Date', NULL, '2013-12-10 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW22', 'Title', 'Meeting reserved for co-workers', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW22', 'Title', 'Incontro riservato ai collaboratori', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW22', 'Date', NULL, '2013-12-11 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG73', 'Title', 'Web Form', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG73', 'Title', 'Web Form', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG59', 'Title', 'Entando', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG59', 'Title', 'Entando', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Some useful links', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Collegamenti utili', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN38', 'Title', 'Setup a Java Environment', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN38', 'Title', 'Setup a Java Environment', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN44', 'Title', 'Internal Company Procedures', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN44', 'Title', 'Procedure Aziendali', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN47', 'Title', 'Entando Customer Case Study Template', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN47', 'Title', 'Entando Customer Case Study Template', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Welcome to Entando Portal Demo', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Benvenuto in Entando Portal Demo', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW33', 'Title', 'New customer Services', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW33', 'Title', 'Nuovi servizi per i clienti', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW33', 'Date', NULL, '2013-12-23 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW81', 'Title', 'Meeting reserved for customer', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW81', 'Title', 'Incontro riservato ai clienti', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW81', 'Date', NULL, '2013-12-25 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW79', 'Title', 'Board Meeting', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW79', 'Title', 'Board Meeting', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW79', 'Date', NULL, '2013-12-27 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW83', 'Title', 'Now available new project reports', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW83', 'Title', 'Now available new project reports', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW83', 'Date', NULL, '2013-12-28 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('YTB84', 'Title', 'Entando Mobile', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('YTB84', 'Title', 'Entando Mobile', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('YTB85', 'Title', 'Entando Backoffice Demo', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('YTB85', 'Title', 'Entando Backoffice Demo', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG86', 'Title', 'APIs', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG86', 'Title', 'APIs', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG45', 'Title', 'Widget-based Homepage', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG45', 'Title', 'Widget-based Homepage', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG77', 'Title', 'Fast Content Editing', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG77', 'Title', 'Fast Content Editing', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW70', 'Title', 'Entando 3.2 Webinar', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW70', 'Title', 'Entando 3.2 Webinar', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW70', 'Date', NULL, '2013-10-01 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW17', 'Title', 'Entando 3.2 Release News', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW17', 'Title', 'Ecco le novità di Entando 3.2', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW17', 'Date', NULL, '2013-11-01 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW71', 'Title', 'This widget shows the latest events based on the user group.', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW71', 'Title', 'Questo widget mostra gli ultimi eventi in base al gruppo di appartenenza dell''utente.', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW71', 'Date', NULL, '2013-11-13 00:00:00', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW66', 'Title', 'This widget allows to access to the latest news and stay tuned!', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW66', 'Title', 'Questo widget ti consente di accedere alle ultime news', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW66', 'Date', NULL, '2013-11-25 00:00:00', NULL, NULL);


INSERT INTO jpcontentfeedback_comments (id, contentid, creationdate, usercomment, status, username) VALUES (88, 'NEW66', '2013-03-13 14:01:28', 'I like', 3, 'jeff');
INSERT INTO jpcontentfeedback_comments (id, contentid, creationdate, usercomment, status, username) VALUES (90, 'NEW17', '2013-03-13 14:02:02', 'Great!', 3, 'jeff');
INSERT INTO jpcontentfeedback_comments (id, contentid, creationdate, usercomment, status, username) VALUES (91, 'NEW71', '2013-03-13 14:09:52', 'I''ll partecipate', 3, 'jeff');


INSERT INTO jpcontentfeedback_rating (id, commentid, contentid, voters, sumvote) VALUES (87, NULL, 'NEW66', 1, 4);
INSERT INTO jpcontentfeedback_rating (id, commentid, contentid, voters, sumvote) VALUES (89, NULL, 'NEW17', 1, 4);


INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 124, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 124, 'jpmyportalplus_void', NULL, 0);
