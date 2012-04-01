--
-- PostgreSQL database dump
--

-- Started on 2012-04-01 12:10:54 CEST

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 497 (class 2612 OID 16386)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: -
--

CREATE PROCEDURAL LANGUAGE plpgsql;


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = true;

--
-- TOC entry 127 (class 1259 OID 585911)
-- Dependencies: 6
-- Name: categories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE categories (
    catcode character varying(30) NOT NULL,
    parentcode character varying(30) NOT NULL,
    titles character varying NOT NULL
);


--
-- TOC entry 128 (class 1259 OID 585917)
-- Dependencies: 6
-- Name: contentmodels; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE contentmodels (
    modelid integer NOT NULL,
    contenttype character varying(30) NOT NULL,
    descr character varying(50) NOT NULL,
    model character varying,
    stylesheet character varying(50)
);


--
-- TOC entry 129 (class 1259 OID 585923)
-- Dependencies: 6
-- Name: contentrelations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE contentrelations (
    contentid character varying(16) NOT NULL,
    refpage character varying(30),
    refcontent character varying(16),
    refresource character varying(16),
    refcategory character varying(30),
    refgroup character varying(20)
);


--
-- TOC entry 130 (class 1259 OID 585926)
-- Dependencies: 6
-- Name: contents; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE contents (
    contentid character varying(16) NOT NULL,
    contenttype character varying(30) NOT NULL,
    descr character varying(260) NOT NULL,
    status character varying(12) NOT NULL,
    workxml character varying NOT NULL,
    created character varying(20),
    lastmodified character varying(20),
    onlinexml character varying,
    maingroup character varying(20) NOT NULL,
    currentversion character varying(7) NOT NULL,
    lasteditor character varying(40)
);


--
-- TOC entry 131 (class 1259 OID 585932)
-- Dependencies: 6
-- Name: contentsearch; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE contentsearch (
    contentid character varying(16) NOT NULL,
    attrname character varying(30) NOT NULL,
    textvalue character varying(255),
    datevalue date,
    numvalue integer,
    langcode character varying(2)
);


--
-- TOC entry 132 (class 1259 OID 585935)
-- Dependencies: 6
-- Name: jpcontentfeedback_comments; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpcontentfeedback_comments (
    id integer NOT NULL,
    contentid character varying(16) NOT NULL,
    creationdate timestamp without time zone,
    usercomment character varying NOT NULL,
    status integer NOT NULL,
    username character varying(40) NOT NULL
);


--
-- TOC entry 133 (class 1259 OID 585941)
-- Dependencies: 6
-- Name: jpcontentfeedback_rating; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpcontentfeedback_rating (
    id integer NOT NULL,
    commentid integer,
    contentid character varying(16),
    voters integer,
    sumvote integer
);


--
-- TOC entry 134 (class 1259 OID 585944)
-- Dependencies: 1815 6
-- Name: jpmyportalplus_userpageconfig; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpmyportalplus_userpageconfig (
    username character varying(40) NOT NULL,
    pagecode character varying(30) DEFAULT ''::character varying NOT NULL,
    framepos integer NOT NULL,
    showletcode character varying(40) NOT NULL,
    config character varying,
    closed integer NOT NULL
);


--
-- TOC entry 135 (class 1259 OID 585951)
-- Dependencies: 6
-- Name: localstrings; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE localstrings (
    keycode character varying(50) NOT NULL,
    langcode character varying(2) NOT NULL,
    stringvalue character varying NOT NULL
);


--
-- TOC entry 136 (class 1259 OID 585957)
-- Dependencies: 6
-- Name: pagemodels; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE pagemodels (
    code character varying(40) NOT NULL,
    descr character varying(50) NOT NULL,
    frames character varying,
    plugincode character varying(30)
);


--
-- TOC entry 137 (class 1259 OID 585963)
-- Dependencies: 6
-- Name: pages; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE pages (
    code character varying(30) NOT NULL,
    parentcode character varying(30),
    pos integer NOT NULL,
    modelcode character varying(40) NOT NULL,
    titles character varying,
    groupcode character varying(30) NOT NULL,
    showinmenu smallint NOT NULL,
    extraconfig character varying
);


--
-- TOC entry 138 (class 1259 OID 585969)
-- Dependencies: 6
-- Name: resourcerelations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE resourcerelations (
    resid character varying(16) NOT NULL,
    refcategory character varying(30)
);


--
-- TOC entry 139 (class 1259 OID 585972)
-- Dependencies: 6
-- Name: resources; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE resources (
    resid character varying(16) NOT NULL,
    restype character varying(30) NOT NULL,
    descr character varying(260) NOT NULL,
    maingroup character varying(20) NOT NULL,
    resourcexml character varying NOT NULL,
    masterfilename character varying(100) NOT NULL
);


