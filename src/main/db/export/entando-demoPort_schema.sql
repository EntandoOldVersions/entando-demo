--
-- PostgreSQL database dump
--

-- Started on 2011-11-20 17:08:45 CET

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

--
-- TOC entry 339 (class 2612 OID 16386)
-- Name: plpgsql; Type: PROCEDURAL LANGUAGE; Schema: -; Owner: -
--

CREATE PROCEDURAL LANGUAGE plpgsql;


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = true;

--
-- TOC entry 1511 (class 1259 OID 3363980)
-- Dependencies: 6
-- Name: categories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE categories (
    catcode character varying(30) NOT NULL,
    parentcode character varying(30) NOT NULL,
    titles character varying NOT NULL
);


--
-- TOC entry 1512 (class 1259 OID 3363986)
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
-- TOC entry 1513 (class 1259 OID 3363992)
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
-- TOC entry 1514 (class 1259 OID 3363995)
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
-- TOC entry 1515 (class 1259 OID 3364001)
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
-- TOC entry 1516 (class 1259 OID 3364004)
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
-- TOC entry 1517 (class 1259 OID 3364010)
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
-- TOC entry 1518 (class 1259 OID 3364013)
-- Dependencies: 1796 6
-- Name: jpmyportalplus_userpageconfig; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE jpmyportalplus_userpageconfig (
    username character varying(40) NOT NULL,
    pagecode character varying(80) DEFAULT ''::character varying NOT NULL,
    framepos integer NOT NULL,
    showletcode character varying(40) NOT NULL,
    config character varying,
    closed integer NOT NULL
);


--
-- TOC entry 1519 (class 1259 OID 3364020)
-- Dependencies: 6
-- Name: localstrings; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE localstrings (
    keycode character varying(50) NOT NULL,
    langcode character varying(2) NOT NULL,
    stringvalue character varying NOT NULL
);


--
-- TOC entry 1520 (class 1259 OID 3364026)
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
-- TOC entry 1521 (class 1259 OID 3364032)
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
-- TOC entry 1522 (class 1259 OID 3364038)
-- Dependencies: 6
-- Name: resourcerelations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE resourcerelations (
    resid character varying(16) NOT NULL,
    refcategory character varying(30)
);


--
-- TOC entry 1523 (class 1259 OID 3364041)
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
-- TOC entry 1524 (class 1259 OID 3364047)
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
-- TOC entry 1525 (class 1259 OID 3364053)
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
-- TOC entry 1526 (class 1259 OID 3364059)
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
-- TOC entry 1527 (class 1259 OID 3364065)
-- Dependencies: 6
-- Name: uniquekeys; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE uniquekeys (
    id integer NOT NULL,
    keyvalue integer NOT NULL
);


--
-- TOC entry 1528 (class 1259 OID 3364068)
-- Dependencies: 6
-- Name: workcontentrelations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE workcontentrelations (
    contentid character varying(16) NOT NULL,
    refcategory character varying(30)
);


--
-- TOC entry 1529 (class 1259 OID 3364071)
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
-- TOC entry 1798 (class 2606 OID 3365356)
-- Dependencies: 1511 1511
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (catcode);


--
-- TOC entry 1800 (class 2606 OID 3365358)
-- Dependencies: 1512 1512
-- Name: contentmodels_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY contentmodels
    ADD CONSTRAINT contentmodels_pkey PRIMARY KEY (modelid);


--
-- TOC entry 1804 (class 2606 OID 3365360)
-- Dependencies: 1514 1514
-- Name: contents_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY contents
    ADD CONSTRAINT contents_pkey PRIMARY KEY (contentid);


--
-- TOC entry 1807 (class 2606 OID 3365362)
-- Dependencies: 1516 1516
-- Name: jpcontentfeedback_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpcontentfeedback_comments
    ADD CONSTRAINT jpcontentfeedback_comments_pkey PRIMARY KEY (id);


