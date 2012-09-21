--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = true;

--
-- Name: jpwebdynamicform_messages; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpwebdynamicform_messages (
    messageid character varying(16) NOT NULL,
    username character varying(40),
    langcode character varying(2) NOT NULL,
    messagetype character varying(30) NOT NULL,
    creationdate timestamp without time zone NOT NULL,
    messagexml character varying NOT NULL
);


--
-- Name: jpwebdynamicform_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpwebdynamicform_messages
    ADD CONSTRAINT jpwebdynamicform_messages_pkey PRIMARY KEY (messageid);


--
-- PostgreSQL database dump complete
--

