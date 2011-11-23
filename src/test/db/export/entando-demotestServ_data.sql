--
-- PostgreSQL database dump
--

-- Started on 2011-11-20 17:08:35 CET

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 1842 (class 0 OID 3366201)
-- Dependencies: 1509
-- Data for Name: apicatalog_services; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1843 (class 0 OID 3366207)
-- Dependencies: 1510
-- Data for Name: apicatalog_status; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1844 (class 0 OID 3366210)
-- Dependencies: 1511
-- Data for Name: authgroups; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authgroups (groupname, descr) VALUES ('administrators', 'Amministratori');
INSERT INTO authgroups (groupname, descr) VALUES ('coach', 'Coach');
INSERT INTO authgroups (groupname, descr) VALUES ('customers', 'Customers');
INSERT INTO authgroups (groupname, descr) VALUES ('free', 'Accesso Libero');
INSERT INTO authgroups (groupname, descr) VALUES ('helpdesk', 'Helpdesk');
INSERT INTO authgroups (groupname, descr) VALUES ('management', 'Management');


--
-- TOC entry 1845 (class 0 OID 3366213)
-- Dependencies: 1512
-- Data for Name: authpermissions; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authpermissions (permissionname, descr) VALUES ('managePages', 'Operazioni su Pagine');
INSERT INTO authpermissions (permissionname, descr) VALUES ('enterBackend', 'Accesso all''Area di Amministrazione');
INSERT INTO authpermissions (permissionname, descr) VALUES ('manageResources', 'Operazioni su Risorse');
INSERT INTO authpermissions (permissionname, descr) VALUES ('editContents', 'Redazione di Contenuti');
INSERT INTO authpermissions (permissionname, descr) VALUES ('validateContents', 'Supervisione di Contenuti');
INSERT INTO authpermissions (permissionname, descr) VALUES ('superuser', 'Tutte le funzioni');
INSERT INTO authpermissions (permissionname, descr) VALUES ('manageCategories', 'Operazioni su Categorie');
INSERT INTO authpermissions (permissionname, descr) VALUES ('jpcontentfeedback_comment_edit', 'Comment Editing');
INSERT INTO authpermissions (permissionname, descr) VALUES ('jpcontentfeedback_moderate', 'Comment Moderate');
INSERT INTO authpermissions (permissionname, descr) VALUES ('jpcontentfeedback_rating_edit', 'Rating Editing');


--
-- TOC entry 1846 (class 0 OID 3366216)
-- Dependencies: 1513
-- Data for Name: authrolepermissions; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authrolepermissions (rolename, permissionname) VALUES ('admin', 'superuser');
INSERT INTO authrolepermissions (rolename, permissionname) VALUES ('pageManager', 'enterBackend');
INSERT INTO authrolepermissions (rolename, permissionname) VALUES ('editor', 'enterBackend');
INSERT INTO authrolepermissions (rolename, permissionname) VALUES ('supervisor', 'enterBackend');
INSERT INTO authrolepermissions (rolename, permissionname) VALUES ('pageManager', 'managePages');
INSERT INTO authrolepermissions (rolename, permissionname) VALUES ('supervisor', 'editContents');
INSERT INTO authrolepermissions (rolename, permissionname) VALUES ('editor', 'editContents');
INSERT INTO authrolepermissions (rolename, permissionname) VALUES ('supervisor', 'validateContents');
INSERT INTO authrolepermissions (rolename, permissionname) VALUES ('editor', 'manageResources');


--
-- TOC entry 1847 (class 0 OID 3366219)
-- Dependencies: 1514
-- Data for Name: authroles; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authroles (rolename, descr) VALUES ('admin', 'Tutte le funzioni');
INSERT INTO authroles (rolename, descr) VALUES ('editor', 'Gestore di Contenuti e Risorse');
INSERT INTO authroles (rolename, descr) VALUES ('supervisor', 'Supervisore di Contenuti');
INSERT INTO authroles (rolename, descr) VALUES ('pageManager', 'Gestore di Pagine');


--
-- TOC entry 1848 (class 0 OID 3366222)
-- Dependencies: 1515
-- Data for Name: authusergroups; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authusergroups (username, groupname) VALUES ('pageManagerCoach', 'coach');
INSERT INTO authusergroups (username, groupname) VALUES ('pageManagerCustomers', 'customers');
INSERT INTO authusergroups (username, groupname) VALUES ('supervisorCoach', 'coach');
INSERT INTO authusergroups (username, groupname) VALUES ('supervisorCustomers', 'customers');
INSERT INTO authusergroups (username, groupname) VALUES ('editorCoach', 'coach');
INSERT INTO authusergroups (username, groupname) VALUES ('editorCustomers', 'customers');
INSERT INTO authusergroups (username, groupname) VALUES ('supervisorCoach', 'customers');
INSERT INTO authusergroups (username, groupname) VALUES ('editorCoach', 'customers');
INSERT INTO authusergroups (username, groupname) VALUES ('mainEditor', 'administrators');
INSERT INTO authusergroups (username, groupname) VALUES ('pageManagerCoach', 'customers');
INSERT INTO authusergroups (username, groupname) VALUES ('admin', 'administrators');


