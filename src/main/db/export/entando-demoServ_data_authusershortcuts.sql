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
-- Data for Name: authusershortcuts; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO authusershortcuts (username, config) VALUES ('jeff', '<?xml version="1.0" encoding="UTF-8"?>
<shortcuts>
	<box pos="0">core.component.categories</box>
	<box pos="1">core.component.group.list</box>
	<box pos="2">core.component.user.list</box>
	<box pos="3">core.portal.pageTree</box>
	<box pos="4">core.portal.showletType</box>
	<box pos="5">core.tools.setting</box>
	<box pos="6">jacms.content.list</box>
	<box pos="7">jacms.content.new</box>
	<box pos="8">jpuserprofile.profile.list</box>
	<box pos="9">jpmyportalplus.config.shortCut</box>
</shortcuts>

');
INSERT INTO authusershortcuts (username, config) VALUES ('admin', '<?xml version="1.0" encoding="UTF-8"?>
<shortcuts>
	<box pos="0">jacms.contentType</box>
	<box pos="1">core.component.user.list</box>
	<box pos="2">core.tools.setting</box>
	<box pos="3">jacms.content.new</box>
	<box pos="4">jacms.content.list</box>
	<box pos="5">core.component.labels.list</box>
	<box pos="6">core.portal.pageTree</box>
	<box pos="7">core.component.categories</box>
	<box pos="8">core.tools.entities</box>
	<box pos="9">core.portal.showletType</box>
</shortcuts>

');


--
-- PostgreSQL database dump complete
--

