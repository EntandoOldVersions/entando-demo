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
-- Name: jpsurvey_voters; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpsurvey_voters (
    id integer NOT NULL,
    age smallint,
    country character varying(2),
    sex "char",
    votedate date NOT NULL,
    surveyid integer NOT NULL,
    username character varying(30) NOT NULL,
    ipaddress character varying(15) NOT NULL
);


--
-- Name: jpsurvey_voters_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpsurvey_voters
    ADD CONSTRAINT jpsurvey_voters_pkey PRIMARY KEY (id);


--
-- Name: surveyid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_voters
    ADD CONSTRAINT surveyid FOREIGN KEY (surveyid) REFERENCES jpsurvey(id);


--
-- PostgreSQL database dump complete
--

