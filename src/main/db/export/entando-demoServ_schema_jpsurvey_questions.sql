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
-- Name: jpsurvey_questions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpsurvey_questions (
    id integer NOT NULL,
    surveyid integer NOT NULL,
    question character varying NOT NULL,
    pos smallint NOT NULL,
    singlechoice smallint NOT NULL,
    minresponsenumber smallint,
    maxresponsenumber smallint
);


--
-- Name: jpsurvey_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpsurvey_questions
    ADD CONSTRAINT jpsurvey_questions_pkey PRIMARY KEY (id);


--
-- Name: jpsurvey_questions_surveyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_questions
    ADD CONSTRAINT jpsurvey_questions_surveyid_fkey FOREIGN KEY (surveyid) REFERENCES jpsurvey(id);


--
-- PostgreSQL database dump complete
--

