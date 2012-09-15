--
-- PostgreSQL database dump
--

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO categories (catcode, parentcode, titles) VALUES ('home', 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Generale</property>
<property key="en">All</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('events', 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Events</property>
<property key="it">Eventi</property>
</properties>

');
INSERT INTO categories (catcode, parentcode, titles) VALUES ('footerlinks', 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Footer Links</property>
<property key="it">Link per Footer</property>
</properties>

');


--
-- PostgreSQL database dump complete
--

