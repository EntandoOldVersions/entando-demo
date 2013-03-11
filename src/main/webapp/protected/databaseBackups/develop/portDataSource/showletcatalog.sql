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
</properties>', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">1</property>
<property key="linkDescr_it">Configura</property>
<property key="pageLink">news_style1</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="linkDescr_en">Configure</property>
<property key="contentType">NEW</property>
<property key="modelId">27</property>
</properties>', 0, 'free');
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
</properties>', '<config>
	<parameter name="contentId">Content ID</parameter>
	<parameter name="modelId">Content Model ID</parameter>
	<parameter name="usedContentRating">Enable content rating (true|false)</parameter>
	<parameter name="usedComment">Enable user comments (true|false)</parameter>
	<parameter name="usedCommentWithRating">Enable rating on comments (true|false)</parameter>
	<parameter name="commentValidation">Enable administrator moderation of comments (true|false)</parameter> 
<action name="viewerContentFeedbackConfig"/>
</config>', 'jpcontentfeedback', NULL, NULL, 1, NULL);
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
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpfrontshortcut_navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Vertical Menu</property>
<property key="it">Navigazione - Menù Verticale</property>
</properties>', '<config>
<parameter name="navSpec">Rules for the Page List auto-generation</parameter>
<action name="navigatorConfig" />
</config>', 'jpfrontshortcut', NULL, NULL, 1, NULL);
