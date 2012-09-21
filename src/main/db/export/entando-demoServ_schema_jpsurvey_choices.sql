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

SET default_with_oids = false;

--
-- Name: jpsurvey_choices; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpsurvey_choices (
    id integer NOT NULL,
    questionid integer NOT NULL,
    choice character varying NOT NULL,
    pos smallint NOT NULL,
    freetext smallint NOT NULL
);


--
-- Name: jpsurvey_answeres_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpsurvey_choices
    ADD CONSTRAINT jpsurvey_answeres_pkey PRIMARY KEY (id);


--
-- Name: jpsurvey_answeres_questionid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_choices
    ADD CONSTRAINT jpsurvey_answeres_questionid_fkey FOREIGN KEY (questionid) REFERENCES jpsurvey_questions(id);


--
-- PostgreSQL database dump complete
--

