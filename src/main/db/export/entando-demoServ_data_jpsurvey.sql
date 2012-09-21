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
-- Data for Name: jpsurvey; Type: TABLE DATA; Schema: public; Owner: -
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
-- PostgreSQL database dump complete
--