--
-- TOC entry 1809 (class 2606 OID 3365364)
-- Dependencies: 1517 1517
-- Name: jpcontentfeedback_rating_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpcontentfeedback_rating
    ADD CONSTRAINT jpcontentfeedback_rating_pkey PRIMARY KEY (id);


--
-- TOC entry 1811 (class 2606 OID 3365366)
-- Dependencies: 1518 1518 1518 1518
-- Name: jpmyportalplus_userpageconfig_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY jpmyportalplus_userpageconfig
    ADD CONSTRAINT jpmyportalplus_userpageconfig_pkey PRIMARY KEY (username, framepos, pagecode);


--
-- TOC entry 1813 (class 2606 OID 3365368)
-- Dependencies: 1519 1519 1519
-- Name: localstrings_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY localstrings
    ADD CONSTRAINT localstrings_pkey PRIMARY KEY (keycode, langcode);


--
-- TOC entry 1815 (class 2606 OID 3365370)
-- Dependencies: 1520 1520
-- Name: pagemodels_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pagemodels
    ADD CONSTRAINT pagemodels_pkey PRIMARY KEY (code);


--
-- TOC entry 1817 (class 2606 OID 3365372)
-- Dependencies: 1521 1521
-- Name: pages_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (code);


--
-- TOC entry 1819 (class 2606 OID 3365374)
-- Dependencies: 1523 1523
-- Name: resources_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY resources
    ADD CONSTRAINT resources_pkey PRIMARY KEY (resid);


--
-- TOC entry 1821 (class 2606 OID 3365376)
-- Dependencies: 1524 1524
-- Name: showletcatalog_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY showletcatalog
    ADD CONSTRAINT showletcatalog_pkey PRIMARY KEY (code);


--
-- TOC entry 1823 (class 2606 OID 3365378)
-- Dependencies: 1525 1525 1525
-- Name: showletconfig_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY showletconfig
    ADD CONSTRAINT showletconfig_pkey PRIMARY KEY (pagecode, framepos);


--
-- TOC entry 1825 (class 2606 OID 3365380)
-- Dependencies: 1526 1526 1526
-- Name: system_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY sysconfig
    ADD CONSTRAINT system_pkey PRIMARY KEY (version, item);


--
-- TOC entry 1827 (class 2606 OID 3365382)
-- Dependencies: 1527 1527
-- Name: uniquekeys_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY uniquekeys
    ADD CONSTRAINT uniquekeys_pkey PRIMARY KEY (id);


--
-- TOC entry 1801 (class 1259 OID 3365383)
-- Dependencies: 1513 1513 1513
-- Name: contentrelations_idx; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX contentrelations_idx ON contentrelations USING btree (contentid, refcategory, refgroup);


--
-- TOC entry 1802 (class 1259 OID 3365384)
-- Dependencies: 1514 1514
-- Name: contents_idx; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX contents_idx ON contents USING btree (contenttype, maingroup);


--
-- TOC entry 1805 (class 1259 OID 3365385)
-- Dependencies: 1515 1515
-- Name: contentsearch_idx; Type: INDEX; Schema: public; Owner: -; Tablespace: 
--

CREATE INDEX contentsearch_idx ON contentsearch USING btree (contentid, attrname);


--
-- TOC entry 1828 (class 2606 OID 3365386)
-- Dependencies: 1513 1803 1514
-- Name: contentrelations_contentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contentrelations
    ADD CONSTRAINT contentrelations_contentid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);


--
-- TOC entry 1829 (class 2606 OID 3365391)
-- Dependencies: 1511 1513 1797
-- Name: contentrelations_refcategory_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contentrelations
    ADD CONSTRAINT contentrelations_refcategory_fkey FOREIGN KEY (refcategory) REFERENCES categories(catcode);


--
-- TOC entry 1830 (class 2606 OID 3365396)
-- Dependencies: 1513 1803 1514
-- Name: contentrelations_refcontent_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contentrelations
    ADD CONSTRAINT contentrelations_refcontent_fkey FOREIGN KEY (refcontent) REFERENCES contents(contentid);


