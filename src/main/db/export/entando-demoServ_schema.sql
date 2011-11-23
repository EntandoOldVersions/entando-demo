--
-- PostgreSQL database dump
--

-- Started on 2011-11-20 17:08:46 CET

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 337 (class 2612 OID 16386)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: -
--

CREATE PROCEDURAL LANGUAGE plpgsql;


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 1509 (class 1259 OID 3365461)
-- Dependencies: 6
-- Name: apicatalog_services; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE apicatalog_services (
    servicekey character varying(100) NOT NULL,
    parentapi character varying(100) NOT NULL,
    description character varying NOT NULL,
    parameters character varying,
    tag character varying(100),
    freeparameters character varying,
    isactive smallint NOT NULL,
    ispublic smallint NOT NULL,
    myentando smallint NOT NULL
);


--
-- TOC entry 1510 (class 1259 OID 3365467)
-- Dependencies: 6
-- Name: apicatalog_status; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE apicatalog_status (
    method character varying(100) NOT NULL,
    isactive smallint NOT NULL
);


SET default_with_oids = true;

--
-- TOC entry 1511 (class 1259 OID 3365470)
-- Dependencies: 6
-- Name: authgroups; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authgroups (
    groupname character varying(20) NOT NULL,
    descr character varying(50)
);


--
-- TOC entry 1512 (class 1259 OID 3365473)
-- Dependencies: 6
-- Name: authpermissions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authpermissions (
    permissionname character varying(30) NOT NULL,
    descr character varying(50)
);


--
-- TOC entry 1513 (class 1259 OID 3365476)
-- Dependencies: 6
-- Name: authrolepermissions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authrolepermissions (
    rolename character varying(30) NOT NULL,
    permissionname character varying(30) NOT NULL
);


--
-- TOC entry 1514 (class 1259 OID 3365479)
-- Dependencies: 6
-- Name: authroles; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authroles (
    rolename character varying(20) NOT NULL,
    descr character varying(50)
);


--
-- TOC entry 1515 (class 1259 OID 3365482)
-- Dependencies: 6
-- Name: authusergroups; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authusergroups (
    username character varying(40) NOT NULL,
    groupname character varying(20) NOT NULL
);


SET default_with_oids = false;

--
-- TOC entry 1516 (class 1259 OID 3365485)
-- Dependencies: 6
-- Name: authuserroles; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authuserroles (
    username character varying(40) NOT NULL,
    rolename character varying(20) NOT NULL
);


SET default_with_oids = true;

--
-- TOC entry 1517 (class 1259 OID 3365488)
-- Dependencies: 6
-- Name: authusers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authusers (
    username character varying(40) NOT NULL,
    passwd character varying(40),
    registrationdate date NOT NULL,
    lastaccess date,
    lastpasswordchange date,
    active smallint
);


--
-- TOC entry 1518 (class 1259 OID 3365491)
-- Dependencies: 6
-- Name: authusershortcuts; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authusershortcuts (
    username character varying(40) NOT NULL,
    config character varying NOT NULL
);


SET default_with_oids = false;

--
-- TOC entry 1519 (class 1259 OID 3365497)
-- Dependencies: 6
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
-- TOC entry 1520 (class 1259 OID 3365503)
-- Dependencies: 6
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
-- TOC entry 1521 (class 1259 OID 3365509)
-- Dependencies: 6
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


SET default_with_oids = true;

--
-- TOC entry 1522 (class 1259 OID 3365515)
-- Dependencies: 6
-- Name: jpsurvey_responses; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpsurvey_responses (
    voterid integer NOT NULL,
    questionid integer NOT NULL,
    choiceid integer NOT NULL,
    freetext character varying(30)
);


SET default_with_oids = false;

--
-- TOC entry 1523 (class 1259 OID 3365518)
-- Dependencies: 6
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
-- TOC entry 1524 (class 1259 OID 3365521)
-- Dependencies: 6
-- Name: jpuserprofile_authuserprofiles; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpuserprofile_authuserprofiles (
    username character varying(40) NOT NULL,
    profiletype character varying(30) NOT NULL,
    profilexml character varying NOT NULL,
    publicprofile smallint NOT NULL
);


--
-- TOC entry 1525 (class 1259 OID 3365527)
-- Dependencies: 6
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


SET default_with_oids = true;

