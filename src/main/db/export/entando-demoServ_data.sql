--
-- PostgreSQL database dump
--

-- Started on 2012-02-27 22:37:13 CET

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 1895 (class 0 OID 110391)
-- Dependencies: 147
-- Data for Name: api_oauth_consumers; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1896 (class 0 OID 110399)
-- Dependencies: 148
-- Data for Name: api_oauth_tokens; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1876 (class 0 OID 110175)
-- Dependencies: 128
-- Data for Name: apicatalog_methods; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO apicatalog_methods (resource, httpmethod, isactive, authenticationrequired, authorizationrequired) VALUES ('getServices', 'GET', 1, NULL, NULL);


--
-- TOC entry 1875 (class 0 OID 110169)
-- Dependencies: 127
-- Data for Name: apicatalog_services; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO apicatalog_services (servicekey, resource, description, parameters, tag, freeparameters, isactive, ispublic, myentando) VALUES ('ListGenericContents', 'getContents', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Generic Contents</property>
<property key="it">Contenuti generici</property>
<property key="de">Generic Contents</property>
</properties>

', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentType">CNG</property>
<property key="modelId">36</property>
</properties>

', 'jacms:contents', NULL, 1, 1, 1);
INSERT INTO apicatalog_services (servicekey, resource, description, parameters, tag, freeparameters, isactive, ispublic, myentando) VALUES ('NEW17', 'getContent', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">erogazione NEW17</property>
<property key="it">erogazione NEW17</property>
<property key="de">erogazione NEW17</property>
</properties>

', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="id">NEW17</property>
<property key="modelId">2</property>
</properties>

', 'jacms:contents', '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <freeparameters>
    <parameter name="modelId" />
  </freeparameters>
</config>

', 1, 1, 1);
INSERT INTO apicatalog_services (servicekey, resource, description, parameters, tag, freeparameters, isactive, ispublic, myentando) VALUES ('contents', 'getContents', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">List news</property>
<property key="it">Lista news</property>
<property key="de">List news</property>
</properties>

', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentType">NEW</property>
<property key="modelId">25</property>
</properties>

', 'jacms:contents', '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <freeparameters>
    <parameter name="contentType" />
    <parameter name="categories" />
  </freeparameters>
</config>

', 1, 1, 1);
INSERT INTO apicatalog_services (servicekey, resource, description, parameters, tag, freeparameters, isactive, ispublic, myentando) VALUES ('contenuto', 'getContent', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Webinar sull''integrazione della piattaforma Entando e Pentaho Business Intelligence</property>
<property key="it">Webinar sull''integrazione della piattaforma Entando e Pentaho Business Intelligence</property>
<property key="de">Webinar sull''integrazione della piattaforma Entando e Pentaho Business Intelligence</property>
</properties>

', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="id">NEW11</property>
<property key="modelId">2</property>
</properties>

', 'jacms:content', '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <freeparameters>
    <parameter name="id" />
  </freeparameters>
</config>

', 1, 1, 1);


--
-- TOC entry 1877 (class 0 OID 110178)
-- Dependencies: 129
-- Data for Name: authgroups; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authgroups (groupname, descr) VALUES ('administrators', 'Administrators');
INSERT INTO authgroups (groupname, descr) VALUES ('free', 'Free Access');
INSERT INTO authgroups (groupname, descr) VALUES ('intranet', 'Intranet users');
INSERT INTO authgroups (groupname, descr) VALUES ('customers', 'Customer users');
INSERT INTO authgroups (groupname, descr) VALUES ('registered', 'Registered Users');


--
-- TOC entry 1878 (class 0 OID 110181)
-- Dependencies: 130
-- Data for Name: authpermissions; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authpermissions (permissionname, descr) VALUES ('superuser', 'All functions');
INSERT INTO authpermissions (permissionname, descr) VALUES ('validateContents', 'Supervision of contents');
INSERT INTO authpermissions (permissionname, descr) VALUES ('manageResources', 'Operations on Resources');
INSERT INTO authpermissions (permissionname, descr) VALUES ('managePages', 'Operations on Pages');
INSERT INTO authpermissions (permissionname, descr) VALUES ('enterBackend', 'Access to Administration Area');
INSERT INTO authpermissions (permissionname, descr) VALUES ('manageCategories', 'Operations on Categories');
INSERT INTO authpermissions (permissionname, descr) VALUES ('editContents', 'Content Editing');
INSERT INTO authpermissions (permissionname, descr) VALUES ('jpuserprofile_profile_view', 'User Profile - View');
INSERT INTO authpermissions (permissionname, descr) VALUES ('jpuserprofile_profile_edit', 'User Profile - Edit');


--
-- TOC entry 1879 (class 0 OID 110184)
-- Dependencies: 131
-- Data for Name: authrolepermissions; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authrolepermissions (rolename, permissionname) VALUES ('admin', 'superuser');


--
-- TOC entry 1880 (class 0 OID 110187)
-- Dependencies: 132
-- Data for Name: authroles; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authroles (rolename, descr) VALUES ('admin', 'Administrator');


--
-- TOC entry 1881 (class 0 OID 110190)
-- Dependencies: 133
-- Data for Name: authusergroups; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authusergroups (username, groupname) VALUES ('admin', 'administrators');
INSERT INTO authusergroups (username, groupname) VALUES ('jeff', 'administrators');
INSERT INTO authusergroups (username, groupname) VALUES ('caroline', 'intranet');
INSERT INTO authusergroups (username, groupname) VALUES ('caroline', 'registered');
INSERT INTO authusergroups (username, groupname) VALUES ('jeff', 'registered');
INSERT INTO authusergroups (username, groupname) VALUES ('max', 'registered');
INSERT INTO authusergroups (username, groupname) VALUES ('max', 'customers');


--
-- TOC entry 1882 (class 0 OID 110193)
-- Dependencies: 134
-- Data for Name: authuserroles; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authuserroles (username, rolename) VALUES ('admin', 'admin');
INSERT INTO authuserroles (username, rolename) VALUES ('jeff', 'admin');


--
-- TOC entry 1883 (class 0 OID 110196)
-- Dependencies: 135
-- Data for Name: authusers; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('caroline', 'd6lFouRLMVSGYCQqiZnvMA==', '2011-09-26', '2011-12-07', '2011-09-26', 1);
INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('max', 'oqYapx7mUieGYCQqiZnvMA==', '2011-09-26', '2011-12-07', '2011-09-26', 1);
INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('jeff', 'M6a/uY1I0JDGWU/XU+dWTA==', '2011-09-26', '2011-12-07', NULL, 1);
INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('admin', 'adminadmin', '2008-10-10', '2011-12-19', NULL, 1);


--
-- TOC entry 1884 (class 0 OID 110199)
-- Dependencies: 136
-- Data for Name: authusershortcuts; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authusershortcuts (username, config) VALUES ('jeff', '<?xml version="1.0" encoding="UTF-8"?>
<shortcuts>
	<box pos="0">core.component.categories</box>
	<box pos="1">core.component.group.list</box>
	<box pos="2">core.component.user.list</box>
	<box pos="3">core.portal.pageTree</box>
	<box pos="4">core.portal.showletType</box>
	<box pos="5">core.tools.setting</box>
	<box pos="6">jacms.content.list</box>
	<box pos="7">jacms.content.new</box>
	<box pos="8">jpuserprofile.profile.list</box>
	<box pos="9">jpmyportalplus.config.shortCut</box>
</shortcuts>

');
INSERT INTO authusershortcuts (username, config) VALUES ('admin', '<?xml version="1.0" encoding="UTF-8"?>
<shortcuts>
	<box pos="0">jacms.contentType</box>
	<box pos="1">core.component.user.list</box>
	<box pos="2">core.tools.setting</box>
	<box pos="3">jacms.content.new</box>
	<box pos="4">jacms.content.list</box>
	<box pos="5">core.component.labels.list</box>
	<box pos="6">core.portal.pageTree</box>
	<box pos="7">core.component.categories</box>
	<box pos="8">core.tools.entities</box>
	<box pos="9">core.portal.showletType</box>
</shortcuts>

');


--
-- TOC entry 1885 (class 0 OID 110205)
-- Dependencies: 137
-- Data for Name: jpsurvey; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpsurvey (id, description, maingroup, startdate, enddate, active, publicpartialresult, publicresult, questionnaire, gatheruserinfo, title, restrictedaccess, checkcookie, checkipaddress, imageid, imagedescr) VALUES (2, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Testing Pool</property>
<property key="it">Sondaggio di prova</property>
</properties>

', 'intranet', '2011-11-01', '2013-12-11', 1, 1, 1, 0, 0, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Pool 1</property>
<property key="it">Sondaggio 1</property>
</properties>

', 0, 1, 0, '24', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Pool 1</property>
</properties>

');
INSERT INTO jpsurvey (id, description, maingroup, startdate, enddate, active, publicpartialresult, publicresult, questionnaire, gatheruserinfo, title, restrictedaccess, checkcookie, checkipaddress, imageid, imagedescr) VALUES (1, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Just some testing here...</property>
</properties>

', 'intranet', '2011-11-01', '2012-12-21', 1, 0, 0, 1, 0, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Questionnaire 1</property>
<property key="it">Questionario 1</property>
</properties>

', 0, 1, 0, '23', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Questionnaire</property>
</properties>

');


--
-- TOC entry 1886 (class 0 OID 110211)
-- Dependencies: 138
-- Data for Name: jpsurvey_choices; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (7, 3, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">1</property>
</properties>

', 0, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (8, 3, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">2</property>
</properties>

', 1, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (9, 3, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">3</property>
</properties>

', 2, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (10, 3, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">4</property>
</properties>

', 3, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (11, 3, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">5</property>
</properties>

', 4, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (12, 3, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">6</property>
</properties>

', 5, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (13, 3, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">7</property>
</properties>

', 6, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (14, 3, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">8</property>
</properties>

', 7, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (15, 4, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">a</property>
</properties>

', 0, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (16, 4, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">b</property>
</properties>

', 1, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (17, 4, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">c</property>
</properties>

', 2, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (18, 4, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">d</property>
</properties>

', 3, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (19, 5, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">10</property>
</properties>

', 0, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (20, 5, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">20</property>
</properties>

', 1, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (21, 5, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">30+</property>
</properties>

', 2, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (22, 6, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">aa</property>
</properties>

', 0, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (23, 6, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">bb</property>
</properties>

', 1, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (24, 6, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">cc</property>
</properties>

', 2, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (1, 1, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">a</property>
</properties>

', 0, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (2, 1, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">b</property>
</properties>

', 1, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (3, 1, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">c</property>
</properties>

', 2, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (4, 2, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">choose 1</property>
</properties>

', 0, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (5, 2, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">choose 2</property>
</properties>

', 1, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (6, 2, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">choose 3</property>
</properties>

', 2, 0);


--
-- TOC entry 1887 (class 0 OID 110217)
-- Dependencies: 139
-- Data for Name: jpsurvey_questions; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpsurvey_questions (id, surveyid, question, pos, singlechoice, minresponsenumber, maxresponsenumber) VALUES (4, 2, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Question 1</property>
<property key="it">Domanda 1</property>
</properties>

', 0, 1, 0, 0);
INSERT INTO jpsurvey_questions (id, surveyid, question, pos, singlechoice, minresponsenumber, maxresponsenumber) VALUES (5, 2, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Question two</property>
<property key="it">Seconda domanda</property>
</properties>

', 1, 1, 0, 0);
INSERT INTO jpsurvey_questions (id, surveyid, question, pos, singlechoice, minresponsenumber, maxresponsenumber) VALUES (6, 2, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Last Question</property>
<property key="it">Ultima Domanda</property>
</properties>

', 2, 1, 0, 0);
INSERT INTO jpsurvey_questions (id, surveyid, question, pos, singlechoice, minresponsenumber, maxresponsenumber) VALUES (1, 1, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Question number one</property>
<property key="it">Domanda numero 1</property>
</properties>

', 0, 1, 0, 0);
INSERT INTO jpsurvey_questions (id, surveyid, question, pos, singlechoice, minresponsenumber, maxresponsenumber) VALUES (2, 1, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Question two</property>
</properties>

', 1, 1, 0, 0);
INSERT INTO jpsurvey_questions (id, surveyid, question, pos, singlechoice, minresponsenumber, maxresponsenumber) VALUES (3, 1, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Question three, multiple choices</property>
</properties>

', 2, 0, 2, 4);


--
-- TOC entry 1888 (class 0 OID 110223)
-- Dependencies: 140
-- Data for Name: jpsurvey_responses; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpsurvey_responses (voterid, questionid, choiceid, freetext) VALUES (1, 1, 1, NULL);
INSERT INTO jpsurvey_responses (voterid, questionid, choiceid, freetext) VALUES (1, 2, 4, NULL);
INSERT INTO jpsurvey_responses (voterid, questionid, choiceid, freetext) VALUES (1, 3, 7, NULL);
INSERT INTO jpsurvey_responses (voterid, questionid, choiceid, freetext) VALUES (1, 3, 11, NULL);
INSERT INTO jpsurvey_responses (voterid, questionid, choiceid, freetext) VALUES (1, 3, 12, NULL);
INSERT INTO jpsurvey_responses (voterid, questionid, choiceid, freetext) VALUES (1, 3, 14, NULL);
INSERT INTO jpsurvey_responses (voterid, questionid, choiceid, freetext) VALUES (2, 1, 1, NULL);
INSERT INTO jpsurvey_responses (voterid, questionid, choiceid, freetext) VALUES (2, 2, 5, NULL);
INSERT INTO jpsurvey_responses (voterid, questionid, choiceid, freetext) VALUES (2, 3, 9, NULL);
INSERT INTO jpsurvey_responses (voterid, questionid, choiceid, freetext) VALUES (2, 3, 13, NULL);


--
-- TOC entry 1889 (class 0 OID 110226)
-- Dependencies: 141
-- Data for Name: jpsurvey_voters; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpsurvey_voters (id, age, country, sex, votedate, surveyid, username, ipaddress) VALUES (1, 0, NULL, NULL, '2011-11-17', 1, 'admin', '127.0.0.1');
INSERT INTO jpsurvey_voters (id, age, country, sex, votedate, surveyid, username, ipaddress) VALUES (2, 0, NULL, NULL, '2011-11-18', 1, 'guest', '192.168.1.245');


--
-- TOC entry 1890 (class 0 OID 110229)
-- Dependencies: 142
-- Data for Name: jpuserprofile_authuserprofiles; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpuserprofile_authuserprofiles (username, profiletype, profilexml, publicprofile) VALUES ('caroline', 'PFL', '<?xml version="1.0" encoding="UTF-8"?>
<profile id="caroline" typecode="PFL" typedescr="Profilo utente/cittadino tipo"><descr /><groups /><categories /><attributes><attribute name="Nome" attributetype="Monotext"><monotext>Caroline</monotext></attribute><attribute name="Cognome" attributetype="Monotext"><monotext>F.</monotext></attribute><attribute name="email" attributetype="Monotext"><monotext>caroline@entando.com</monotext></attribute><attribute name="azienda" attributetype="Monotext"><monotext>intranet</monotext></attribute></attributes></profile>
', 0);
INSERT INTO jpuserprofile_authuserprofiles (username, profiletype, profilexml, publicprofile) VALUES ('max', 'PFL', '<?xml version="1.0" encoding="UTF-8"?>
<profile id="max" typecode="PFL" typedescr="Profilo utente/cittadino tipo"><descr /><groups /><categories /><attributes><attribute name="Nome" attributetype="Monotext"><monotext>Max</monotext></attribute><attribute name="Cognome" attributetype="Monotext"><monotext>M.</monotext></attribute><attribute name="email" attributetype="Monotext"><monotext>max@entando.com</monotext></attribute><attribute name="azienda" attributetype="Monotext"><monotext>customer</monotext></attribute></attributes></profile>
', 0);
INSERT INTO jpuserprofile_authuserprofiles (username, profiletype, profilexml, publicprofile) VALUES ('admin', 'PFL', '<?xml version="1.0" encoding="UTF-8"?>
<profile id="admin" typecode="PFL" typedescr="Profilo utente/cittadino tipo"><descr /><groups /><categories /><attributes><attribute name="Nome" attributetype="Monotext"><monotext>Admin</monotext></attribute><attribute name="Cognome" attributetype="Monotext"><monotext>C.</monotext></attribute><attribute name="email" attributetype="Monotext"><monotext>admin@entando.com</monotext></attribute><attribute name="azienda" attributetype="Monotext"><monotext>admin</monotext></attribute></attributes></profile>
', 0);
INSERT INTO jpuserprofile_authuserprofiles (username, profiletype, profilexml, publicprofile) VALUES ('jeff', 'PFL', '<?xml version="1.0" encoding="UTF-8"?>
<profile id="jeff" typecode="PFL" typedescr="Profilo utente/cittadino tipo"><descr /><groups /><categories /><attributes><attribute name="Nome" attributetype="Monotext"><monotext>Jeff</monotext></attribute><attribute name="Cognome" attributetype="Monotext"><monotext>S.</monotext></attribute><attribute name="email" attributetype="Monotext"><monotext>jeff@entando.com</monotext></attribute><attribute name="azienda" attributetype="Monotext"><monotext>admin</monotext></attribute></attributes></profile>
', 0);


--
-- TOC entry 1891 (class 0 OID 110235)
-- Dependencies: 143
-- Data for Name: jpuserprofile_profilesearch; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('caroline', 'Nome', 'Caroline', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('caroline', 'Cognome', 'F.', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('caroline', 'email', 'caroline@entando.com', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('max', 'Nome', 'Max', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('max', 'Cognome', 'M.', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('max', 'email', 'max@entando.com', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('admin', 'Nome', 'Admin', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('admin', 'Cognome', 'C.', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('admin', 'email', 'admin@entando.com', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('jeff', 'Nome', 'Jeff', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('jeff', 'Cognome', 'S.', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('jeff', 'email', 'jeff@entando.com', NULL, NULL, NULL);


--
-- TOC entry 1892 (class 0 OID 110238)
-- Dependencies: 144
-- Data for Name: jpwebdynamicform_messageanswers; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1893 (class 0 OID 110244)
-- Dependencies: 145
-- Data for Name: jpwebdynamicform_messages; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1894 (class 0 OID 110250)
-- Dependencies: 146
-- Data for Name: jpwebdynamicform_messagesearch; Type: TABLE DATA; Schema: public; Owner: agile
--



-- Completed on 2012-02-27 22:37:13 CET

--
-- PostgreSQL database dump complete
--

