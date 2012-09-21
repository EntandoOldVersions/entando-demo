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
-- Name: jpwebdynamicform_messageanswers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpwebdynamicform_messageanswers (
    answerid character varying(16) NOT NULL,
    messageid character varying(16) NOT NULL,
    operator character varying(20),
    senddate timestamp without time zone NOT NULL,
    text character varying NOT NULL
);


--
-- Name: jpwebdynamicform_messageanswers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpwebdynamicform_messageanswers
    ADD CONSTRAINT jpwebdynamicform_messageanswers_pkey PRIMARY KEY (answerid);


--
-- Name: jpwebdynamicform_messageanswers_messageid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpwebdynamicform_messageanswers
    ADD CONSTRAINT jpwebdynamicform_messageanswers_messageid_fkey FOREIGN KEY (messageid) REFERENCES jpwebdynamicform_messages(messageid);


--
-- PostgreSQL database dump complete
--

