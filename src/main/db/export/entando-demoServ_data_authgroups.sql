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
-- Data for Name: authgroups; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO authgroups (groupname, descr) VALUES ('administrators', 'Administrators');
INSERT INTO authgroups (groupname, descr) VALUES ('free', 'Free Access');
INSERT INTO authgroups (groupname, descr) VALUES ('intranet', 'Intranet users');
INSERT INTO authgroups (groupname, descr) VALUES ('customers', 'Customer users');
INSERT INTO authgroups (groupname, descr) VALUES ('registered', 'Registered Users');


--
-- PostgreSQL database dump complete
--

