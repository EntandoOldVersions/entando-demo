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
-- Name: jpuserprofile_profilesearch; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpuserprofile_profilesearch (
    username character varying(40) NOT NULL,
    attrname character varying(30) NOT NULL,
    textvalue character varying(255),
    datevalue date,
    numvalue integer,
    langcode character varying(2)
);


--
-- Name: jpuserprofile_profilesearch_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpuserprofile_profilesearch
    ADD CONSTRAINT jpuserprofile_profilesearch_username_fkey FOREIGN KEY (username) REFERENCES jpuserprofile_authuserprofiles(username);


--
-- PostgreSQL database dump complete
--

