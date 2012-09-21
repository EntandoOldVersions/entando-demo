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
-- Data for Name: apicatalog_services; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO apicatalog_services (servicekey, resource, description, parameters, tag, freeparameters, isactive, myentando, authenticationrequired, requiredpermission, requiredgroup, ishidden) VALUES ('contents', 'jacms:contents', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">List news</property>
<property key="it">Lista news</property>
</properties>

', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentType">NEW</property>
<property key="modelId">25</property>
</properties>

', 'jacms:contents', '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <freeparameters>
    <parameter name="modelId" />
  </freeparameters>
</config>

', 1, 1, 0, NULL, NULL, 0);
INSERT INTO apicatalog_services (servicekey, resource, description, parameters, tag, freeparameters, isactive, myentando, authenticationrequired, requiredpermission, requiredgroup, ishidden) VALUES ('content', 'jacms:content', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Webinar sull''integrazione della piattaforma Entando e Pentaho Business Intelligence</property>
<property key="it">Webinar sull''integrazione della piattaforma Entando e Pentaho Business Intelligence</property>
</properties>

', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="id">NEW11</property>
<property key="modelId">2</property>
</properties>

', 'jacms:content', NULL, 1, 1, 0, NULL, NULL, 0);
INSERT INTO apicatalog_services (servicekey, resource, description, parameters, tag, freeparameters, isactive, myentando, authenticationrequired, requiredpermission, requiredgroup, ishidden) VALUES ('news_test', 'jacms:content', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">erogazione NEW17</property>
<property key="it">erogazione NEW17</property>
</properties>

', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="id">NEW17</property>
<property key="modelId">2</property>
</properties>

', 'jacms:content', '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <freeparameters>
    <parameter name="modelId" />
  </freeparameters>
</config>

', 1, 1, 0, NULL, NULL, 0);
INSERT INTO apicatalog_services (servicekey, resource, description, parameters, tag, freeparameters, isactive, myentando, authenticationrequired, requiredpermission, requiredgroup, ishidden) VALUES ('generic_contents', 'jacms:contents', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Generic Contents</property>
<property key="it">Contenuti generici</property>
<property key="de">Generic Contents</property>
</properties>

', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentType">CNG</property>
<property key="modelId">31</property>
</properties>

', 'jacms:contents', NULL, 1, 1, NULL, NULL, NULL, 0);


--
-- PostgreSQL database dump complete
--

