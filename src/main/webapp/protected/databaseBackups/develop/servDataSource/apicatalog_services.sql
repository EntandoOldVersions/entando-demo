INSERT INTO apicatalog_services (servicekey, resource, description, parameters, tag, freeparameters, isactive, ishidden, myentando, authenticationrequired, requiredpermission, requiredgroup) VALUES ('contents', 'jacms:contents', '<?xml version="1.0" encoding="UTF-8"?>
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

', 1, 0, 1, 0, NULL, NULL);
INSERT INTO apicatalog_services (servicekey, resource, description, parameters, tag, freeparameters, isactive, ishidden, myentando, authenticationrequired, requiredpermission, requiredgroup) VALUES ('content', 'jacms:content', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Webinar sull''integrazione della piattaforma Entando e Pentaho Business Intelligence</property>
<property key="it">Webinar sull''integrazione della piattaforma Entando e Pentaho Business Intelligence</property>
</properties>

', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="id">NEW11</property>
<property key="modelId">2</property>
</properties>

', 'jacms:content', NULL, 1, 0, 1, 0, NULL, NULL);
INSERT INTO apicatalog_services (servicekey, resource, description, parameters, tag, freeparameters, isactive, ishidden, myentando, authenticationrequired, requiredpermission, requiredgroup) VALUES ('news_test', 'jacms:content', '<?xml version="1.0" encoding="UTF-8"?>
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

', 1, 0, 1, 0, NULL, NULL);
INSERT INTO apicatalog_services (servicekey, resource, description, parameters, tag, freeparameters, isactive, ishidden, myentando, authenticationrequired, requiredpermission, requiredgroup) VALUES ('generic_contents', 'jacms:contents', '<?xml version="1.0" encoding="UTF-8"?>
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

', 'jacms:contents', NULL, 1, 0, 1, NULL, NULL, NULL);
