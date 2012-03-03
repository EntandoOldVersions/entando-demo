--
-- PostgreSQL database dump
--

-- Started on 2012-02-27 22:37:12 CET

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 506 (class 2612 OID 16386)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: -
--

CREATE PROCEDURAL LANGUAGE plpgsql;


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 147 (class 1259 OID 110391)
-- Dependencies: 6
-- Name: api_oauth_consumers; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE api_oauth_consumers (
    consumerkey character varying(100) NOT NULL,
    consumersecret character varying(100) NOT NULL,
    description character varying(500) NOT NULL,
    callbackurl character varying(500),
    expirationdate date
);


--
-- TOC entry 148 (class 1259 OID 110399)
-- Dependencies: 6
-- Name: api_oauth_tokens; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE api_oauth_tokens (
    accesstoken character(100) NOT NULL,
    tokensecret character varying(100) NOT NULL,
    consumerkey character varying(100) NOT NULL,
    lastaccess date NOT NULL,
    username character varying(40) NOT NULL
);


--
-- TOC entry 128 (class 1259 OID 110175)
-- Dependencies: 6
-- Name: apicatalog_methods; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE apicatalog_methods (
    resource character varying(100) NOT NULL,
    httpmethod character varying(6) NOT NULL,
    isactive smallint,
    authenticationrequired smallint,
    authorizationrequired character varying(100)
);


--
-- TOC entry 127 (class 1259 OID 110169)
-- Dependencies: 6
-- Name: apicatalog_services; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE apicatalog_services (
    servicekey character varying(100) NOT NULL,
    resource character varying(100) NOT NULL,
    description character varying NOT NULL,
    parameters character varying,
    tag character varying(100),
    freeparameters character varying,
    isactive smallint NOT NULL,
    ispublic smallint NOT NULL,
    myentando smallint NOT NULL
);


SET default_with_oids = true;

--
-- TOC entry 129 (class 1259 OID 110178)
-- Dependencies: 6
-- Name: authgroups; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authgroups (
    groupname character varying(20) NOT NULL,
    descr character varying(50)
);


--
-- TOC entry 130 (class 1259 OID 110181)
-- Dependencies: 6
-- Name: authpermissions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authpermissions (
    permissionname character varying(30) NOT NULL,
    descr character varying(50)
);


--
-- TOC entry 131 (class 1259 OID 110184)
-- Dependencies: 6
-- Name: authrolepermissions; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authrolepermissions (
    rolename character varying(20) NOT NULL,
    permissionname character varying(30) NOT NULL
);


--
-- TOC entry 132 (class 1259 OID 110187)
-- Dependencies: 6
-- Name: authroles; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authroles (
    rolename character varying(20) NOT NULL,
    descr character varying(50)
);


--
-- TOC entry 133 (class 1259 OID 110190)
-- Dependencies: 6
-- Name: authusergroups; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authusergroups (
    username character varying(40) NOT NULL,
    groupname character varying(20) NOT NULL
);


SET default_with_oids = false;

--
-- TOC entry 134 (class 1259 OID 110193)
-- Dependencies: 6
-- Name: authuserroles; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authuserroles (
    username character varying(40) NOT NULL,
    rolename character varying(20) NOT NULL
);


SET default_with_oids = true;

--
-- TOC entry 135 (class 1259 OID 110196)
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
-- TOC entry 136 (class 1259 OID 110199)
-- Dependencies: 6
-- Name: authusershortcuts; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE authusershortcuts (
    username character varying(40) NOT NULL,
    config character varying NOT NULL
);


SET default_with_oids = false;

--
-- TOC entry 137 (class 1259 OID 110205)
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
-- TOC entry 138 (class 1259 OID 110211)
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
-- TOC entry 139 (class 1259 OID 110217)
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
-- TOC entry 140 (class 1259 OID 110223)
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
-- TOC entry 141 (class 1259 OID 110226)
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
-- TOC entry 142 (class 1259 OID 110229)
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
-- TOC entry 143 (class 1259 OID 110235)
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
-- TOC entry 144 (class 1259 OID 110238)
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
-- TOC entry 145 (class 1259 OID 110244)
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
-- TOC entry 146 (class 1259 OID 110250)
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
-- TOC entry 1859 (class 2606 OID 110398)
-- Dependencies: 147 147
-- Name: api_oauth_consumers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY api_oauth_consumers
    ADD CONSTRAINT api_oauth_consumers_pkey PRIMARY KEY (consumerkey);