--
-- TOC entry 1526 (class 1259 OID 3365530)
-- Dependencies: 6
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
-- TOC entry 1527 (class 1259 OID 3365536)
-- Dependencies: 6
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
-- TOC entry 1528 (class 1259 OID 3365542)
-- Dependencies: 6
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
-- TOC entry 1796 (class 2606 OID 3365585)
-- Dependencies: 1509 1509
-- Name: apicatalog_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY apicatalog_services
    ADD CONSTRAINT apicatalog_services_pkey PRIMARY KEY (servicekey);


--
-- TOC entry 1798 (class 2606 OID 3365587)
-- Dependencies: 1510 1510
-- Name: apicatalog_status_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY apicatalog_status
    ADD CONSTRAINT apicatalog_status_pkey PRIMARY KEY (method);


--
-- TOC entry 1800 (class 2606 OID 3365589)
-- Dependencies: 1511 1511
-- Name: authgroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authgroups
    ADD CONSTRAINT authgroups_pkey PRIMARY KEY (groupname);


--
-- TOC entry 1802 (class 2606 OID 3365591)
-- Dependencies: 1512 1512
-- Name: authpermissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authpermissions
    ADD CONSTRAINT authpermissions_pkey PRIMARY KEY (permissionname);


--
-- TOC entry 1804 (class 2606 OID 3365593)
-- Dependencies: 1513 1513 1513
-- Name: authrolepermissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authrolepermissions
    ADD CONSTRAINT authrolepermissions_pkey PRIMARY KEY (rolename, permissionname);


--
-- TOC entry 1806 (class 2606 OID 3365595)
-- Dependencies: 1514 1514
-- Name: authroles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authroles
    ADD CONSTRAINT authroles_pkey PRIMARY KEY (rolename);


--
-- TOC entry 1808 (class 2606 OID 3365597)
-- Dependencies: 1515 1515 1515
-- Name: authusergroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authusergroups
    ADD CONSTRAINT authusergroups_pkey PRIMARY KEY (username, groupname);


--
-- TOC entry 1810 (class 2606 OID 3365599)
-- Dependencies: 1516 1516 1516
-- Name: authuserroles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authuserroles
    ADD CONSTRAINT authuserroles_pkey PRIMARY KEY (username, rolename);


--
-- TOC entry 1812 (class 2606 OID 3365601)
-- Dependencies: 1517 1517
-- Name: authusers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authusers
    ADD CONSTRAINT authusers_pkey PRIMARY KEY (username);


--
-- TOC entry 1814 (class 2606 OID 3365603)
-- Dependencies: 1518 1518
-- Name: authusershortcuts_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authusershortcuts
    ADD CONSTRAINT authusershortcuts_pkey PRIMARY KEY (username);


--
-- TOC entry 1818 (class 2606 OID 3365605)
-- Dependencies: 1520 1520
-- Name: jpsurvey_answeres_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpsurvey_choices
    ADD CONSTRAINT jpsurvey_answeres_pkey PRIMARY KEY (id);


--
-- TOC entry 1816 (class 2606 OID 3365607)
-- Dependencies: 1519 1519
-- Name: jpsurvey_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpsurvey
    ADD CONSTRAINT jpsurvey_pkey PRIMARY KEY (id);


--
-- TOC entry 1820 (class 2606 OID 3365609)
-- Dependencies: 1521 1521
-- Name: jpsurvey_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpsurvey_questions
    ADD CONSTRAINT jpsurvey_questions_pkey PRIMARY KEY (id);


--
-- TOC entry 1822 (class 2606 OID 3365611)
-- Dependencies: 1523 1523
-- Name: jpsurvey_voters_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpsurvey_voters
    ADD CONSTRAINT jpsurvey_voters_pkey PRIMARY KEY (id);


--
-- TOC entry 1824 (class 2606 OID 3365613)
-- Dependencies: 1524 1524
-- Name: jpuserprofile_autuserprofiles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpuserprofile_authuserprofiles
    ADD CONSTRAINT jpuserprofile_autuserprofiles_pkey PRIMARY KEY (username);


--
-- TOC entry 1826 (class 2606 OID 3365615)
-- Dependencies: 1526 1526
-- Name: jpwebdynamicform_messageanswers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpwebdynamicform_messageanswers
    ADD CONSTRAINT jpwebdynamicform_messageanswers_pkey PRIMARY KEY (answerid);


