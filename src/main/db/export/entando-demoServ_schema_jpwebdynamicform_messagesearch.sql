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
-- Name: jpwebdynamicform_messagesearch; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpwebdynamicform_messagesearch (
    messageid character varying(16) NOT NULL,
    attrname character varying(30) NOT NULL,
    textvalue character varying(255),
    datevalue date,
    numvalue integer,
    langcode character varying(2)
);


--
-- Name: jpwebdynamicform_messagesearch_messageid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpwebdynamicform_messagesearch
    ADD CONSTRAINT jpwebdynamicform_messagesearch_messageid_fkey FOREIGN KEY (messageid) REFERENCES jpwebdynamicform_messages(messageid);


--
-- PostgreSQL database dump complete
--