--
-- TOC entry 1861 (class 2606 OID 110403)
-- Dependencies: 148 148
-- Name: api_oauth_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY api_oauth_tokens
    ADD CONSTRAINT api_oauth_tokens_pkey PRIMARY KEY (accesstoken);


--
-- TOC entry 1825 (class 2606 OID 110293)
-- Dependencies: 127 127
-- Name: apicatalog_services_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY apicatalog_services
    ADD CONSTRAINT apicatalog_services_pkey PRIMARY KEY (servicekey);


--
-- TOC entry 1827 (class 2606 OID 110405)
-- Dependencies: 128 128 128
-- Name: apicatalog_status_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY apicatalog_methods
    ADD CONSTRAINT apicatalog_status_pkey PRIMARY KEY (resource, httpmethod);


--
-- TOC entry 1829 (class 2606 OID 110297)
-- Dependencies: 129 129
-- Name: authgroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authgroups
    ADD CONSTRAINT authgroups_pkey PRIMARY KEY (groupname);


--
-- TOC entry 1831 (class 2606 OID 110299)
-- Dependencies: 130 130
-- Name: authpermissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authpermissions
    ADD CONSTRAINT authpermissions_pkey PRIMARY KEY (permissionname);


--
-- TOC entry 1833 (class 2606 OID 110301)
-- Dependencies: 131 131 131
-- Name: authrolepermissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authrolepermissions
    ADD CONSTRAINT authrolepermissions_pkey PRIMARY KEY (rolename, permissionname);


--
-- TOC entry 1835 (class 2606 OID 110303)
-- Dependencies: 132 132
-- Name: authroles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authroles
    ADD CONSTRAINT authroles_pkey PRIMARY KEY (rolename);


--
-- TOC entry 1837 (class 2606 OID 110305)
-- Dependencies: 133 133 133
-- Name: authusergroups_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authusergroups
    ADD CONSTRAINT authusergroups_pkey PRIMARY KEY (username, groupname);


--
-- TOC entry 1839 (class 2606 OID 110307)
-- Dependencies: 134 134 134
-- Name: authuserroles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authuserroles
    ADD CONSTRAINT authuserroles_pkey PRIMARY KEY (username, rolename);


--
-- TOC entry 1841 (class 2606 OID 110309)
-- Dependencies: 135 135
-- Name: authusers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authusers
    ADD CONSTRAINT authusers_pkey PRIMARY KEY (username);


--
-- TOC entry 1843 (class 2606 OID 110311)
-- Dependencies: 136 136
-- Name: authusershortcuts_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY authusershortcuts
    ADD CONSTRAINT authusershortcuts_pkey PRIMARY KEY (username);


--
-- TOC entry 1847 (class 2606 OID 110313)
-- Dependencies: 138 138
-- Name: jpsurvey_answeres_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpsurvey_choices
    ADD CONSTRAINT jpsurvey_answeres_pkey PRIMARY KEY (id);


--
-- TOC entry 1845 (class 2606 OID 110315)
-- Dependencies: 137 137
-- Name: jpsurvey_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpsurvey
    ADD CONSTRAINT jpsurvey_pkey PRIMARY KEY (id);


--
-- TOC entry 1849 (class 2606 OID 110317)
-- Dependencies: 139 139
-- Name: jpsurvey_questions_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpsurvey_questions
    ADD CONSTRAINT jpsurvey_questions_pkey PRIMARY KEY (id);


--
-- TOC entry 1851 (class 2606 OID 110319)
-- Dependencies: 141 141
-- Name: jpsurvey_voters_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpsurvey_voters
    ADD CONSTRAINT jpsurvey_voters_pkey PRIMARY KEY (id);


--
-- TOC entry 1853 (class 2606 OID 110321)
-- Dependencies: 142 142
-- Name: jpuserprofile_autuserprofiles_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpuserprofile_authuserprofiles
    ADD CONSTRAINT jpuserprofile_autuserprofiles_pkey PRIMARY KEY (username);


--
-- TOC entry 1855 (class 2606 OID 110323)
-- Dependencies: 144 144
-- Name: jpwebdynamicform_messageanswers_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpwebdynamicform_messageanswers
    ADD CONSTRAINT jpwebdynamicform_messageanswers_pkey PRIMARY KEY (answerid);


