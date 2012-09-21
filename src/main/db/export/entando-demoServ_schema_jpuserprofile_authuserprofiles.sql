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
-- Name: jpuserprofile_authuserprofiles; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpuserprofile_authuserprofiles (
    username character varying(40) NOT NULL,
    profiletype character varying(30) NOT NULL,
    profilexml character varying NOT NULL,
    publicprofile smallint NOT NULL
);


--
-- Name: jpuserprofile_autuserprofiles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpuserprofile_authuserprofiles
    ADD CONSTRAINT jpuserprofile_autuserprofiles_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