--
-- TOC entry 140 (class 1259 OID 585978)
-- Dependencies: 6
-- Name: showletcatalog; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE showletcatalog (
    code character varying(40) NOT NULL,
    titles character varying NOT NULL,
    parameters character varying,
    plugincode character varying(30),
    parenttypecode character varying(40),
    defaultconfig character varying,
    locked smallint NOT NULL,
    maingroup character varying(20)
);


--
-- TOC entry 141 (class 1259 OID 585984)
-- Dependencies: 6
-- Name: showletconfig; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE showletconfig (
    pagecode character varying(30) NOT NULL,
    framepos integer NOT NULL,
    showletcode character varying(40) NOT NULL,
    config character varying,
    publishedcontent character varying(30)
);


--
-- TOC entry 142 (class 1259 OID 585990)
-- Dependencies: 6
-- Name: sysconfig; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE sysconfig (
    version character varying(10) NOT NULL,
    item character varying(40) NOT NULL,
    descr character varying(100),
    config character varying
);


--
-- TOC entry 143 (class 1259 OID 585996)
-- Dependencies: 6
-- Name: uniquekeys; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE uniquekeys (
    id integer NOT NULL,
    keyvalue integer NOT NULL
);


--
-- TOC entry 144 (class 1259 OID 585999)
-- Dependencies: 6
-- Name: workcontentrelations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workcontentrelations (
    contentid character varying(16) NOT NULL,
    refcategory character varying(30)
);


--
-- TOC entry 145 (class 1259 OID 586002)
-- Dependencies: 6
-- Name: workcontentsearch; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workcontentsearch (
    contentid character varying(16),
    attrname character varying(30) NOT NULL,
    textvalue character varying(255),
    datevalue date,
    numvalue integer,
    langcode character varying(2)
);


--
-- TOC entry 1817 (class 2606 OID 587332)
-- Dependencies: 127 127
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (catcode);


--
-- TOC entry 1819 (class 2606 OID 587334)
-- Dependencies: 128 128
-- Name: contentmodels_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY contentmodels
    ADD CONSTRAINT contentmodels_pkey PRIMARY KEY (modelid);


--
-- TOC entry 1823 (class 2606 OID 587336)
-- Dependencies: 130 130
-- Name: contents_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY contents
    ADD CONSTRAINT contents_pkey PRIMARY KEY (contentid);


--
-- TOC entry 1826 (class 2606 OID 587338)
-- Dependencies: 132 132
-- Name: jpcontentfeedback_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpcontentfeedback_comments
    ADD CONSTRAINT jpcontentfeedback_comments_pkey PRIMARY KEY (id);


--
-- TOC entry 1828 (class 2606 OID 587340)
-- Dependencies: 133 133
-- Name: jpcontentfeedback_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpcontentfeedback_rating
    ADD CONSTRAINT jpcontentfeedback_rating_pkey PRIMARY KEY (id);


--
-- TOC entry 1830 (class 2606 OID 587342)
-- Dependencies: 134 134 134 134
-- Name: jpmyportalplus_userpageconfig_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpmyportalplus_userpageconfig
    ADD CONSTRAINT jpmyportalplus_userpageconfig_pkey PRIMARY KEY (username, framepos, pagecode);


--
-- TOC entry 1832 (class 2606 OID 587344)
-- Dependencies: 135 135 135
-- Name: localstrings_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY localstrings
    ADD CONSTRAINT localstrings_pkey PRIMARY KEY (keycode, langcode);


--
-- TOC entry 1834 (class 2606 OID 587346)
-- Dependencies: 136 136
-- Name: pagemodels_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pagemodels
    ADD CONSTRAINT pagemodels_pkey PRIMARY KEY (code);


--
-- TOC entry 1836 (class 2606 OID 587348)
-- Dependencies: 137 137
-- Name: pages_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (code);


--
-- TOC entry 1838 (class 2606 OID 587350)
-- Dependencies: 139 139
-- Name: resources_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY resources
    ADD CONSTRAINT resources_pkey PRIMARY KEY (resid);


--
-- TOC entry 1840 (class 2606 OID 587352)
-- Dependencies: 140 140
-- Name: showletcatalog_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY showletcatalog
    ADD CONSTRAINT showletcatalog_pkey PRIMARY KEY (code);


--
-- TOC entry 1842 (class 2606 OID 587354)
-- Dependencies: 141 141 141
-- Name: showletconfig_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY showletconfig
    ADD CONSTRAINT showletconfig_pkey PRIMARY KEY (pagecode, framepos);


--
-- TOC entry 1844 (class 2606 OID 587356)
-- Dependencies: 142 142 142
-- Name: system_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sysconfig
    ADD CONSTRAINT system_pkey PRIMARY KEY (version, item);


--
-- TOC entry 1846 (class 2606 OID 587358)
-- Dependencies: 143 143
-- Name: uniquekeys_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY uniquekeys
    ADD CONSTRAINT uniquekeys_pkey PRIMARY KEY (id);


--
-- TOC entry 1820 (class 1259 OID 587359)
-- Dependencies: 129 129 129
-- Name: contentrelations_idx; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX contentrelations_idx ON contentrelations USING btree (contentid, refcategory, refgroup);