--
-- TOC entry 1857 (class 2606 OID 110325)
-- Dependencies: 145 145
-- Name: jpwebdynamicform_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpwebdynamicform_messages
    ADD CONSTRAINT jpwebdynamicform_messages_pkey PRIMARY KEY (messageid);


--
-- TOC entry 1862 (class 2606 OID 110326)
-- Dependencies: 131 1830 130
-- Name: authrolepermissions_permissionname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authrolepermissions
    ADD CONSTRAINT authrolepermissions_permissionname_fkey FOREIGN KEY (permissionname) REFERENCES authpermissions(permissionname) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1863 (class 2606 OID 110331)
-- Dependencies: 1834 131 132
-- Name: authrolepermissions_rolename_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authrolepermissions
    ADD CONSTRAINT authrolepermissions_rolename_fkey FOREIGN KEY (rolename) REFERENCES authroles(rolename) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1864 (class 2606 OID 110336)
-- Dependencies: 129 133 1828
-- Name: authusergroups_groupname_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authusergroups
    ADD CONSTRAINT authusergroups_groupname_fkey FOREIGN KEY (groupname) REFERENCES authgroups(groupname) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1865 (class 2606 OID 110341)
-- Dependencies: 134 1834 132
-- Name: authuserroles_rolename_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY authuserroles
    ADD CONSTRAINT authuserroles_rolename_fkey FOREIGN KEY (rolename) REFERENCES authroles(rolename) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 1868 (class 2606 OID 110346)
-- Dependencies: 140 1846 138
-- Name: choiceid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_responses
    ADD CONSTRAINT choiceid FOREIGN KEY (choiceid) REFERENCES jpsurvey_choices(id);


--
-- TOC entry 1866 (class 2606 OID 110351)
-- Dependencies: 138 1848 139
-- Name: jpsurvey_answeres_questionid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_choices
    ADD CONSTRAINT jpsurvey_answeres_questionid_fkey FOREIGN KEY (questionid) REFERENCES jpsurvey_questions(id);


--
-- TOC entry 1867 (class 2606 OID 110356)
-- Dependencies: 1844 137 139
-- Name: jpsurvey_questions_surveyid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_questions
    ADD CONSTRAINT jpsurvey_questions_surveyid_fkey FOREIGN KEY (surveyid) REFERENCES jpsurvey(id);


--
-- TOC entry 1869 (class 2606 OID 110361)
-- Dependencies: 141 1850 140
-- Name: jpsurvey_responses_voterid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_responses
    ADD CONSTRAINT jpsurvey_responses_voterid_fkey FOREIGN KEY (voterid) REFERENCES jpsurvey_voters(id);


--
-- TOC entry 1872 (class 2606 OID 110366)
-- Dependencies: 142 1852 143
-- Name: jpuserprofile_profilesearch_username_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpuserprofile_profilesearch
    ADD CONSTRAINT jpuserprofile_profilesearch_username_fkey FOREIGN KEY (username) REFERENCES jpuserprofile_authuserprofiles(username);


--
-- TOC entry 1873 (class 2606 OID 110371)
-- Dependencies: 145 1856 144
-- Name: jpwebdynamicform_messageanswers_messageid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpwebdynamicform_messageanswers
    ADD CONSTRAINT jpwebdynamicform_messageanswers_messageid_fkey FOREIGN KEY (messageid) REFERENCES jpwebdynamicform_messages(messageid);


--
-- TOC entry 1874 (class 2606 OID 110376)
-- Dependencies: 146 1856 145
-- Name: jpwebdynamicform_messagesearch_messageid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpwebdynamicform_messagesearch
    ADD CONSTRAINT jpwebdynamicform_messagesearch_messageid_fkey FOREIGN KEY (messageid) REFERENCES jpwebdynamicform_messages(messageid);


--
-- TOC entry 1870 (class 2606 OID 110381)
-- Dependencies: 139 140 1848
-- Name: questionid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_responses
    ADD CONSTRAINT questionid FOREIGN KEY (questionid) REFERENCES jpsurvey_questions(id);


--
-- TOC entry 1871 (class 2606 OID 110386)
-- Dependencies: 1844 141 137
-- Name: surveyid; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpsurvey_voters
    ADD CONSTRAINT surveyid FOREIGN KEY (surveyid) REFERENCES jpsurvey(id);


--
-- TOC entry 1879 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2012-02-27 22:37:12 CET

--
-- PostgreSQL database dump complete
--

