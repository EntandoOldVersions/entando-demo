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
-- Data for Name: apicatalog_methods; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO apicatalog_methods (resource, httpmethod, isactive, authenticationrequired, authorizationrequired, ishidden) VALUES ('getServices', 'GET', 1, NULL, NULL, 0);


--
-- PostgreSQL database dump complete
--