--
-- TOC entry 1821 (class 1259 OID 587360)
-- Dependencies: 130 130
-- Name: contents_idx; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX contents_idx ON contents USING btree (contenttype, maingroup);


--
-- TOC entry 1824 (class 1259 OID 587361)
-- Dependencies: 131 131
-- Name: contentsearch_idx; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX contentsearch_idx ON contentsearch USING btree (contentid, attrname);


--
-- TOC entry 1847 (class 2606 OID 587362)
-- Dependencies: 130 129 1822
-- Name: contentrelations_contentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contentrelations
    ADD CONSTRAINT contentrelations_contentid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);


--
-- TOC entry 1848 (class 2606 OID 587367)
-- Dependencies: 129 127 1816
-- Name: contentrelations_refcategory_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contentrelations
    ADD CONSTRAINT contentrelations_refcategory_fkey FOREIGN KEY (refcategory) REFERENCES categories(catcode);


--
-- TOC entry 1849 (class 2606 OID 587372)
-- Dependencies: 130 1822 129
-- Name: contentrelations_refcontent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contentrelations
    ADD CONSTRAINT contentrelations_refcontent_fkey FOREIGN KEY (refcontent) REFERENCES contents(contentid);


--
-- TOC entry 1850 (class 2606 OID 587377)
-- Dependencies: 137 1835 129
-- Name: contentrelations_refpage_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contentrelations
    ADD CONSTRAINT contentrelations_refpage_fkey FOREIGN KEY (refpage) REFERENCES pages(code);


--
-- TOC entry 1851 (class 2606 OID 587382)
-- Dependencies: 139 1837 129
-- Name: contentrelations_refresource_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contentrelations
    ADD CONSTRAINT contentrelations_refresource_fkey FOREIGN KEY (refresource) REFERENCES resources(resid);


--
-- TOC entry 1852 (class 2606 OID 587387)
-- Dependencies: 131 1822 130
-- Name: contentsearch_contentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contentsearch
    ADD CONSTRAINT contentsearch_contentid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);


--
-- TOC entry 1853 (class 2606 OID 587392)
-- Dependencies: 132 133 1825
-- Name: jpcontentfeedback_rating_refcommentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpcontentfeedback_rating
    ADD CONSTRAINT jpcontentfeedback_rating_refcommentid_fkey FOREIGN KEY (commentid) REFERENCES jpcontentfeedback_comments(id);


--
-- TOC entry 1854 (class 2606 OID 587397)
-- Dependencies: 1835 134 137
-- Name: jpmyportalplus_userpageconfig_pagecode_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpmyportalplus_userpageconfig
    ADD CONSTRAINT jpmyportalplus_userpageconfig_pagecode_fkey FOREIGN KEY (pagecode) REFERENCES pages(code);


--
-- TOC entry 1855 (class 2606 OID 587402)
-- Dependencies: 136 137 1833
-- Name: pages_modelcode_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pages
    ADD CONSTRAINT pages_modelcode_fkey FOREIGN KEY (modelcode) REFERENCES pagemodels(code);


--
-- TOC entry 1856 (class 2606 OID 587407)
-- Dependencies: 127 138 1816
-- Name: resourcerelations_refcategory_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY resourcerelations
    ADD CONSTRAINT resourcerelations_refcategory_fkey FOREIGN KEY (refcategory) REFERENCES categories(catcode);


--
-- TOC entry 1857 (class 2606 OID 587412)
-- Dependencies: 138 1837 139
-- Name: resourcerelations_resid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY resourcerelations
    ADD CONSTRAINT resourcerelations_resid_fkey FOREIGN KEY (resid) REFERENCES resources(resid);


--
-- TOC entry 1858 (class 2606 OID 587417)
-- Dependencies: 137 141 1835
-- Name: showletconfig_pagecode_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY showletconfig
    ADD CONSTRAINT showletconfig_pagecode_fkey FOREIGN KEY (pagecode) REFERENCES pages(code);


--
-- TOC entry 1859 (class 2606 OID 587422)
-- Dependencies: 1839 140 141
-- Name: showletconfig_showletcode_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY showletconfig
    ADD CONSTRAINT showletconfig_showletcode_fkey FOREIGN KEY (showletcode) REFERENCES showletcatalog(code);


--
-- TOC entry 1860 (class 2606 OID 587427)
-- Dependencies: 1822 144 130
-- Name: workcontentrelations_contentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY workcontentrelations
    ADD CONSTRAINT workcontentrelations_contentid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);


--
-- TOC entry 1861 (class 2606 OID 587432)
-- Dependencies: 145 130 1822
-- Name: workcontentsearch_contentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY workcontentsearch
    ADD CONSTRAINT workcontentsearch_contentid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);


--
-- TOC entry 1866 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2012-04-01 12:10:54 CEST

--
-- PostgreSQL database dump complete
--