--
-- TOC entry 1831 (class 2606 OID 3365401)
-- Dependencies: 1816 1513 1521
-- Name: contentrelations_refpage_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contentrelations
    ADD CONSTRAINT contentrelations_refpage_fkey FOREIGN KEY (refpage) REFERENCES pages(code);


--
-- TOC entry 1832 (class 2606 OID 3365406)
-- Dependencies: 1523 1513 1818
-- Name: contentrelations_refresource_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contentrelations
    ADD CONSTRAINT contentrelations_refresource_fkey FOREIGN KEY (refresource) REFERENCES resources(resid);


--
-- TOC entry 1833 (class 2606 OID 3365411)
-- Dependencies: 1514 1515 1803
-- Name: contentsearch_contentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY contentsearch
    ADD CONSTRAINT contentsearch_contentid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);


--
-- TOC entry 1834 (class 2606 OID 3365416)
-- Dependencies: 1516 1806 1517
-- Name: jpcontentfeedback_rating_refcommentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpcontentfeedback_rating
    ADD CONSTRAINT jpcontentfeedback_rating_refcommentid_fkey FOREIGN KEY (commentid) REFERENCES jpcontentfeedback_comments(id);


--
-- TOC entry 1835 (class 2606 OID 3365421)
-- Dependencies: 1521 1816 1518
-- Name: jpmyportalplus_userpageconfig_pagecode_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY jpmyportalplus_userpageconfig
    ADD CONSTRAINT jpmyportalplus_userpageconfig_pagecode_fkey FOREIGN KEY (pagecode) REFERENCES pages(code);


--
-- TOC entry 1836 (class 2606 OID 3365426)
-- Dependencies: 1521 1814 1520
-- Name: pages_modelcode_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY pages
    ADD CONSTRAINT pages_modelcode_fkey FOREIGN KEY (modelcode) REFERENCES pagemodels(code);


--
-- TOC entry 1837 (class 2606 OID 3365431)
-- Dependencies: 1797 1511 1522
-- Name: resourcerelations_refcategory_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY resourcerelations
    ADD CONSTRAINT resourcerelations_refcategory_fkey FOREIGN KEY (refcategory) REFERENCES categories(catcode);


--
-- TOC entry 1838 (class 2606 OID 3365436)
-- Dependencies: 1522 1523 1818
-- Name: resourcerelations_resid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY resourcerelations
    ADD CONSTRAINT resourcerelations_resid_fkey FOREIGN KEY (resid) REFERENCES resources(resid);


--
-- TOC entry 1839 (class 2606 OID 3365441)
-- Dependencies: 1525 1521 1816
-- Name: showletconfig_pagecode_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY showletconfig
    ADD CONSTRAINT showletconfig_pagecode_fkey FOREIGN KEY (pagecode) REFERENCES pages(code);


--
-- TOC entry 1840 (class 2606 OID 3365446)
-- Dependencies: 1524 1820 1525
-- Name: showletconfig_showletcode_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY showletconfig
    ADD CONSTRAINT showletconfig_showletcode_fkey FOREIGN KEY (showletcode) REFERENCES showletcatalog(code);


--
-- TOC entry 1841 (class 2606 OID 3365451)
-- Dependencies: 1528 1803 1514
-- Name: workcontentrelations_contentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY workcontentrelations
    ADD CONSTRAINT workcontentrelations_contentid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);


--
-- TOC entry 1842 (class 2606 OID 3365456)
-- Dependencies: 1514 1803 1529
-- Name: workcontentsearch_contentid_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY workcontentsearch
    ADD CONSTRAINT workcontentsearch_contentid_fkey FOREIGN KEY (contentid) REFERENCES contents(contentid);


--
-- TOC entry 1847 (class 0 OID 0)
-- Dependencies: 6
-- Name: public; Type: ACL; Schema: -; Owner: -
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2011-11-20 17:08:45 CET

--
-- PostgreSQL database dump complete
--

