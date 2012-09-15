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
-- Data for Name: authusergroups; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO authusergroups (username, groupname) VALUES ('admin', 'administrators');
INSERT INTO authusergroups (username, groupname) VALUES ('jeff', 'administrators');
INSERT INTO authusergroups (username, groupname) VALUES ('caroline', 'intranet');
INSERT INTO authusergroups (username, groupname) VALUES ('caroline', 'registered');
INSERT INTO authusergroups (username, groupname) VALUES ('jeff', 'registered');
INSERT INTO authusergroups (username, groupname) VALUES ('max', 'registered');
INSERT INTO authusergroups (username, groupname) VALUES ('max', 'customers');


--
-- PostgreSQL database dump complete
--

