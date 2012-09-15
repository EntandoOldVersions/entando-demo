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
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('homepage', 'homepage', -1, 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Home</property>
<property key="it">Home</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('login', 'service', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Pagina di login</property>
<property key="en">Login</property>
</properties>', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('errorpage', 'service', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Error page</property>
<property key="it">Pagina di errore</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('notfound', 'service', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Page not found</property>
<property key="it">Pagina non trovata</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('search', 'service', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Results</property>
<property key="it">Risultati della Ricerca</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('newsview', 'service', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the News</property>
<property key="it">Leggi la Notizia</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('profile', 'service', 6, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Profile Edit</property>
<property key="it">Modifica Profile</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news_style1', 'news_archive', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News Archive</property>
<property key="it">News Archive</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news_style2', 'news_archive', 2, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News Archive</property>
<property key="it">News Archive</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news_style3', 'news_archive', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News Archive</property>
<property key="it">News Archive</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('configure_latest_documents', 'service', 7, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Latest Documents</property>
<property key="it">Ultimi documenti</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('events', 'homepage', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Events</property>
<property key="it">Eventi</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('contentsview', 'service', 8, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the content</property>
<property key="it">Leggi il Contenuto</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('service', 'homepage', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Pagine di Servizio</property>
<property key="en">Service</property>
</properties>', 'free', 0, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('formview', 'service', 10, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Dynamic Form</property>
<property key="it">Form Dinamico</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news_archive', 'homepage', 2, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News</property>
<property key="it">News</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('surveys_list', 'quest_suveys', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Active Questionnaires</property> 
<property key="it">Questionari Attivi</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('video_archive', 'homepage', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Video Archive</property>
<property key="it">Archivio Video</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('fastcontentedit', 'service', 9, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Frontent Content Editing</property>
<property key="it">Modifica Contenuto da Frontend</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
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
</properties>

', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('apis', 'homepage', 6, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">APIs</property>
<property key="it">APIs</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');


--
-- PostgreSQL database dump complete
--

