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
-- Data for Name: authusers; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('caroline', 'd6lFouRLMVSGYCQqiZnvMA==', '2011-09-26', '2011-12-07', '2011-09-26', 1);
INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('max', 'oqYapx7mUieGYCQqiZnvMA==', '2011-09-26', '2011-12-07', '2011-09-26', 1);
INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('admin', 'adminadmin', '2008-10-10', '2011-12-19', NULL, 1);
INSERT INTO authusers (username, passwd, registrationdate, lastaccess, lastpasswordchange, active) VALUES ('jeff', 'M6a/uY1I0JDGWU/XU+dWTA==', '2011-09-26', '2012-09-21', NULL, 1);


--
-- PostgreSQL database dump complete
--

