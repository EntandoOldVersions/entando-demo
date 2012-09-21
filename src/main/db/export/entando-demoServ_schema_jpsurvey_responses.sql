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
-- Name: jpsurvey_responses; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpsurvey_responses (
    voterid integer NOT NULL,
    questionid integer NOT NULL,
    choiceid integer NOT NULL,
    freetext character varying(30)
);


--
-- Name: choiceid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_responses
    ADD CONSTRAINT choiceid FOREIGN KEY (choiceid) REFERENCES jpsurvey_choices(id);


--
-- Name: jpsurvey_responses_voterid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_responses
    ADD CONSTRAINT jpsurvey_responses_voterid_fkey FOREIGN KEY (voterid) REFERENCES jpsurvey_voters(id);


--
-- Name: questionid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_responses
    ADD CONSTRAINT questionid FOREIGN KEY (questionid) REFERENCES jpsurvey_questions(id);


--
-- PostgreSQL database dump complete
--