--
-- TOC entry 1849 (class 0 OID 3366225)
-- Dependencies: 1516
-- Data for Name: authuserroles; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authuserroles (username, rolename) VALUES ('admin', 'admin');
INSERT INTO authuserroles (username, rolename) VALUES ('editorCoach', 'editor');
INSERT INTO authuserroles (username, rolename) VALUES ('editorCustomers', 'editor');
INSERT INTO authuserroles (username, rolename) VALUES ('mainEditor', 'editor');
INSERT INTO authuserroles (username, rolename) VALUES ('supervisorCoach', 'supervisor');
INSERT INTO authuserroles (username, rolename) VALUES ('supervisorCustomers', 'supervisor');
INSERT INTO authuserroles (username, rolename) VALUES ('pageManagerCoach', 'pageManager');
INSERT INTO authuserroles (username, rolename) VALUES ('pageManagerCustomers', 'pageManager');


--
-- TOC entry 1850 (class 0 OID 3366228)
-- Dependencies: 1517
-- Data for Name: authusers; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('supervisorCoach', 'supervisorCoach', '2008-09-25', '2009-01-30', NULL, 1);
INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('mainEditor', 'mainEditor', '2008-09-25', '2009-01-30', NULL, 1);
INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('pageManagerCoach', 'pageManagerCoach', '2008-09-25', '2009-01-30', NULL, 1);
INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('supervisorCustomers', 'supervisorCustomers', '2008-09-25', '2009-01-30', NULL, 1);
INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('pageManagerCustomers', 'pageManagerCustomers', '2008-09-25', '2009-01-30', NULL, 1);
INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('editorCustomers', 'editorCustomers', '2008-09-25', '2009-07-02', NULL, 1);
INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('editorCoach', 'editorCoach', '2008-09-25', '2009-07-02', NULL, 1);
INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('admin', 'admin', '2008-09-25', '2009-12-16', NULL, 1);


