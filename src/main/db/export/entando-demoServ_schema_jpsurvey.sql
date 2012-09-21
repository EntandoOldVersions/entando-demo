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
-- Name: jpsurvey; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpsurvey (
    id integer NOT NULL,
    description character varying NOT NULL,
    maingroup character varying(20) NOT NULL,
    startdate date NOT NULL,
    enddate date,
    active smallint NOT NULL,
    publicpartialresult smallint NOT NULL,
    publicresult smallint NOT NULL,
    questionnaire smallint NOT NULL,
    gatheruserinfo smallint NOT NULL,
    title character varying NOT NULL,
    restrictedaccess smallint NOT NULL,
    checkcookie smallint NOT NULL,
    checkipaddress smallint NOT NULL,
    imageid character varying(16),
    imagedescr character varying
);


--
-- Name: jpsurvey_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpsurvey
    ADD CONSTRAINT jpsurvey_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