--
-- TOC entry 1828 (class 2606 OID 3365617)
-- Dependencies: 1527 1527
-- Name: jpwebdynamicform_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpwebdynamicform_messages
    ADD CONSTRAINT jpwebdynamicform_messages_pkey PRIMARY KEY (messageid);


--
-- TOC entry 1829 (class 2606 OID 3365618)
-- Dependencies: 1512 1801 1513
-- Name: authrolepermissions_permissionname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authrolepermissions
    ADD CONSTRAINT authrolepermissions_permissionname_fkey FOREIGN KEY (permissionname) REFERENCES authpermissions(permissionname) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1830 (class 2606 OID 3365623)
-- Dependencies: 1513 1514 1805
-- Name: authrolepermissions_rolename_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authrolepermissions
    ADD CONSTRAINT authrolepermissions_rolename_fkey FOREIGN KEY (rolename) REFERENCES authroles(rolename) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1831 (class 2606 OID 3365628)
-- Dependencies: 1515 1799 1511
-- Name: authusergroups_groupname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authusergroups
    ADD CONSTRAINT authusergroups_groupname_fkey FOREIGN KEY (groupname) REFERENCES authgroups(groupname) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1832 (class 2606 OID 3365633)
-- Dependencies: 1805 1514 1516
-- Name: authuserroles_rolename_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authuserroles
    ADD CONSTRAINT authuserroles_rolename_fkey FOREIGN KEY (rolename) REFERENCES authroles(rolename) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1835 (class 2606 OID 3365638)
-- Dependencies: 1522 1520 1817
-- Name: choiceid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_responses
    ADD CONSTRAINT choiceid FOREIGN KEY (choiceid) REFERENCES jpsurvey_choices(id);


--
-- TOC entry 1833 (class 2606 OID 3365643)
-- Dependencies: 1521 1819 1520
-- Name: jpsurvey_answeres_questionid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_choices
    ADD CONSTRAINT jpsurvey_answeres_questionid_fkey FOREIGN KEY (questionid) REFERENCES jpsurvey_questions(id);


--
-- TOC entry 1834 (class 2606 OID 3365648)
-- Dependencies: 1815 1521 1519
-- Name: jpsurvey_questions_surveyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_questions
    ADD CONSTRAINT jpsurvey_questions_surveyid_fkey FOREIGN KEY (surveyid) REFERENCES jpsurvey(id);


--
-- TOC entry 1836 (class 2606 OID 3365653)
-- Dependencies: 1522 1821 1523
-- Name: jpsurvey_responses_voterid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_responses
    ADD CONSTRAINT jpsurvey_responses_voterid_fkey FOREIGN KEY (voterid) REFERENCES jpsurvey_voters(id);


--
-- TOC entry 1839 (class 2606 OID 3365658)
-- Dependencies: 1823 1524 1525
-- Name: jpuserprofile_profilesearch_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpuserprofile_profilesearch
    ADD CONSTRAINT jpuserprofile_profilesearch_username_fkey FOREIGN KEY (username) REFERENCES jpuserprofile_authuserprofiles(username);


--
-- TOC entry 1840 (class 2606 OID 3365663)
-- Dependencies: 1527 1526 1827
-- Name: jpwebdynamicform_messageanswers_messageid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpwebdynamicform_messageanswers
    ADD CONSTRAINT jpwebdynamicform_messageanswers_messageid_fkey FOREIGN KEY (messageid) REFERENCES jpwebdynamicform_messages(messageid);


--
-- TOC entry 1841 (class 2606 OID 3365668)
-- Dependencies: 1528 1527 1827
-- Name: jpwebdynamicform_messagesearch_messageid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpwebdynamicform_messagesearch
    ADD CONSTRAINT jpwebdynamicform_messagesearch_messageid_fkey FOREIGN KEY (messageid) REFERENCES jpwebdynamicform_messages(messageid);


--
-- TOC entry 1837 (class 2606 OID 3365673)
-- Dependencies: 1521 1522 1819
-- Name: questionid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_responses
    ADD CONSTRAINT questionid FOREIGN KEY (questionid) REFERENCES jpsurvey_questions(id);


--
-- TOC entry 1838 (class 2606 OID 3365678)
-- Dependencies: 1523 1815 1519
-- Name: surveyid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_voters
    ADD CONSTRAINT surveyid FOREIGN KEY (surveyid) REFERENCES jpsurvey(id);


--
-- TOC entry 1846 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2011-11-20 17:08:46 CET

--
-- PostgreSQL database dump complete
--