--
-- TOC entry 1851 (class 0 OID 3366231)
-- Dependencies: 1518
-- Data for Name: authusershortcuts; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO authusershortcuts (username, config) VALUES ('admin', '<shortcuts>
	<box pos="0"></box>
	<box pos="1">core.component.user.list</box>
	<box pos="2">jacms.content.new</box>
	<box pos="3">jacms.content.list</box>
	<box pos="4">core.portal.pageTree</box>
	<box pos="5">core.portal.showletType</box>
	<box pos="6">core.tools.setting</box>
	<box pos="7">core.tools.entities</box>
</shortcuts>');


--
-- TOC entry 1852 (class 0 OID 3366237)
-- Dependencies: 1519
-- Data for Name: jpsurvey; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpsurvey (id, description, maingroup, startdate, enddate, active, publicpartialresult, publicresult, questionnaire, gatheruserinfo, title, restrictedaccess, checkcookie, checkipaddress, imageid, imagedescr) VALUES (1, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Description-1</property>
<property key="it">Descrizione-1</property>
</properties>', 'ignored', '2009-03-16', NULL, 1, 0, 1, 1, 1, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Title-1</property>
<property key="it">Titolo-1</property>
</properties>', 0, 0, 0, 'IMG001', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Barrali by night</property>
<property key="it">Barrali di notte</property>
</properties>');
INSERT INTO jpsurvey (id, description, maingroup, startdate, enddate, active, publicpartialresult, publicresult, questionnaire, gatheruserinfo, title, restrictedaccess, checkcookie, checkipaddress, imageid, imagedescr) VALUES (2, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
	<property key="it">Descrizione-2</property>
	<property key="en">Description-2</property>
</properties>', 'ignoredToo', '2008-02-06', NULL, 0, 0, 0, 0, 0, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
	<property key="it">Titolo-2</property>
	<property key="en">Title-2</property>
</properties>', 1, 0, 0, NULL, NULL);


--
-- TOC entry 1853 (class 0 OID 3366243)
-- Dependencies: 1520
-- Data for Name: jpsurvey_choices; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (1, 1, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
	<property key="it">Opzione 1-1-1</property>
	<property key="en">Option 1-1-1</property>
</properties>', 1, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (2, 1, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
	<property key="it">Opzione 1-1-2</property>
	<property key="en">Option 1-1-2</property>
</properties>', 3, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (3, 1, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
	<property key="it">Opzione 1-1-3</property>
	<property key="en">Option 1-1-3</property>
</properties>', 2, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (4, 2, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
	<property key="it">Opzione 1-2-2</property>
	<property key="en">Option 1-2-2</property>
</properties>', 2, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (5, 2, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
	<property key="it">Opzione 1-2-1</property>
	<property key="en">Option 1-2-1</property>
</properties>', 1, 0);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (6, 2, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
	<property key="it">Opzione TESTO LIBERO</property>
	<property key="en">Option FREE TEXT</property>
</properties>', 4, 1);
INSERT INTO jpsurvey_choices (id, questionid, choice, pos, freetext) VALUES (7, 2, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
	<property key="it">Opzione 1-2-3</property>
	<property key="en">Option 1-2-3</property>
</properties>', 3, 0);


--
-- TOC entry 1854 (class 0 OID 3366249)
-- Dependencies: 1521
-- Data for Name: jpsurvey_questions; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpsurvey_questions (id, surveyid, question, pos, singlechoice, minresponsenumber, maxresponsenumber) VALUES (1, 1, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
	<property key="it">Domanda 1-1</property>
	<property key="en">Question 1-1</property>
</properties>', 2, 1, 1, 1);
INSERT INTO jpsurvey_questions (id, surveyid, question, pos, singlechoice, minresponsenumber, maxresponsenumber) VALUES (2, 1, '<?xml version="1.0" encoding="UTF-8"?>
<properties>
	<property key="it">Domanda 1-2</property>
	<property key="en">Question 1-2</property>
</properties>', 1, 0, 1, 2);


--
-- TOC entry 1855 (class 0 OID 3366255)
-- Dependencies: 1522
-- Data for Name: jpsurvey_responses; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpsurvey_responses (voterid, questionid, choiceid, freetext) VALUES (1, 2, 6, 'lorem ipsum dolor');


--
-- TOC entry 1856 (class 0 OID 3366258)
-- Dependencies: 1523
-- Data for Name: jpsurvey_voters; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpsurvey_voters (id, age, country, sex, votedate, surveyid, username, ipaddress) VALUES (1, 99, 'ir', 'M', '2008-04-07', 2, 'guest', '192.168.10.1');


--
-- TOC entry 1857 (class 0 OID 3366261)
-- Dependencies: 1524
-- Data for Name: jpuserprofile_authuserprofiles; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpuserprofile_authuserprofiles (username, profiletype, profilexml, publicprofile) VALUES ('editorCustomers', 'PFL', '<?xml version="1.0" encoding="UTF-8"?>
<profile id="editorCustomers" typecode="PFL" typedescr="Profilo utente/cittadino tipo"><descr /><groups /><categories />
	<attributes>
		<attribute name="Name" attributetype="Monotext"><monotext>Sean</monotext></attribute>
		<attribute name="Surname" attributetype="Monotext"><monotext>Red</monotext></attribute>
		<attribute name="birthdate" attributetype="Date"><date>19520521</date></attribute>
		<attribute name="email" attributetype="Monotext"><monotext>sean.red@mailinator.com</monotext></attribute>
		<attribute name="language" attributetype="Monotext"><monotext>it</monotext></attribute>
		<attribute name="boolean1" attributetype="Boolean"><boolean>false</boolean></attribute>
		<attribute name="boolean2" attributetype="Boolean"><boolean>false</boolean></attribute>
	</attributes>
</profile>', 0);
INSERT INTO jpuserprofile_authuserprofiles (username, profiletype, profilexml, publicprofile) VALUES ('mainEditor', 'PFL', '<?xml version="1.0" encoding="UTF-8"?>
<profile id="editorCustomers" typecode="PFL" typedescr="Profilo utente/cittadino tipo"><descr /><groups /><categories />
	<attributes>
		<attribute name="Name" attributetype="Monotext"><monotext>Amanda</monotext></attribute>
		<attribute name="Surname" attributetype="Monotext"><monotext>Chedwase</monotext></attribute>
		<attribute name="birthdate" attributetype="Date"><date>19471124</date></attribute>
		<attribute name="email" attributetype="Monotext"><monotext>amanda.chedwase@mailinator.com</monotext></attribute>
		<attribute name="language" attributetype="Monotext"><monotext>it</monotext></attribute>
		<attribute name="boolean1" attributetype="Boolean"><boolean>false</boolean></attribute>
		<attribute name="boolean2" attributetype="Boolean"><boolean>false</boolean></attribute>
	</attributes>
</profile>', 0);
INSERT INTO jpuserprofile_authuserprofiles (username, profiletype, profilexml, publicprofile) VALUES ('pageManagerCoach', 'PFL', '<?xml version="1.0" encoding="UTF-8"?>
<profile id="editorCustomers" typecode="PFL" typedescr="Profilo utente/cittadino tipo"><descr /><groups /><categories />
	<attributes>
		<attribute name="Name" attributetype="Monotext"><monotext>Raimond</monotext></attribute>
		<attribute name="Surname" attributetype="Monotext"><monotext>Stevenson</monotext></attribute>
		<attribute name="birthdate" attributetype="Date"><date>20000904</date></attribute>
		<attribute name="email" attributetype="Monotext"><monotext>raimond.stevenson@mailinator.com</monotext></attribute>
		<attribute name="language" attributetype="Monotext"><monotext>it</monotext></attribute>
		<attribute name="boolean1" attributetype="Boolean"><boolean>false</boolean></attribute>
		<attribute name="boolean2" attributetype="Boolean"><boolean>false</boolean></attribute>
	</attributes>
</profile>', 0);
INSERT INTO jpuserprofile_authuserprofiles (username, profiletype, profilexml, publicprofile) VALUES ('editorCoach', 'PFL', '<?xml version="1.0" encoding="UTF-8"?>
<profile id="editorCoach" typecode="PFL" typedescr="Profilo utente/cittadino tipo"><descr /><groups /><categories />
	<attributes>
		<attribute name="Name" attributetype="Monotext"><monotext>Rick</monotext></attribute>
		<attribute name="Surname" attributetype="Monotext"><monotext>Bobonsky</monotext></attribute>
		<attribute name="email" attributetype="Monotext"><monotext>rick.bobonsky@mailinator.com</monotext></attribute>
		<attribute name="birthdate" attributetype="Date"><date>19450301</date></attribute>
		<attribute name="language" attributetype="Monotext"><monotext>it</monotext></attribute>
		<attribute name="boolean1" attributetype="Boolean"><boolean>false</boolean></attribute>
		<attribute name="boolean2" attributetype="Boolean"><boolean>false</boolean></attribute>
	</attributes>
</profile>', 0);


--
-- TOC entry 1858 (class 0 OID 3366267)
-- Dependencies: 1525
-- Data for Name: jpuserprofile_profilesearch; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('editorCoach', 'Name', 'Rick', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('editorCoach', 'Surname', 'Bobonsky', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('editorCoach', 'email', 'rick.bobonsky@mailinator.com', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('editorCoach', 'birthdate', NULL, '1945-03-01', NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('editorCoach', 'boolean1', 'false', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('editorCoach', 'boolean2', 'false', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('editorCustomers', 'Name', 'Sean', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('editorCustomers', 'Surname', 'Red', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('editorCustomers', 'email', 'sean.red@mailinator.com', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('editorCustomers', 'birthdate', NULL, '1952-05-21', NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('editorCustomers', 'boolean1', 'false', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('editorCustomers', 'boolean2', 'false', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('mainEditor', 'Name', 'Amanda', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('mainEditor', 'Surname', 'Chedwase', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('mainEditor', 'email', 'amanda.chedwase@mailinator.com', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('mainEditor', 'birthdate', NULL, '1947-11-24', NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('mainEditor', 'boolean1', 'false', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('mainEditor', 'boolean2', 'false', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('pageManagerCoach', 'Name', 'Raimond', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('pageManagerCoach', 'Surname', 'Stevenson', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('pageManagerCoach', 'email', 'raimond.stevenson@mailinator.com', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('pageManagerCoach', 'birthdate', NULL, '2000-09-04', NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('pageManagerCoach', 'boolean1', 'false', NULL, NULL, NULL);
INSERT INTO jpuserprofile_profilesearch (username, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('pageManagerCoach', 'boolean2', 'false', NULL, NULL, NULL);


--
-- TOC entry 1859 (class 0 OID 3366270)
-- Dependencies: 1526
-- Data for Name: jpwebdynamicform_messageanswers; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1860 (class 0 OID 3366276)
-- Dependencies: 1527
-- Data for Name: jpwebdynamicform_messages; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1861 (class 0 OID 3366282)
-- Dependencies: 1528
-- Data for Name: jpwebdynamicform_messagesearch; Type: TABLE DATA; Schema: public; Owner: agile
--



-- Completed on 2011-11-20 17:08:35 CET

--
-- PostgreSQL database dump complete
--

