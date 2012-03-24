--
-- PostgreSQL database dump
--

-- Started on 2012-03-24 19:47:31 CET

SET client_encoding = 'UTF8';
SET standard_conforming_strings = off;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET escape_string_warning = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 1862 (class 0 OID 560333)
-- Dependencies: 127
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: agile
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
-- TOC entry 1863 (class 0 OID 560339)
-- Dependencies: 128
-- Data for Name: contentmodels; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (1, 'TST', 'Main', 'TITLE $content.Title.text', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (11, 'TST', 'for List', '<a href="$content.getContentLink()">$content.Title.text</a>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (31, 'CNG', 'for Lists', '<a href="$content.getContentLink()">$content.Title.text</a>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (32, 'CNG', 'for widget - documents', '<div class="widget_doc">
	#if ($content.Attach.size()>0)
	<ul>
	  #foreach ($item in $content.Attach )
	  <li><a href="$item.attachPath">$item.text</a></li>
	  #end
	</ul>
	#end
</div>', 'contentmodels/generic.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (4, 'DWN', 'Complete def. (title, abstract,file)', '<h2>$content.Title.text</h2>
	<p>$content.Abstract.text</p>
	<p><a href="$content.File.attachPath">$content.Title.text</a></p>
', 'contentmodels/generic.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (42, 'DWN', 'for widget', '<div class="widget_doc">
	<a href="$content.File.attachPath" title="$i18n.getLabel("DOWNLOAD")">$content.Title.text</a>
</div>', 'contentmodels/generic.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (33, 'CNG', 'for widget - mobile', '<div class="news">
	#if ( $content.Image1.getImagePath("2")!="" )
	<img src="$content.Image1.getImagePath("2")" alt="$content.Image1.text" class="left"/>
	#end

	#if ($content.Links.size()>0)
  	<ul>
	  #foreach ($item in $content.Links)
	  <li><a href="$item.destination">$item.text</a></li>
	  #end
	</ul>
	#end
</div>', 'contentmodels/generic.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (3, 'CNG', 'Complete def. (title, text, attach, links)', '<div class="news-2">
	<h2>$content.Title.text</h2>

	#if ( $content.Image1.getImagePath("3")!="" )
	<img src="$content.Image1.getImagePath("3")" alt="$content.Image1.text" />
	#end

	$content.Body.text

	#if ( $content.Image2.getImagePath("2")!="" )
	<img src="$content.Image2.getImagePath("2")" alt="$content.Image2.text" />
	#end

	#if ($content.Attach.size()>0)
	<h3>$i18n.getLabel("ATTACHMENTS")</h3>
	<ul>
	  #foreach ($item in $content.Attach )
	  <li><a href="$item.attachPath">$item.text</a></li>
	  #end
	</ul>
	#end
	#if ($content.Links.size()>0)
	<h3>$i18n.getLabel("LINKS")</h3>
	<ul>
	  #foreach ($item in $content.Links)
	  <li><a href="$item.destination">$item.text</a></li>
	  #end
	</ul>
	#end
</div>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (41, 'DWN', 'for Lists', '<a href="$content.getContentLink()">$content.Title.text</a>', 'contentmodels/generic.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (51, 'YTB', 'for Lists (title)', '<p><a href="$content.getContentLink()">$content.Title.text</a></p>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (5, 'YTB', 'Complete def. (title, video, text, attach, links)', '<div class="ytb-5">
	<h2>$content.Title.text</h2>

	<div class="video">
		<iframe width="640" height="360" src="http://www.youtube.com/embed/$content.VideoCode.text?wmode=transparent"" frameborder="0" allowfullscreen></iframe>
	</div>

	$content.Body.text

	#if ($content.Attach.size()>0)
	<h3>$i18n.getLabel("ATTACHMENTS")</h3>
	<ul>
	  #foreach ($item in $content.Attach )
	  <li><a href="$item.attachPath">$item.text</a></li>
	  #end
	</ul>
	#end
	#if ($content.Links.size()>0)
	<h3>$i18n.getLabel("LINKS")</h3>
	<ul>
	  #foreach ($item in $content.Links)
	  <li><a href="$item.destination">$item.text</a></li>
	  #end
	</ul>
	#end
</div>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (25, 'NEW', 'for List - Mobile', '<a href="$content.contentLink">$content.Title.text</a>', 'contentmodels/NEW.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (52, 'YTB', 'for widget (title, video, descr)', '<div class="widget">
<div class="video">
	<iframe width="290" height="177" src="http://www.youtube.com/embed/$content.VideoCode.text?wmode=transparent"" frameborder="0" allowfullscreen></iframe>
</div>
</div>
#if ($content.isUserAllowed("editContents"))
<!-- modal popup start-->
<p class="vai">
<a id="options_anchor_$content.getId()" href="javascript:void(0)">$i18n.getLabel("EDIT_CONTENT")</a>
<script type=''text/javascript''>
jQuery(document).ready(function () { 
jQuery.struts2_jquery.bind(jQuery(''#options_anchor_$content.getId()''),{
"opendialog": "widgetDialog",
"jqueryaction": "anchor",
"id": "anchor_config_$content.getId()",
"href": "$content.getConfigParameter("applicationBaseURL")do/jpcmsshortcut/intro?contentId=$content.getId()&attributeName=VideoCode&attributeName=Title",
"button": false
});
 });  
</script>
</p>
<!-- modal popup end -->
#end', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (23, 'NEW', 'for Archive - style 2', '<div class="news">
  <p>$content.Date.getFormattedDate("dd/MM/yyyy")</p>
  <h3>$content.Title.text</h3>
  <p>$content.Abstract.text</p>
  <p class="alignRight"><a href="$content.contentLink">Read More &raquo;</a></p>
</div>', 'contentmodels/NEW.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (22, 'NEW', 'for Archive - style 1', '<div class="news"> 
#if ($content.Image1.imagePath("2") != "")
<img src="$content.Image1.imagePath("2")" alt="$content.Image1.text" class="left" />
#end

<div class="box">
  <h3>$content.Title.text</h3>
  <p>$content.Date.getFormattedDate("dd/MM/yyyy")</p>
  <p>$content.Abstract.text</p>
  <p class="alignRight"><a href="$content.contentLink">Read More &raquo;</a></p>
  </div>

</div>', 'contentmodels/NEW.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (24, 'NEW', 'for Archive - style 3', '<div class="news_2images clear">
<div class="box_2images">
#if ($content.Image1.imagePath("1") != "")
<img src="$content.Image1.imagePath("1")" alt="$content.Image1.text" />
#end
#if ($content.Image2.imagePath("1") != "")
<img src="$content.Image2.imagePath("1")" alt="$content.Image2.text" />
#end
</div>

<div class="box">
  <h3>$content.Title.text</h3>
  <p class="alignRight">$content.Date.getFormattedDate("dd/MM/yyyy")</p>
  <p>$content.Abstract.text</p>
  <p class="alignRight"><a href="$content.contentLink">Read More &raquo;</a></p>
</div>

</div>', 'contentmodels/NEW.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (2, 'NEW', 'Complete def. (title, date, text, attach, links)', '<div class="news-2">
	<h2>$content.Title.text</h2>
	<p>
	  $content.Date.fullDate
	</p>
  	
	#if ( $content.Image1.getImagePath("2")!="" )
	<img src="$content.Image1.getImagePath("2")" alt="$content.Image1.text" />
	#end

	$content.Body.text

	#if ( $content.Image2.getImagePath("2")!="" )
	<img src="$content.Image2.getImagePath("2")" alt="$content.Image2.text" />
	#end

	#if ($content.Attach.size()>0)
	<h3>$i18n.getLabel("ATTACHMENTS")</h3>
	<ul>
	  #foreach ($item in $content.Attach )
	  <li><a href="$item.attachPath">$item.text</a></li>
	  #end
	</ul>
	#end
	#if ($content.Links.size()>0)
	<h3>$i18n.getLabel("LINKS")</h3>
	<ul>
	  #foreach ($item in $content.Links)
	  <li><a href="$item.destination">$item.text</a></li>
	  #end
	</ul>
	#end
</div>', 'contentmodels/NEW.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (35, 'CNG', 'footer links', '<div class="footer-column">
<h2 class="title">$content.Title.text</h2>
<ul>
#foreach ($item in $content.Links)
<li><a href="$item.destination">$item.text</a></li>
#end
</ul>
</div>', NULL);
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (26, 'NEW', 'per widget', '<div class="news">
	#if ( $content.Image1.getImagePath("1")!="" )
	<img src="$content.Image1.getImagePath("1")" alt="$content.Image1.text"  class="left"/>
	#end
	<h3><a href="$content.contentLink">$content.Title.text</a></h3>
<p class="share-buttons shares$content.id">
	<!-- twitter share -->
	<a href="http://twitter.com/share"
		class="twitter-share-button"
		data-url="$content.contentLink"
		data-text="$content.Title.text"
		data-count="none"
		data-lang="it">
			$i18n.getLabel("TWEET")</a>
	<!-- twitter share end -->
	<!-- fb start-->
	<span id="fb-root-$content.id"></span>
	<script src="http://connect.facebook.net/it_IT/all.js#xfbml=$content.id"></script>
	<fb:like href="$content.contentLink" send="false" layout="button_count" width="120" show_faces="false" font="arial"></fb:like>
	<!-- fb end -->
</p>

</div>

', 'contentmodels/NEW.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (53, 'YTB', 'preview', '<div class="video video53">
  <iframe width="290" height="177" src="http://www.youtube.com/embed/$content.VideoCode.text?wmode=transparent"" frameborder="0" allowfullscreen></iframe>
  <div class="right">
	<h3><a href="$content.contentLink">$content.Title.text</a></h3>
      <p>
      $content.Abstract.text
      </p>
      
  </div>
</div>', 'contentmodels/YTB.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (21, 'NEW', 'for lists', '<div class="new-21">
	<h3><a href="$content.contentLink">$content.Title.text</a></h3>
	<p>$content.Date.shortDate</p>
	<p>
		$content.Abstract.text
	</p>
</div>', 'contentmodels/NEW.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (34, 'CNG', 'for widget (title,image,abstract)', '<div class="widget">
<h3><a href="$content.getContentLink()">$content.Title.text</a></h3>
#if ( $content.Image1.getImagePath("2")!="" )
<img src="$content.Image1.getImagePath("2")" alt="$content.Image1.text" class="left" />
#end
<p>$content.Abstract.text</p>
</div>
#if ($content.isUserAllowed("editContents"))
<!-- modal popup start-->
<p class="vai">
<a id="options_anchor_$content.getId()" href="javascript:void(0)">$i18n.getLabel("EDIT_CONTENT")</a>
<script type=''text/javascript''>
jQuery(document).ready(function () { 
jQuery.struts2_jquery.bind(jQuery(''#options_anchor_$content.getId()''),{
"opendialog": "widgetDialog",
"jqueryaction": "anchor",
"id": "anchor_config_$content.getId()",
"href": "$content.getConfigParameter("applicationBaseURL")do/jpcmsshortcut/intro?langCode=$content.getLangCode()&contentId=$content.getId()&attributeName=Title&attributeName=Abstract",
"button": false
});
 });  
</script>
</p>
<!-- modal popup end -->
#if ($content.isUserAllowed("enterBackend"))
<p class="vai">
  <a href="$content.getConfigParameter("applicationBaseURL")do/jacms/Content/edit.action?request_locale=$content.getLangCode()&contentId=$content.getId()">$i18n.getLabel("EDIT_CONTENT_BACKOFFICE")</a>
</p>
#end
#end', 'contentmodels/generic.css');
INSERT INTO contentmodels (modelid, contenttype, descr, model, stylesheet) VALUES (27, 'NEW', 'per widget with fast edit', '<div class="news">
	#if ( $content.Image1.getImagePath("1")!="" )
	<img src="$content.Image1.getImagePath("1")" alt="$content.Image1.text"  class="left"/>
	#end
	<h3><a href="$content.contentLink">$content.Title.text</a></h3>
<p class="share-buttons shares$content.id">
	<!-- twitter share -->
	<a href="http://twitter.com/share"
		class="twitter-share-button"
		data-url="$content.contentLink"
		data-text="$content.Title.text"
		data-count="none"
		data-lang="it">
			$i18n.getLabel("TWEET")</a>
	<!-- twitter share end -->
	<!-- fb start-->
	<span id="fb-root-$content.id"></span>
	<script src="http://connect.facebook.net/it_IT/all.js#xfbml=$content.id"></script>
	<fb:like href="$content.contentLink" send="false" layout="button_count" width="120" show_faces="false" font="arial"></fb:like>
	<!-- fb end -->
</p>
#if ($content.isUserAllowed("editContents"))
<!-- modal popup start-->
<p class="vai">
<a id="options_anchor_$content.getId()" href="javascript:void(0)">$i18n.getLabel("EDIT_CONTENT")</a>
<script type=''text/javascript''>
jQuery(document).ready(function () { 
jQuery.struts2_jquery.bind(jQuery(''#options_anchor_$content.getId()''),{
"opendialog": "widgetDialog",
"jqueryaction": "anchor",
"id": "anchor_config_$content.getId()",
  "href": "$content.getConfigParameter("applicationBaseURL")do/jpcmsshortcut/intro?request_locale=$content.getLangCode()&langCode=$content.getLangCode()&contentId=$content.getId()&attributeName=Title&attributeName=Abstract",
"button": false
});
 });  
</script>
</p>
<!-- modal popup end -->
#if ($content.isUserAllowed("enterBackend"))
<p class="vai">
<a href="$content.getConfigParameter("applicationBaseURL")do/jacms/Content/edit.action?request_locale=$content.getLangCode()&contentId=$content.getId()">$i18n.getLabel("EDIT_CONTENT_BACKOFFICE")</a>
</p>
#end
#end
</div>', 'contentmodels/NEW.css');


--
-- TOC entry 1865 (class 0 OID 560348)
-- Dependencies: 130
-- Data for Name: contents; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW15', 'NEW', 'LIVE EVENT - Portal and Business Intelligence: across organizational boundaries', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW15" typecode="NEW" typedescr="News"><descr>LIVE EVENT - Portal and Business Intelligence: across organizational boundaries</descr><groups mainGroup="free"><group name="free" /></groups><categories><category id="events" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">EVENTO LIVE - Il Portale e la Business Intelligence: oltre i confini dell''organizzazione</text><text lang="en">LIVE EVENT - Portal and Business Intelligence: across organizational boundaries</text></attribute><attribute name="Date" attributetype="Date"><date>20110929</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Tzente, Pentaho e Bnova sono lieti di annunciare l''evento live dal titolo "Il Portale e la Business Intelligence: oltre i confini dell''organizzazione" che si svolgerà il 29 Settembre a Roma.</text><text lang="en">Tzente, Pentaho and Bnova are pleased to announce the live event "Portal and Business Intelligence: across organizational boundaries" which will be held on the 29th of September in Rome.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p><strong>Tzente</strong>, <strong>Pentaho</strong> e <strong>Bnova</strong> sono liete di annunciare il primo evento congiunto in cui verranno presentati i benefici di un sistema integrato<strong> Portal &amp; BI</strong> per una moderna <strong>organizzazione 2.0</strong>.</p>
<p>Immaginiamo un''organizzazione in cui l''accesso alle informazioni strutturate diventa pi&ugrave; semplice, immediato e personalizzato grazie all''utilizzo di <strong>Internet</strong> e <strong>dispositivi Mobile</strong>, pensiamo a un <strong>miglioramento</strong> <strong>della produttivit&agrave;</strong> e immaginiamo ancora una <strong>condivisione dei processi </strong>aziendali dinamica, veloce oltre i confini dell''organizzazione.</p>
<p>Tutto questo oggi &egrave; possibile grazie all''integrazione degli strumenti di <strong>Business Intelligence di Pentaho</strong> e il sistema <strong>Portal jAPS 2.0 Entando</strong>. Le informazioni non sono pi&ugrave; confinate nell''orizzonte degli specialisti, diventano patrimonio a disposizione di tutti gli interessati che possono consultare, sulla intranet, sul portale aziendale, e attraverso le mobile apps sul proprio tablet i risultati dinamici della Business Intelligence.</p>
<p>Partecipate al nostro seminario live ed avrete la possibilit&agrave; di:</p>
<ul>
    <li>scoprire le importanti <strong>novit&agrave; della versione 4.0 della Pentaho BI suite</strong>, tra cui l''interactive reporting e la nuova interfaccia utente ;</li>
    <li>conoscere le ultime <strong>novit&agrave; della piattaforma jAPS 2.0 Entando</strong> (mobile apps, API, social &amp; collaboration);</li>
    <li>vedere e toccar con mano come <strong>Entando e Pentaho</strong> insieme <strong>portino</strong> <strong>effettivo valore </strong>ad una organizzazione.</li>
</ul>]]></hypertext><hypertext lang="en"><![CDATA[<p><strong>Tzente</strong>, <strong>Pentaho</strong> and <strong>Bnova</strong> are pleased to announce the live event &quot;<strong>Portal and Business Intelligence: across organizational boundaries</strong>&quot; which will be held on the<strong> 29th of September </strong>in <strong>Rome</strong>.</p>
<p>Imagine an organization where the <strong>access to structured information</strong> is <strong>easier</strong>, <strong>immediate</strong> and <strong>personalized</strong> through the use of Internet and mobile devices. Think about an <strong>improvement</strong> of <strong>employee productivity</strong> simplifying everyday business activities through a simple, familiar and&nbsp;coherent environment: the sharing of <strong>business processes</strong> becomes <strong>faster</strong> and <strong>more accessible</strong> across organizational boundaries.</p>
<p>This is now possible thanks to the integration of <strong>Pentaho Business Intelligence </strong>tools and <strong>jAPS Entando Portal System</strong>.</p>
<p>The ability to offer reports to different types of users according to the profile and the role opens <strong>new scenarios in the dissemination of corporate knowledge</strong>. Each user can access, through intranet and corporate portal, to the results of the dynamic business intelligence, according to visibility rules and parameters related to its role in the company.</p>
<p><strong>Specialists</strong> could use the powerful <strong>processing</strong>, <strong>analysis</strong> and <strong>reporting</strong> <strong>features of Pentaho</strong> while other <strong>users</strong> <strong>could easily see the results</strong> and <strong>managers</strong> can access to effective tools for <strong>monitoring</strong> and <strong>decision support</strong>, with <strong>update data</strong>.</p>
<p>Join our live seminar and you will have the opportunity to:</p>
<ul>
    <li>discover the important improvements of <strong>Pentaho BI suite version 4.0</strong>, including the new interactive reporting and user interface;</li>
    <li>learn about the <strong>latest version of jAPS 2.0 Entando</strong> (mobile apps, APIs, social &amp; collaboration);</li>
    <li>see how Pentaho and Entando bring together <strong>real value</strong> to an organization.</li>
</ul>
<p><strong><br />
</strong></p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="14" lang="en" /><text lang="it">Banner LIVE EVENT</text><text lang="en">Banner LIVE EVENT</text></attribute><attribute name="Image2" attributetype="Image"><resource resourcetype="Image" id="29" lang="en" /><text lang="en">Live Event</text></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><attribute name="TXT" attributetype="Text"><text lang="en">Prova</text></attribute></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>jeff</lastEditor><created>20110926104401</created><lastModified>20110927141550</lastModified></content>
', '20110926104401', '20110927141550', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW15" typecode="NEW" typedescr="News"><descr>LIVE EVENT - Portal and Business Intelligence: across organizational boundaries</descr><groups mainGroup="free"><group name="free" /></groups><categories><category id="events" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">EVENTO LIVE - Il Portale e la Business Intelligence: oltre i confini dell''organizzazione</text><text lang="en">LIVE EVENT - Portal and Business Intelligence: across organizational boundaries</text></attribute><attribute name="Date" attributetype="Date"><date>20110929</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Tzente, Pentaho e Bnova sono lieti di annunciare l''evento live dal titolo "Il Portale e la Business Intelligence: oltre i confini dell''organizzazione" che si svolgerà il 29 Settembre a Roma.</text><text lang="en">Tzente, Pentaho and Bnova are pleased to announce the live event "Portal and Business Intelligence: across organizational boundaries" which will be held on the 29th of September in Rome.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p><strong>Tzente</strong>, <strong>Pentaho</strong> e <strong>Bnova</strong> sono liete di annunciare il primo evento congiunto in cui verranno presentati i benefici di un sistema integrato<strong> Portal &amp; BI</strong> per una moderna <strong>organizzazione 2.0</strong>.</p>
<p>Immaginiamo un''organizzazione in cui l''accesso alle informazioni strutturate diventa pi&ugrave; semplice, immediato e personalizzato grazie all''utilizzo di <strong>Internet</strong> e <strong>dispositivi Mobile</strong>, pensiamo a un <strong>miglioramento</strong> <strong>della produttivit&agrave;</strong> e immaginiamo ancora una <strong>condivisione dei processi </strong>aziendali dinamica, veloce oltre i confini dell''organizzazione.</p>
<p>Tutto questo oggi &egrave; possibile grazie all''integrazione degli strumenti di <strong>Business Intelligence di Pentaho</strong> e il sistema <strong>Portal jAPS 2.0 Entando</strong>. Le informazioni non sono pi&ugrave; confinate nell''orizzonte degli specialisti, diventano patrimonio a disposizione di tutti gli interessati che possono consultare, sulla intranet, sul portale aziendale, e attraverso le mobile apps sul proprio tablet i risultati dinamici della Business Intelligence.</p>
<p>Partecipate al nostro seminario live ed avrete la possibilit&agrave; di:</p>
<ul>
    <li>scoprire le importanti <strong>novit&agrave; della versione 4.0 della Pentaho BI suite</strong>, tra cui l''interactive reporting e la nuova interfaccia utente ;</li>
    <li>conoscere le ultime <strong>novit&agrave; della piattaforma jAPS 2.0 Entando</strong> (mobile apps, API, social &amp; collaboration);</li>
    <li>vedere e toccar con mano come <strong>Entando e Pentaho</strong> insieme <strong>portino</strong> <strong>effettivo valore </strong>ad una organizzazione.</li>
</ul>]]></hypertext><hypertext lang="en"><![CDATA[<p><strong>Tzente</strong>, <strong>Pentaho</strong> and <strong>Bnova</strong> are pleased to announce the live event &quot;<strong>Portal and Business Intelligence: across organizational boundaries</strong>&quot; which will be held on the<strong> 29th of September </strong>in <strong>Rome</strong>.</p>
<p>Imagine an organization where the <strong>access to structured information</strong> is <strong>easier</strong>, <strong>immediate</strong> and <strong>personalized</strong> through the use of Internet and mobile devices. Think about an <strong>improvement</strong> of <strong>employee productivity</strong> simplifying everyday business activities through a simple, familiar and&nbsp;coherent environment: the sharing of <strong>business processes</strong> becomes <strong>faster</strong> and <strong>more accessible</strong> across organizational boundaries.</p>
<p>This is now possible thanks to the integration of <strong>Pentaho Business Intelligence </strong>tools and <strong>jAPS Entando Portal System</strong>.</p>
<p>The ability to offer reports to different types of users according to the profile and the role opens <strong>new scenarios in the dissemination of corporate knowledge</strong>. Each user can access, through intranet and corporate portal, to the results of the dynamic business intelligence, according to visibility rules and parameters related to its role in the company.</p>
<p><strong>Specialists</strong> could use the powerful <strong>processing</strong>, <strong>analysis</strong> and <strong>reporting</strong> <strong>features of Pentaho</strong> while other <strong>users</strong> <strong>could easily see the results</strong> and <strong>managers</strong> can access to effective tools for <strong>monitoring</strong> and <strong>decision support</strong>, with <strong>update data</strong>.</p>
<p>Join our live seminar and you will have the opportunity to:</p>
<ul>
    <li>discover the important improvements of <strong>Pentaho BI suite version 4.0</strong>, including the new interactive reporting and user interface;</li>
    <li>learn about the <strong>latest version of jAPS 2.0 Entando</strong> (mobile apps, APIs, social &amp; collaboration);</li>
    <li>see how Pentaho and Entando bring together <strong>real value</strong> to an organization.</li>
</ul>
<p><strong><br />
</strong></p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="14" lang="en" /><text lang="it">Banner LIVE EVENT</text><text lang="en">Banner LIVE EVENT</text></attribute><attribute name="Image2" attributetype="Image"><resource resourcetype="Image" id="29" lang="en" /><text lang="en">Live Event</text></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /><attribute name="TXT" attributetype="Text"><text lang="en">Prova</text></attribute></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>jeff</lastEditor><created>20110926104401</created><lastModified>20110927141550</lastModified></content>
', 'free', '5.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW11', 'NEW', 'Webinar sull''integrazione della piattaforma Entando e Pentaho Business Intelligence', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW11" typecode="NEW" typedescr="News"><descr>Webinar sull''integrazione della piattaforma Entando e Pentaho Business Intelligence</descr><groups mainGroup="free"><group name="free" /></groups><categories><category id="events" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Webcast sull''integrazione della piattaforma jAPS 2.0 entando e Pentaho Business Intelligence</text><text lang="en">Webcast: "Portal Meets Business Intelligence: 3A Latte Arborea, a Case Study about Dairy and Farming in Italy"</text></attribute><attribute name="Date" attributetype="Date"><date>20110524</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Tzente e Pentaho, il 24 Maggio alle ore 16.00 italiane, terranno un Webinar per la presentazione dell’integrazione tra la piattaforma Entando e la suite Pentaho Business Intelligence dal titolo “I Sistemi Portal incontrano la Business Intelligence: il processo decisionale nel settore della produzione Lattiero Casearia; il caso di 3A Latte Arborea”.</text><text lang="en">Tzente and Pentaho, on 24 th of May at 4:00 p.m. Italian time, organize a Webinar to present the integration between Entando platform and Pentaho Business Intelligence entitled "Portal Meets Business Intelligence: 3A Latte Arborea, a Case Study about Dairy and Farming in Italy".</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p><strong>Tzente</strong> e <strong>Pentaho</strong>, il <strong>24 Maggio alle ore 16.00</strong>, terranno un <strong>Webinar</strong> per la presentazione dell&rsquo;integrazione tra la piattaforma Entando e la suite Pentaho Business Intelligence dal titolo &ldquo;<strong>I Sistemi Portal incontrano la Business Intelligence: il processo decisionale nel settore della produzione Lattiero Casearia;  il caso di 3A Latte Arborea</strong>&rdquo;.</p>
<p>La soluzione integrata consente a dipendenti e altri interlocutori di un''organizzazione di reperire informazioni, usufruire di servizi e svolgere le proprie attivit&agrave; quotidiane attraverso un unico punto di accesso.</p>
<p>Nel corso del webinar, i partecipanti potranno scoprire come l''integrazione del sistema portal Entando e la BI Pentaho possa soddisfare un intero processo di analisi di dati e decisionale,  attraverso il caso reale di &ldquo;3A Latte Arborea&rdquo;.<br />
<br />
La forte crisi del settore di produzione del latte italiano ha reso necessario lo sviluppo di un progetto di BI dove, oltre alla valorizzazione delle informazioni disponibili nel caseificio, sono necessari la raccolta e valorizzazione dei dati delle aziende zootecniche che vi confluiscono.</p>
<p>Nello specifico caso, la soluzione integrata elabora le informazioni raccolte e genera delle KPI che le singole aziende possono comparare con l''intero comparto. Il sistema permette inoltre di evidenziare le aree di performance positive e negative al fine di intervenire sui processi decisionali.</p>
<p><strong>Partecipate al Webinar per scoprire come l''integrazione tra le soluzioni portal e BI permetta ottenere risultati di alto valore strategico e di proporli in modo personalizzato e diffuso in ambiti aziendali o di filiera.</strong></p>]]></hypertext><hypertext lang="en"><![CDATA[<p><strong>Tzente</strong> and <strong>Pentaho</strong>, on <strong>24 th of May at 4:00 p.m.</strong> Italian time, organize a Webinar to present the integration between Entando platform and Pentaho Business Intelligence entitled &quot;<strong>Portal Meets Business Intelligence: 3A Latte Arborea, a Case Study about Dairy and Farming in Italy</strong>&quot;.</p>
<p>During this webinar, you will see how 3A Latte Arborea, an Italian dairy and farming company, is using an integrated instance of the open source portal Entando and Pentaho Business Intelligence to satisfy the entire analytics process of their products, from the producer to the dairy.</p>
<p>The integration between Entando and Pentaho allows users to leverage a simple, customizable web interface for information sharing, collaborating, reporting, and charting economic and productivity data. The system processes the collected information and generates key performance indicators (KPIs) that individual companies use to compare with the entire sector.It also highlights areas of positive and negative performance, allowing companies to make faster, more informed decisions .</p>
<p><strong>Join us for this live webcast, as we reveal how the integrated solution allows to achieve your business intelligence goals faster and streamline your business processes.</strong></p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="16" lang="en" /><text lang="en">Banner Webcast</text></attribute><attribute name="Image2" attributetype="Image"><resource resourcetype="Image" id="25" lang="en" /><text lang="en">Webcast Analytics</text></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>jeff</lastEditor><created>20110923152551</created><lastModified>20110927183443</lastModified></content>
', '20110923152551', '20110927183443', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW11" typecode="NEW" typedescr="News"><descr>Webinar sull''integrazione della piattaforma Entando e Pentaho Business Intelligence</descr><groups mainGroup="free"><group name="free" /></groups><categories><category id="events" /></categories><attributes><attribute name="Title" attributetype="Text"><text lang="it">Webcast sull''integrazione della piattaforma jAPS 2.0 entando e Pentaho Business Intelligence</text><text lang="en">Webcast: "Portal Meets Business Intelligence: 3A Latte Arborea, a Case Study about Dairy and Farming in Italy"</text></attribute><attribute name="Date" attributetype="Date"><date>20110524</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Tzente e Pentaho, il 24 Maggio alle ore 16.00 italiane, terranno un Webinar per la presentazione dell’integrazione tra la piattaforma Entando e la suite Pentaho Business Intelligence dal titolo “I Sistemi Portal incontrano la Business Intelligence: il processo decisionale nel settore della produzione Lattiero Casearia; il caso di 3A Latte Arborea”.</text><text lang="en">Tzente and Pentaho, on 24 th of May at 4:00 p.m. Italian time, organize a Webinar to present the integration between Entando platform and Pentaho Business Intelligence entitled "Portal Meets Business Intelligence: 3A Latte Arborea, a Case Study about Dairy and Farming in Italy".</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p><strong>Tzente</strong> e <strong>Pentaho</strong>, il <strong>24 Maggio alle ore 16.00</strong>, terranno un <strong>Webinar</strong> per la presentazione dell&rsquo;integrazione tra la piattaforma Entando e la suite Pentaho Business Intelligence dal titolo &ldquo;<strong>I Sistemi Portal incontrano la Business Intelligence: il processo decisionale nel settore della produzione Lattiero Casearia;  il caso di 3A Latte Arborea</strong>&rdquo;.</p>
<p>La soluzione integrata consente a dipendenti e altri interlocutori di un''organizzazione di reperire informazioni, usufruire di servizi e svolgere le proprie attivit&agrave; quotidiane attraverso un unico punto di accesso.</p>
<p>Nel corso del webinar, i partecipanti potranno scoprire come l''integrazione del sistema portal Entando e la BI Pentaho possa soddisfare un intero processo di analisi di dati e decisionale,  attraverso il caso reale di &ldquo;3A Latte Arborea&rdquo;.<br />
<br />
La forte crisi del settore di produzione del latte italiano ha reso necessario lo sviluppo di un progetto di BI dove, oltre alla valorizzazione delle informazioni disponibili nel caseificio, sono necessari la raccolta e valorizzazione dei dati delle aziende zootecniche che vi confluiscono.</p>
<p>Nello specifico caso, la soluzione integrata elabora le informazioni raccolte e genera delle KPI che le singole aziende possono comparare con l''intero comparto. Il sistema permette inoltre di evidenziare le aree di performance positive e negative al fine di intervenire sui processi decisionali.</p>
<p><strong>Partecipate al Webinar per scoprire come l''integrazione tra le soluzioni portal e BI permetta ottenere risultati di alto valore strategico e di proporli in modo personalizzato e diffuso in ambiti aziendali o di filiera.</strong></p>]]></hypertext><hypertext lang="en"><![CDATA[<p><strong>Tzente</strong> and <strong>Pentaho</strong>, on <strong>24 th of May at 4:00 p.m.</strong> Italian time, organize a Webinar to present the integration between Entando platform and Pentaho Business Intelligence entitled &quot;<strong>Portal Meets Business Intelligence: 3A Latte Arborea, a Case Study about Dairy and Farming in Italy</strong>&quot;.</p>
<p>During this webinar, you will see how 3A Latte Arborea, an Italian dairy and farming company, is using an integrated instance of the open source portal Entando and Pentaho Business Intelligence to satisfy the entire analytics process of their products, from the producer to the dairy.</p>
<p>The integration between Entando and Pentaho allows users to leverage a simple, customizable web interface for information sharing, collaborating, reporting, and charting economic and productivity data. The system processes the collected information and generates key performance indicators (KPIs) that individual companies use to compare with the entire sector.It also highlights areas of positive and negative performance, allowing companies to make faster, more informed decisions .</p>
<p><strong>Join us for this live webcast, as we reveal how the integrated solution allows to achieve your business intelligence goals faster and streamline your business processes.</strong></p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="16" lang="en" /><text lang="en">Banner Webcast</text></attribute><attribute name="Image2" attributetype="Image"><resource resourcetype="Image" id="25" lang="en" /><text lang="en">Webcast Analytics</text></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>jeff</lastEditor><created>20110923152551</created><lastModified>20110927183443</lastModified></content>
', 'free', '5.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG45', 'CNG', 'for widget - My Entando APP', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG45" typecode="CNG" typedescr="Generic Content"><descr>for widget - My Entando APP</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">APP My Entando</text><text lang="en">My Entando APP</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Un cruscotto configurabile che consente agli utenti di accedere da dispositivi Tablet e smartphone alle informazioni e ai servizi di un portale realizzato con la piattaforma Entando.&#xD;
La APP My Entando consente all''utente di creare il proprio desktop in maniera flessibile e dinamica.</text><text lang="en">A configurable dashboard that allows users to access from Smartphones and Tablet to information and services of a portal built on Entando platform.
My Entando APP allows user to create a customized desktop in a flexible and dynamic way.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>La APP My Entando consente all''utente di <strong>creare</strong> il <strong>proprio desktop</strong> in maniera <strong>flessibile</strong> e <strong>dinamica</strong>.</p>
<p>Un <strong>cruscotto configurabile</strong> che consente agli utenti di accedere da dispositivi <strong>Tablet</strong> e <strong>smartphone</strong> alle informazioni e ai servizi di un portale realizzato con la piattaforma Entando.</p>
<p>MyEntando offre un modo <strong>semplice</strong> e <strong>innovativo</strong> per <strong>divulgare</strong> in maniera automatica <strong>informazioni</strong>, <strong>dati</strong> e <strong>servizi</strong> di un portale attraverso un interfaccia grafica e un layout specifico per dispositivi tablet e smartphone.</p>]]></hypertext><hypertext lang="en"><![CDATA[<p>My Entando APP <strong>allows</strong> <strong>user</strong> to <strong>create</strong> a <strong>customized</strong> <strong>desktop</strong> in a flexible and dynamic way.</p>
<p>A <strong>configurable dashboard</strong> that enables users to <strong>access</strong> from Smartphones and Tablet to <strong>information</strong> and <strong>services</strong> of a portal built on Entando platform.</p>
<p>My Entando offers an easy and innovative way to automatically disclose information, data and services of a portal through a graphical interface and a specific layout for tablet devices and smartphones.</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="54" lang="en" /><text lang="it">APP My Entando</text><text lang="en">My Entando APP</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>17.0</version><lastEditor>jeff</lastEditor><created>20110926155919</created><lastModified>20111118163137</lastModified></content>
', '20110926155919', '20111118163137', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG45" typecode="CNG" typedescr="Generic Content"><descr>for widget - My Entando APP</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">APP My Entando</text><text lang="en">My Entando APP</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Un cruscotto configurabile che consente agli utenti di accedere da dispositivi Tablet e smartphone alle informazioni e ai servizi di un portale realizzato con la piattaforma Entando.&#xD;
La APP My Entando consente all''utente di creare il proprio desktop in maniera flessibile e dinamica.</text><text lang="en">A configurable dashboard that allows users to access from Smartphones and Tablet to information and services of a portal built on Entando platform.
My Entando APP allows user to create a customized desktop in a flexible and dynamic way.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>La APP My Entando consente all''utente di <strong>creare</strong> il <strong>proprio desktop</strong> in maniera <strong>flessibile</strong> e <strong>dinamica</strong>.</p>
<p>Un <strong>cruscotto configurabile</strong> che consente agli utenti di accedere da dispositivi <strong>Tablet</strong> e <strong>smartphone</strong> alle informazioni e ai servizi di un portale realizzato con la piattaforma Entando.</p>
<p>MyEntando offre un modo <strong>semplice</strong> e <strong>innovativo</strong> per <strong>divulgare</strong> in maniera automatica <strong>informazioni</strong>, <strong>dati</strong> e <strong>servizi</strong> di un portale attraverso un interfaccia grafica e un layout specifico per dispositivi tablet e smartphone.</p>]]></hypertext><hypertext lang="en"><![CDATA[<p>My Entando APP <strong>allows</strong> <strong>user</strong> to <strong>create</strong> a <strong>customized</strong> <strong>desktop</strong> in a flexible and dynamic way.</p>
<p>A <strong>configurable dashboard</strong> that enables users to <strong>access</strong> from Smartphones and Tablet to <strong>information</strong> and <strong>services</strong> of a portal built on Entando platform.</p>
<p>My Entando offers an easy and innovative way to automatically disclose information, data and services of a portal through a graphical interface and a specific layout for tablet devices and smartphones.</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="54" lang="en" /><text lang="it">APP My Entando</text><text lang="en">My Entando APP</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>17.0</version><lastEditor>jeff</lastEditor><created>20110926155919</created><lastModified>20111118163137</lastModified></content>
', 'free', '17.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DWN49', 'DWN', 'Intranet Documentation', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN49" typecode="DWN" typedescr="Scheda Download"><descr>Intranet Documentation</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Documentazione per Intranet</text><text lang="en">Intranet Documentation</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Descrive l''organizzazione dei pacchetti e della documentazione disponibili nell''are intranet.</text><text lang="en">The document describes the organization of packages and documentation available in the intranet area.</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="48" lang="en" /><text lang="en">Intranet Documentation</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110926160826</created><lastModified>20110926160826</lastModified></content>
', '20110926160826', '20110926160826', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN49" typecode="DWN" typedescr="Scheda Download"><descr>Intranet Documentation</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Documentazione per Intranet</text><text lang="en">Intranet Documentation</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Descrive l''organizzazione dei pacchetti e della documentazione disponibili nell''are intranet.</text><text lang="en">The document describes the organization of packages and documentation available in the intranet area.</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="48" lang="en" /><text lang="en">Intranet Documentation</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110926160826</created><lastModified>20110926160826</lastModified></content>
', 'administrators', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DWN47', 'DWN', 'Customer Best Practice', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN47" typecode="DWN" typedescr="Scheda Download"><descr>Customer Best Practice</descr><groups mainGroup="administrators"><group name="customers" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Customer Best Practice</text><text lang="en">Customer Best Practice</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Fornisce le linee guida per la realizzazione dei Plugin di Entando secondo definiti standard di qualità.</text><text lang="en">This document provides best practices for implementation of Entando Plugins.</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="46" lang="en" /><text lang="it">Best practice</text><text lang="en">Best Practice</text></attribute></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20110926160209</created><lastModified>20110926160907</lastModified></content>
', '20110926160209', '20110926160907', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN47" typecode="DWN" typedescr="Scheda Download"><descr>Customer Best Practice</descr><groups mainGroup="administrators"><group name="customers" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Customer Best Practice</text><text lang="en">Customer Best Practice</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Fornisce le linee guida per la realizzazione dei Plugin di Entando secondo definiti standard di qualità.</text><text lang="en">This document provides best practices for implementation of Entando Plugins.</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="46" lang="en" /><text lang="it">Best practice</text><text lang="en">Best Practice</text></attribute></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20110926160209</created><lastModified>20110926160907</lastModified></content>
', 'administrators', '2.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG56', 'CNG', 'Welcome to Entando Portal Demo', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG56" typecode="CNG" typedescr="Contenuto Generico"><descr>Welcome to Entando Portal Demo</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Benvenuto in Entando Portal Demo</text><text lang="en">Welcome to Entando Portal Demo</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Entando è una moderna piattaforma Portal open source che abilita una organizzazione ai nuovi modelli di interazione del web 2.0.</text><text lang="en">Entando is an agile, modern and user centric open source Portal platform that enables an organization to the web 2.0 world.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>Entando &egrave; una moderna<strong> piattaforma Portal open source</strong> che abilita una organizzazione ai <strong>nuovi modelli di</strong> <strong>interazione del web 2.0</strong>.</p>
<p>Entando &egrave; una piattaforma web open source che combina<strong> in un''unica soluzione</strong> le funzionalit&agrave; degli <strong>Enterprise Portal</strong>, dei <strong>content management</strong> e dei <strong>framework applicativi</strong>.</p>
<p>Entando &egrave; uno strumento adatto per sviluppatori e aziende IT che desiderano avere il pieno controllo di una piattaforma web dotata di moduli  software, funzionalit&agrave; e strumenti di gestione che facilitano le personalizzazioni, aumentano la velocit&agrave; di sviluppo e consentono una forte personalizzazione.</p>
<p>Dal punto vista dell''organizzazione che intende affidare la realizzazione ad un azienda IT, &egrave; un prodotto che consente di ottenere un risultato finale rispondente alle esigenze, facilmente evolvibile per adeguarlo al proprio business. E'' un prodotto orientato al <strong>web 2.0</strong>, al <strong>social</strong>, agli <strong>analytics</strong>, e agli <strong>standard internazionali</strong> e alla <strong>multicanalit&agrave;</strong>.</p>
<p>Dal punto di vista degli utilizzatori, &egrave; uno strumento che non richiede professionalit&agrave; tecnica per la gestione quotidiana del portale <strong>internet</strong>, <strong>intranet</strong> o <strong>extranet</strong>.</p>]]></hypertext><hypertext lang="en"><![CDATA[<p>Entando is an <strong>agile</strong>, <strong>modern</strong> and <strong>user centric open source Portal platform</strong> that enables an organization to the web 2.0 world.</p>
<p>Entando is a web platform that combines <strong>enterprise</strong> <strong>portal</strong>,<strong> content management</strong> and <strong>framework</strong> capabilities in a <strong>all-in-one platform</strong>.</p>
<p>It can help <strong>companies</strong> and <strong>governments</strong> to improve organizational effectiveness by <strong>facilitating</strong> <strong>information</strong> <strong>sharing</strong>, <strong>participation</strong> and <strong>collaboration</strong> in web 2.0 era.</p>
<p>Entando also <strong>provides</strong> developers and IT companies with components, tools and<strong> best practices</strong> for platform <strong>extensibility</strong>, <strong>system administration</strong> and <strong>interoperability</strong> that speed up work, reduce costs and allow easy customization.</p>
<p>It the same time, it is a <strong>simple</strong> and <strong>useful tool</strong> for companies and organizations who want to self-manage their information.</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="57" lang="en" /><text lang="it">Cosa è Entando</text><text lang="en">What is Entando</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20110926193524</created><lastModified>20110926193736</lastModified></content>
', '20110926193524', '20110926193736', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG56" typecode="CNG" typedescr="Contenuto Generico"><descr>Welcome to Entando Portal Demo</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Benvenuto in Entando Portal Demo</text><text lang="en">Welcome to Entando Portal Demo</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Entando è una moderna piattaforma Portal open source che abilita una organizzazione ai nuovi modelli di interazione del web 2.0.</text><text lang="en">Entando is an agile, modern and user centric open source Portal platform that enables an organization to the web 2.0 world.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>Entando &egrave; una moderna<strong> piattaforma Portal open source</strong> che abilita una organizzazione ai <strong>nuovi modelli di</strong> <strong>interazione del web 2.0</strong>.</p>
<p>Entando &egrave; una piattaforma web open source che combina<strong> in un''unica soluzione</strong> le funzionalit&agrave; degli <strong>Enterprise Portal</strong>, dei <strong>content management</strong> e dei <strong>framework applicativi</strong>.</p>
<p>Entando &egrave; uno strumento adatto per sviluppatori e aziende IT che desiderano avere il pieno controllo di una piattaforma web dotata di moduli  software, funzionalit&agrave; e strumenti di gestione che facilitano le personalizzazioni, aumentano la velocit&agrave; di sviluppo e consentono una forte personalizzazione.</p>
<p>Dal punto vista dell''organizzazione che intende affidare la realizzazione ad un azienda IT, &egrave; un prodotto che consente di ottenere un risultato finale rispondente alle esigenze, facilmente evolvibile per adeguarlo al proprio business. E'' un prodotto orientato al <strong>web 2.0</strong>, al <strong>social</strong>, agli <strong>analytics</strong>, e agli <strong>standard internazionali</strong> e alla <strong>multicanalit&agrave;</strong>.</p>
<p>Dal punto di vista degli utilizzatori, &egrave; uno strumento che non richiede professionalit&agrave; tecnica per la gestione quotidiana del portale <strong>internet</strong>, <strong>intranet</strong> o <strong>extranet</strong>.</p>]]></hypertext><hypertext lang="en"><![CDATA[<p>Entando is an <strong>agile</strong>, <strong>modern</strong> and <strong>user centric open source Portal platform</strong> that enables an organization to the web 2.0 world.</p>
<p>Entando is a web platform that combines <strong>enterprise</strong> <strong>portal</strong>,<strong> content management</strong> and <strong>framework</strong> capabilities in a <strong>all-in-one platform</strong>.</p>
<p>It can help <strong>companies</strong> and <strong>governments</strong> to improve organizational effectiveness by <strong>facilitating</strong> <strong>information</strong> <strong>sharing</strong>, <strong>participation</strong> and <strong>collaboration</strong> in web 2.0 era.</p>
<p>Entando also <strong>provides</strong> developers and IT companies with components, tools and<strong> best practices</strong> for platform <strong>extensibility</strong>, <strong>system administration</strong> and <strong>interoperability</strong> that speed up work, reduce costs and allow easy customization.</p>
<p>It the same time, it is a <strong>simple</strong> and <strong>useful tool</strong> for companies and organizations who want to self-manage their information.</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="57" lang="en" /><text lang="it">Cosa è Entando</text><text lang="en">What is Entando</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20110926193524</created><lastModified>20110926193736</lastModified></content>
', 'free', '2.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('YTB58', 'YTB', 'Entando Backoffice', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="YTB58" typecode="YTB" typedescr="Youtube Video"><descr>Entando Backoffice</descr><groups mainGroup="free" /><categories /><attributes><attribute name="VideoCode" attributetype="Text"><text lang="en">sU7fHpQokW4</text></attribute><attribute name="Title" attributetype="Text"><text lang="en">Entando Backoffice Demo</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">Backoffice preview.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>Backoffice preview.</p>]]></hypertext></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20111116175139</created><lastModified>20111116175139</lastModified></content>
', '20111116175139', '20111116175139', '<?xml version="1.0" encoding="UTF-8"?>
<content id="YTB58" typecode="YTB" typedescr="Youtube Video"><descr>Entando Backoffice</descr><groups mainGroup="free" /><categories /><attributes><attribute name="VideoCode" attributetype="Text"><text lang="en">sU7fHpQokW4</text></attribute><attribute name="Title" attributetype="Text"><text lang="en">Entando Backoffice Demo</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">Backoffice preview.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>Backoffice preview.</p>]]></hypertext></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20111116175139</created><lastModified>20111116175139</lastModified></content>
', 'free', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW17', 'NEW', 'Release of Entando version 2.4.0.1', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW17" typecode="NEW" typedescr="News"><descr>Release of Entando version 2.4.0.1</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Rilascio di Entando versione 2.4.0.1</text><text lang="en">Release of Entando version 2.4.0.1</text></attribute><attribute name="Date" attributetype="Date"><date>20111207</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Entando 2.4.0.1, la nuova versione della piattaforma web Entando è stata rilasciata oggi ed è disponibile su GitHub, che si è affermato come l’hosting di progetti open source più apprezzato dell''ultimo anno.</text><text lang="en">Entando 2.4.0.1, the new version of Entando web platform, has just been released and it is now available to download on GitHub.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p><strong>Entando 2.4.0.1</strong>, la nuova versione della piattaforma web Entando <strong>&egrave;  stata rilasciata </strong>oggi ed &egrave; disponibile su <a href="#!U;http://github.com/entando/!#"><strong>GitHub</strong></a>, che si &egrave; affermato come l&rsquo;hosting di progetti open source pi&ugrave; apprezzato dell''ultimo anno.</p>
<p>E'' caratterizzata dal nuovo <strong>sistema di API Services</strong> per implementare facilmente servizi web e sar&agrave; accompagnata a breve dall''uscita di <strong>MyEntando</strong>, l''applicazione mobile gratuita per un''esperienza di navigazione personalizzata.</p>
<p>L''introduzione del sistema di API Services garantisce agli amministratori di un portale piena libert&agrave; di creare applicazioni, senza bisogno di competenze tecniche. La funzionalit&agrave; integrata di ''mapping'' consente di effettuare una ricerca sui contenuti esistenti e creare direttamente da essi l''applicazione corrispondente, con un significativo risparmio di tempo.<br />
Inoltre, l''utilizzo del <strong>formato dati aperto</strong> estende le <strong>possibilit&agrave; di riuso</strong>, promuovendo ulteriori <strong>opportunit&agrave; di business</strong>.</p>
<p>Dietro lo sviluppo di Entando 2.4.0.1 c''&egrave; una <strong>maggiore attenzione agli utenti e alle loro esigenze</strong> in un mondo sempre pi&ugrave; interconnesso. Questa stessa attenzione guida il futuro dell''intero progetto.<br />
&quot; <em>A partire dal rilascio</em> - spiega Diana -<em> jAPS 2.0 Entando si chiamer&agrave; semplicemente Entando, per indicare un punto di svolta nella nostra evoluzione</em>.&quot; <br />
La piattaforma open source si &egrave; infatti gradualmente spostata dal java agile portal system degli esordi, prima <strong>jAPS</strong> e poi <strong>jAPS 2.0</strong>, per arrivare a <strong>Entando</strong>, una soluzione che aiuta le organizzazioni pubbliche e private a sfruttare i vantaggi della network society.  <br />
&quot;<em>La tecnologia</em>  - aggiunge Diana - <em>ha cambiato il modo di lavorare e trattare le informazioni di tutti noi, ha reso possibili forme di partecipazione e collaborazione impensabili sino a pochi anni fa. Entando raccoglie l''eredit&agrave; di jAPS per concentrarsi sugli scenari aperti dalle nuove tecnologie piuttosto che sulla tecnologia stessa</em>.&quot;</p>
<p><strong>La nuova versione di Entando 2.4.0.1 &egrave; stata trasferita su GitHub e Maven, <a href="#!U;http://japsway.blogspot.com/!#">maggiori informazioni sono disponibili qui</a>.</strong></p>]]></hypertext><hypertext lang="en"><![CDATA[<p><strong>Entando 2.4.0.1</strong>, the new version of Entando web platform, has just been released and it is now available to download on <a href="#!U;http://github.com/entando/!#"><strong>GitHub</strong></a>.</p>
<p>The 2.4.0.1 release features a new user-centered<strong> API Services</strong> <strong>system</strong> to implement web services and it is coupled with the free mobile application MyEntando, that caming soon, to enjoy a made-to-measure mobile experience.</p>
<p>The introduction of the <strong>API Services system</strong> gives portal administrators full freedom to create web services with no need for technical skills. An integrated ''mapping'' functionality searches for matching content and allows to create the correspondent web application straight from it, with a significant save on time. In addition, the use of the <strong>open data </strong>format consents data re-use to a greater extent, <strong>boosting new business opportunities</strong>.</p>
<p><strong>Behind the development of Entando 2.4.0.1</strong> there is a <strong>stronger attention to users and their needs</strong> in an interconnected world. The same attention shapes the future of the entire project. <br />
&quot;<em>From the release</em> - explains Diana -<em> jAPS 2.0 Entando will be named simply Entando, to mark a turning point in our evolution</em>&quot;. The open source web platform has gradually moved on from the early stages of java agile portal system, known as <strong>jAPS</strong> and<strong> jAPS 2.0</strong>, to <strong>Entando</strong>, a solution that helps organisations leverage the opportunities of a network society.  <br />
&quot;<em>Technology</em>  - adds Diana - <em>has changed the way all of us work and handle information, it has enabled new participation and collaboration practices, unimaginable until not long ago.  Entando collects the jAPS inheritance to focus more on the new scenarios technology opened rather than on technology itself</em>.&quot;</p>
<p><strong>Entando 2.4.0.1 is also moving on GitHub and Maven, <a href="#!U;http://japsway.blogspot.com/!#">more details here</a>.</strong></p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="28" lang="en" /><text lang="en">Entando Logo</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>jeff</lastEditor><created>20110926140558</created><lastModified>20111207124531</lastModified></content>
', '20110926140558', '20111207124531', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW17" typecode="NEW" typedescr="News"><descr>Release of Entando version 2.4.0.1</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Rilascio di Entando versione 2.4.0.1</text><text lang="en">Release of Entando version 2.4.0.1</text></attribute><attribute name="Date" attributetype="Date"><date>20111207</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Entando 2.4.0.1, la nuova versione della piattaforma web Entando è stata rilasciata oggi ed è disponibile su GitHub, che si è affermato come l’hosting di progetti open source più apprezzato dell''ultimo anno.</text><text lang="en">Entando 2.4.0.1, the new version of Entando web platform, has just been released and it is now available to download on GitHub.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p><strong>Entando 2.4.0.1</strong>, la nuova versione della piattaforma web Entando <strong>&egrave;  stata rilasciata </strong>oggi ed &egrave; disponibile su <a href="#!U;http://github.com/entando/!#"><strong>GitHub</strong></a>, che si &egrave; affermato come l&rsquo;hosting di progetti open source pi&ugrave; apprezzato dell''ultimo anno.</p>
<p>E'' caratterizzata dal nuovo <strong>sistema di API Services</strong> per implementare facilmente servizi web e sar&agrave; accompagnata a breve dall''uscita di <strong>MyEntando</strong>, l''applicazione mobile gratuita per un''esperienza di navigazione personalizzata.</p>
<p>L''introduzione del sistema di API Services garantisce agli amministratori di un portale piena libert&agrave; di creare applicazioni, senza bisogno di competenze tecniche. La funzionalit&agrave; integrata di ''mapping'' consente di effettuare una ricerca sui contenuti esistenti e creare direttamente da essi l''applicazione corrispondente, con un significativo risparmio di tempo.<br />
Inoltre, l''utilizzo del <strong>formato dati aperto</strong> estende le <strong>possibilit&agrave; di riuso</strong>, promuovendo ulteriori <strong>opportunit&agrave; di business</strong>.</p>
<p>Dietro lo sviluppo di Entando 2.4.0.1 c''&egrave; una <strong>maggiore attenzione agli utenti e alle loro esigenze</strong> in un mondo sempre pi&ugrave; interconnesso. Questa stessa attenzione guida il futuro dell''intero progetto.<br />
&quot; <em>A partire dal rilascio</em> - spiega Diana -<em> jAPS 2.0 Entando si chiamer&agrave; semplicemente Entando, per indicare un punto di svolta nella nostra evoluzione</em>.&quot; <br />
La piattaforma open source si &egrave; infatti gradualmente spostata dal java agile portal system degli esordi, prima <strong>jAPS</strong> e poi <strong>jAPS 2.0</strong>, per arrivare a <strong>Entando</strong>, una soluzione che aiuta le organizzazioni pubbliche e private a sfruttare i vantaggi della network society.  <br />
&quot;<em>La tecnologia</em>  - aggiunge Diana - <em>ha cambiato il modo di lavorare e trattare le informazioni di tutti noi, ha reso possibili forme di partecipazione e collaborazione impensabili sino a pochi anni fa. Entando raccoglie l''eredit&agrave; di jAPS per concentrarsi sugli scenari aperti dalle nuove tecnologie piuttosto che sulla tecnologia stessa</em>.&quot;</p>
<p><strong>La nuova versione di Entando 2.4.0.1 &egrave; stata trasferita su GitHub e Maven, <a href="#!U;http://japsway.blogspot.com/!#">maggiori informazioni sono disponibili qui</a>.</strong></p>]]></hypertext><hypertext lang="en"><![CDATA[<p><strong>Entando 2.4.0.1</strong>, the new version of Entando web platform, has just been released and it is now available to download on <a href="#!U;http://github.com/entando/!#"><strong>GitHub</strong></a>.</p>
<p>The 2.4.0.1 release features a new user-centered<strong> API Services</strong> <strong>system</strong> to implement web services and it is coupled with the free mobile application MyEntando, that caming soon, to enjoy a made-to-measure mobile experience.</p>
<p>The introduction of the <strong>API Services system</strong> gives portal administrators full freedom to create web services with no need for technical skills. An integrated ''mapping'' functionality searches for matching content and allows to create the correspondent web application straight from it, with a significant save on time. In addition, the use of the <strong>open data </strong>format consents data re-use to a greater extent, <strong>boosting new business opportunities</strong>.</p>
<p><strong>Behind the development of Entando 2.4.0.1</strong> there is a <strong>stronger attention to users and their needs</strong> in an interconnected world. The same attention shapes the future of the entire project. <br />
&quot;<em>From the release</em> - explains Diana -<em> jAPS 2.0 Entando will be named simply Entando, to mark a turning point in our evolution</em>&quot;. The open source web platform has gradually moved on from the early stages of java agile portal system, known as <strong>jAPS</strong> and<strong> jAPS 2.0</strong>, to <strong>Entando</strong>, a solution that helps organisations leverage the opportunities of a network society.  <br />
&quot;<em>Technology</em>  - adds Diana - <em>has changed the way all of us work and handle information, it has enabled new participation and collaboration practices, unimaginable until not long ago.  Entando collects the jAPS inheritance to focus more on the new scenarios technology opened rather than on technology itself</em>.&quot;</p>
<p><strong>Entando 2.4.0.1 is also moving on GitHub and Maven, <a href="#!U;http://japsway.blogspot.com/!#">more details here</a>.</strong></p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="28" lang="en" /><text lang="en">Entando Logo</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>5.0</version><lastEditor>jeff</lastEditor><created>20110926140558</created><lastModified>20111207124531</lastModified></content>
', 'free', '5.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DWN38', 'DWN', 'Entando System Requirements', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN38" typecode="DWN" typedescr="Scheda Download"><descr>Entando System Requirements</descr><groups mainGroup="administrators"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Entando - Requisiti di sistema</text><text lang="en">Entando System Requirements</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Questo documento descrive i dettagli e le versioni dei software che sono compatibili con la piattaforma Entando.</text><text lang="en">This document details hardware and software versions that are compatible with Entando Platform.</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="37" lang="en" /><text lang="it">Entando - Requisiti di sistema</text><text lang="en">Entando System Requirements</text></attribute></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20110926153251</created><lastModified>20110926154813</lastModified></content>
', '20110926153251', '20110926154813', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN38" typecode="DWN" typedescr="Scheda Download"><descr>Entando System Requirements</descr><groups mainGroup="administrators"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Entando - Requisiti di sistema</text><text lang="en">Entando System Requirements</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Questo documento descrive i dettagli e le versioni dei software che sono compatibili con la piattaforma Entando.</text><text lang="en">This document details hardware and software versions that are compatible with Entando Platform.</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="37" lang="en" /><text lang="it">Entando - Requisiti di sistema</text><text lang="en">Entando System Requirements</text></attribute></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20110926153251</created><lastModified>20110926154813</lastModified></content>
', 'administrators', '2.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('TST2', 'TST', 'Contenuto 1', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="TST2" typecode="TST" typedescr="Test Type"><descr>Contenuto 1</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contenuto 1</text><text lang="en">Contenuto 1</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110905174152</created><lastModified>20110905174152</lastModified></content>
', '20110905174152', '20110905174152', '<?xml version="1.0" encoding="UTF-8"?>
<content id="TST2" typecode="TST" typedescr="Test Type"><descr>Contenuto 1</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contenuto 1</text><text lang="en">Contenuto 1</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110905174152</created><lastModified>20110905174152</lastModified></content>
', 'free', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('TST4', 'TST', 'Contenuto 3', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="TST4" typecode="TST" typedescr="Test Type"><descr>Contenuto 3</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contenuto 3</text><text lang="en">Contenuto 3</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110905174237</created><lastModified>20110905174237</lastModified></content>
', '20110905174237', '20110905174237', '<?xml version="1.0" encoding="UTF-8"?>
<content id="TST4" typecode="TST" typedescr="Test Type"><descr>Contenuto 3</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contenuto 3</text><text lang="en">Contenuto 3</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110905174237</created><lastModified>20110905174237</lastModified></content>
', 'free', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DWN44', 'DWN', 'Business Plan', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN44" typecode="DWN" typedescr="Scheda Download"><descr>Business Plan</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Business Plan</text><text lang="en">Business Plan</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Questo documento descrive il Business Plan dell''azienda.</text><text lang="en">This document is about the Business Plan of the company</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="43" lang="en" /><text lang="it">Business Plan</text><text lang="en">Business Plan</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110926155822</created><lastModified>20110926155822</lastModified></content>
', '20110926155822', '20110926155822', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN44" typecode="DWN" typedescr="Scheda Download"><descr>Business Plan</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Business Plan</text><text lang="en">Business Plan</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Questo documento descrive il Business Plan dell''azienda.</text><text lang="en">This document is about the Business Plan of the company</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="43" lang="en" /><text lang="it">Business Plan</text><text lang="en">Business Plan</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110926155822</created><lastModified>20110926155822</lastModified></content>
', 'administrators', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DWN51', 'DWN', 'Customer Agreement', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN51" typecode="DWN" typedescr="Scheda Download"><descr>Customer Agreement</descr><groups mainGroup="administrators"><group name="customers" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contratto Clienti</text><text lang="en">Customer Agreement</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Questo documento contiene il contratto sottoscritto con il cliente</text><text lang="en">This document contains the agreement signed with the customer</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="50" lang="en" /><text lang="it">Contratto Clienti</text><text lang="en">Customer Agreement</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110926161836</created><lastModified>20110926161836</lastModified></content>
', '20110926161836', '20110926161836', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN51" typecode="DWN" typedescr="Scheda Download"><descr>Customer Agreement</descr><groups mainGroup="administrators"><group name="customers" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contratto Clienti</text><text lang="en">Customer Agreement</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Questo documento contiene il contratto sottoscritto con il cliente</text><text lang="en">This document contains the agreement signed with the customer</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="50" lang="en" /><text lang="it">Contratto Clienti</text><text lang="en">Customer Agreement</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110926161836</created><lastModified>20110926161836</lastModified></content>
', 'administrators', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DWN53', 'DWN', 'Entando Model', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN53" typecode="DWN" typedescr="Scheda Download"><descr>Entando Model</descr><groups mainGroup="administrators"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Il Modello Entando</text><text lang="en">Entando Model</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Descrive il modello concettuale che sta alla base del progetto Entando.</text><text lang="en">This document describes the conceptual model of Entando project</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="52" lang="en" /><text lang="it">Il Modello Entando</text><text lang="en">Entando Model</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110926162601</created><lastModified>20110926162601</lastModified></content>
', '20110926162601', '20110926162601', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN53" typecode="DWN" typedescr="Scheda Download"><descr>Entando Model</descr><groups mainGroup="administrators"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Il Modello Entando</text><text lang="en">Entando Model</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Descrive il modello concettuale che sta alla base del progetto Entando.</text><text lang="en">This document describes the conceptual model of Entando project</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="52" lang="en" /><text lang="it">Il Modello Entando</text><text lang="en">Entando Model</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110926162601</created><lastModified>20110926162601</lastModified></content>
', 'administrators', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW33', 'NEW', 'New Customer Services', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW33" typecode="NEW" typedescr="News"><descr>New Customer Services</descr><groups mainGroup="administrators" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Nuovi servizi per i clienti</text><text lang="en">New customer Services</text></attribute><attribute name="Date" attributetype="Date"><date>20111201</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Nuovi servizi per i clienti sono disponibili nell''area riservata</text><text lang="en">New services for customers are available in the reserved area.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>Nuovi servizi per i clienti sono disponibili nell''area riservata.</p>]]></hypertext><hypertext lang="en"><![CDATA[<p>New services for customers are available in the reserved area.<br />
&nbsp;</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="32" lang="en" /><text lang="it">Servizi clienti</text><text lang="en">Customer Services</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>6.0</version><lastEditor>jeff</lastEditor><created>20110926151115</created><lastModified>20110927183315</lastModified></content>
', '20110926151115', '20110927183315', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW33" typecode="NEW" typedescr="News"><descr>New Customer Services</descr><groups mainGroup="administrators" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Nuovi servizi per i clienti</text><text lang="en">New customer Services</text></attribute><attribute name="Date" attributetype="Date"><date>20111201</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Nuovi servizi per i clienti sono disponibili nell''area riservata</text><text lang="en">New services for customers are available in the reserved area.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>Nuovi servizi per i clienti sono disponibili nell''area riservata.</p>]]></hypertext><hypertext lang="en"><![CDATA[<p>New services for customers are available in the reserved area.<br />
&nbsp;</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="32" lang="en" /><text lang="it">Servizi clienti</text><text lang="en">Customer Services</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>6.0</version><lastEditor>jeff</lastEditor><created>20110926151115</created><lastModified>20110927183315</lastModified></content>
', 'administrators', '6.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('DWN40', 'DWN', 'Product Details', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN40" typecode="DWN" typedescr="Scheda Download"><descr>Product Details</descr><groups mainGroup="administrators"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Scheda Prodotto</text><text lang="en">Product Details</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Questo documento descrive le caratteristiche del prodotto e i suoi benefici.</text><text lang="en">This document describes the characteristics and benefits of the product.</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="39" lang="en" /><text lang="it">Scheda Prodotto</text><text lang="en">Product Card</text></attribute></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20110926154050</created><lastModified>20110926154829</lastModified></content>
', '20110926154050', '20110926154829', '<?xml version="1.0" encoding="UTF-8"?>
<content id="DWN40" typecode="DWN" typedescr="Scheda Download"><descr>Product Details</descr><groups mainGroup="administrators"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Scheda Prodotto</text><text lang="en">Product Details</text></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Questo documento descrive le caratteristiche del prodotto e i suoi benefici.</text><text lang="en">This document describes the characteristics and benefits of the product.</text></attribute><attribute name="File" attributetype="Attach"><resource resourcetype="Attach" id="39" lang="en" /><text lang="it">Scheda Prodotto</text><text lang="en">Product Card</text></attribute></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20110926154050</created><lastModified>20110926154829</lastModified></content>
', 'administrators', '2.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW21', 'NEW', 'Intranet Area', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW21" typecode="NEW" typedescr="News"><descr>Intranet Area</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Benvenuti nell''area Intranet dedicata ai collaboratori</text><text lang="en">Welcome to the Intranet Area for co-workers</text></attribute><attribute name="Date" attributetype="Date"><date>20111214</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Nell''area Intranet è possibile trovare informazioni riservate ai collaboratori.</text><text lang="en">In the Intranet Area you can find reserved informations for co-workers.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>Nell''area Intranet &egrave; possibile trovare informazioni riservate ai collaboratori.</p>]]></hypertext><hypertext lang="en"><![CDATA[<p>In the Intranet Area are available information and services reserved to co-workers.</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="20" lang="en" /><text lang="en">Intranet Area</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>16.0</version><lastEditor>jeff</lastEditor><created>20110926141837</created><lastModified>20111118123229</lastModified></content>
', '20110926141837', '20111118123229', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW21" typecode="NEW" typedescr="News"><descr>Intranet Area</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Benvenuti nell''area Intranet dedicata ai collaboratori</text><text lang="en">Welcome to the Intranet Area for co-workers</text></attribute><attribute name="Date" attributetype="Date"><date>20111214</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Nell''area Intranet è possibile trovare informazioni riservate ai collaboratori.</text><text lang="en">In the Intranet Area you can find reserved informations for co-workers.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>Nell''area Intranet &egrave; possibile trovare informazioni riservate ai collaboratori.</p>]]></hypertext><hypertext lang="en"><![CDATA[<p>In the Intranet Area are available information and services reserved to co-workers.</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="20" lang="en" /><text lang="en">Intranet Area</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>16.0</version><lastEditor>jeff</lastEditor><created>20110926141837</created><lastModified>20111118123229</lastModified></content>
', 'administrators', '16.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG55', 'CNG', 'Useful Links', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG55" typecode="CNG" typedescr="Contenuto Generico"><descr>Useful Links</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Collegamenti utili</text><text lang="en">Some useful links</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<ul>
    <li><a href="http://www.entando.com/">Entando Portal</a></li>
    <li><a href="http://www.tzente.com/">Tzente S.r.l.</a></li>
    <li><a href="http://sf.net/projects/japs/">Entando @ Sourceforge</a></li>
    <li class="last"><a href="http://japsway.blogspot.com/">Entando dev-blog</a></li>
    <li class="last"><a href="#!U;http://dev.japsportal.org/trac/!#">Entando Developer Website</a></li>
</ul>]]></hypertext><hypertext lang="en"><![CDATA[<ul>
    <li><a href="http://www.entando.com/">Entando Portal</a></li>
    <li><a href="http://www.tzente.com/">Tzente S.r.l.</a></li>
    <li><a href="http://sf.net/projects/japs/">Entando @ Sourceforge</a></li>
    <li class="last"><a href="http://japsway.blogspot.com/">Entando dev-blog</a></li>
    <li class="last"><a href="#!U;http://dev.japsportal.org/trac/!#">Entando Developer Website</a></li>
</ul>]]></hypertext></attribute><attribute name="Image1" attributetype="Image" /><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110926192903</created><lastModified>20110926192903</lastModified></content>
', '20110926192903', '20110926192903', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG55" typecode="CNG" typedescr="Contenuto Generico"><descr>Useful Links</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Collegamenti utili</text><text lang="en">Some useful links</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<ul>
    <li><a href="http://www.entando.com/">Entando Portal</a></li>
    <li><a href="http://www.tzente.com/">Tzente S.r.l.</a></li>
    <li><a href="http://sf.net/projects/japs/">Entando @ Sourceforge</a></li>
    <li class="last"><a href="http://japsway.blogspot.com/">Entando dev-blog</a></li>
    <li class="last"><a href="#!U;http://dev.japsportal.org/trac/!#">Entando Developer Website</a></li>
</ul>]]></hypertext><hypertext lang="en"><![CDATA[<ul>
    <li><a href="http://www.entando.com/">Entando Portal</a></li>
    <li><a href="http://www.tzente.com/">Tzente S.r.l.</a></li>
    <li><a href="http://sf.net/projects/japs/">Entando @ Sourceforge</a></li>
    <li class="last"><a href="http://japsway.blogspot.com/">Entando dev-blog</a></li>
    <li class="last"><a href="#!U;http://dev.japsportal.org/trac/!#">Entando Developer Website</a></li>
</ul>]]></hypertext></attribute><attribute name="Image1" attributetype="Image" /><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110926192903</created><lastModified>20110926192903</lastModified></content>
', 'free', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('TST3', 'TST', 'Contenuto 2', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="TST3" typecode="TST" typedescr="Test Type"><descr>Contenuto 2</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contenuto 2</text><text lang="en">Contenuto 2</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110905174213</created><lastModified>20110905174213</lastModified></content>
', '20110905174213', '20110905174213', '<?xml version="1.0" encoding="UTF-8"?>
<content id="TST3" typecode="TST" typedescr="Test Type"><descr>Contenuto 2</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contenuto 2</text><text lang="en">Contenuto 2</text></attribute></attributes><status>PUBLIC</status><version>1.0</version><lastEditor>jeff</lastEditor><created>20110905174213</created><lastModified>20110905174213</lastModified></content>
', 'free', '1.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW22', 'NEW', 'Company Meeting', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW22" typecode="NEW" typedescr="News"><descr>Company Meeting</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Incontro riservato ai collaboratori</text><text lang="en">Meeting reserved for co-workers</text></attribute><attribute name="Date" attributetype="Date"><date>20111124</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Presto verrà organizzato un incontro riservato ai collaboratori dell''azienda.</text><text lang="en">Soon we organize a meeting reserved to co-workers</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>Presto verr&agrave; organizzato un incontro riservato ai collaboratori dell''azienda.</p>]]></hypertext><hypertext lang="en"><![CDATA[<p>Soon we organize a meeting reserved to co-workers</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="10" lang="en" /><text lang="en">Meeting</text></attribute><attribute name="Image2" attributetype="Image"><resource resourcetype="Image" id="24" lang="en" /><text lang="en">Company Meeting</text></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>jeff</lastEditor><created>20110926142222</created><lastModified>20110927183357</lastModified></content>
', '20110926142222', '20110927183357', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW22" typecode="NEW" typedescr="News"><descr>Company Meeting</descr><groups mainGroup="administrators"><group name="intranet" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Incontro riservato ai collaboratori</text><text lang="en">Meeting reserved for co-workers</text></attribute><attribute name="Date" attributetype="Date"><date>20111124</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Presto verrà organizzato un incontro riservato ai collaboratori dell''azienda.</text><text lang="en">Soon we organize a meeting reserved to co-workers</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>Presto verr&agrave; organizzato un incontro riservato ai collaboratori dell''azienda.</p>]]></hypertext><hypertext lang="en"><![CDATA[<p>Soon we organize a meeting reserved to co-workers</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="10" lang="en" /><text lang="en">Meeting</text></attribute><attribute name="Image2" attributetype="Image"><resource resourcetype="Image" id="24" lang="en" /><text lang="en">Company Meeting</text></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>jeff</lastEditor><created>20110926142222</created><lastModified>20110927183357</lastModified></content>
', 'administrators', '4.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW30', 'NEW', 'Now are available the Reports for customers', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW30" typecode="NEW" typedescr="News"><descr>Now are available the Reports for customers</descr><groups mainGroup="administrators"><group name="customers" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Ora sono disponibili i report per i clienti</text><text lang="en">New reports for customers now available</text></attribute><attribute name="Date" attributetype="Date"><date>20111116</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Ora sono disponibili i report per i clienti nell''area riservata</text><text lang="en">New reports for customers are available in the reserved area</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>Ora sono disponibili i report per i clienti nell''area riservata</p>]]></hypertext><hypertext lang="en"><![CDATA[<p>New reports for customers are available in the reserved area.</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="31" lang="en" /><text lang="en">Analytics</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>jeff</lastEditor><created>20110926150343</created><lastModified>20110928152917</lastModified></content>
', '20110926150343', '20110928152917', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW30" typecode="NEW" typedescr="News"><descr>Now are available the Reports for customers</descr><groups mainGroup="administrators"><group name="customers" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Ora sono disponibili i report per i clienti</text><text lang="en">New reports for customers now available</text></attribute><attribute name="Date" attributetype="Date"><date>20111116</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Ora sono disponibili i report per i clienti nell''area riservata</text><text lang="en">New reports for customers are available in the reserved area</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p>Ora sono disponibili i report per i clienti nell''area riservata</p>]]></hypertext><hypertext lang="en"><![CDATA[<p>New reports for customers are available in the reserved area.</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="31" lang="en" /><text lang="en">Analytics</text></attribute><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>jeff</lastEditor><created>20110926150343</created><lastModified>20110928152917</lastModified></content>
', 'administrators', '4.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW19', 'NEW', 'Entando IdeaScale', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW19" typecode="NEW" typedescr="News"><descr>Entando IdeaScale</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contribuisci al progetto Entando: proponi la tua idea</text><text lang="en">Contribute to Entando Project: submit your Idea and Suggestion</text></attribute><attribute name="Date" attributetype="Date"><date>20111020</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Condividi le tue idee su come migliorare il progetto jAPS 2.0 nell''ambito delle categorie: community, documentazione, funzionalità del core e plugins.</text><text lang="en">Share your ideas on how improve Entando Project!&#xD;
The best ideas bubble up to the top. Provide your responses within Community, Documentation, Core Features and Plugins categories.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p><strong>Condividi le tue idee su come migliorare il progetto Entando!</strong></p>
<ul>
    <li><strong>Contribuisci</strong>: condividi le tue idee su jAPS 2.0 Project</li>
    <li><strong>Discuti</strong>: discuti le idee con la community</li>
    <li><strong>Vota</strong>: valuta le idee degli altri e vota quella che pi&ugrave; ti piace</li>
</ul>
<p>Condividi le tue idee nell''ambito delle seguenti categorie relative al progetto Entando: <strong>community</strong>, <strong>documentazione</strong>, <strong>funzionalit&agrave; del core</strong> e <strong>plugins</strong>.</p>]]></hypertext><hypertext lang="en"><![CDATA[<p><strong>Share your ideas on how improve Entando Project</strong>!</p>
<ul>
    <li><strong>Contribute</strong>: share your ideas on jAPS 2.0 Project</li>
    <li><strong>Discuss</strong>: brainstorm ideas with other to make them even better</li>
    <li><strong>Vote</strong>: check out other people''s ideas, and vote on the ones you like best</li>
</ul>
<p><strong>The best ideas bubble up to the top. </strong></p>
<p>Provide your responses within these Entando categories: <strong>Community</strong>, <strong>Documentation</strong>, <strong>Core</strong> <strong>Features</strong> and <strong>Plugins</strong>.</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="18" lang="en" /><text lang="it">Logo Ideascale</text><text lang="en">Ideascale Logo</text></attribute><attribute name="Image2" attributetype="Image"><resource resourcetype="Image" id="26" lang="en" /><text lang="it">Contribuisci</text><text lang="en">Contribute</text></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://japsplatform.ideascale.com/</urldest></link><text lang="it">Condividi la tua idea sul progetto Entando</text><text lang="en">Share your Idea for Entando Project</text></attribute></list></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>jeff</lastEditor><created>20110926141219</created><lastModified>20110927183550</lastModified></content>
', '20110926141219', '20110927183550', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW19" typecode="NEW" typedescr="News"><descr>Entando IdeaScale</descr><groups mainGroup="free"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="it">Contribuisci al progetto Entando: proponi la tua idea</text><text lang="en">Contribute to Entando Project: submit your Idea and Suggestion</text></attribute><attribute name="Date" attributetype="Date"><date>20111020</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="it">Condividi le tue idee su come migliorare il progetto jAPS 2.0 nell''ambito delle categorie: community, documentazione, funzionalità del core e plugins.</text><text lang="en">Share your ideas on how improve Entando Project!&#xD;
The best ideas bubble up to the top. Provide your responses within Community, Documentation, Core Features and Plugins categories.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="it"><![CDATA[<p><strong>Condividi le tue idee su come migliorare il progetto Entando!</strong></p>
<ul>
    <li><strong>Contribuisci</strong>: condividi le tue idee su jAPS 2.0 Project</li>
    <li><strong>Discuti</strong>: discuti le idee con la community</li>
    <li><strong>Vota</strong>: valuta le idee degli altri e vota quella che pi&ugrave; ti piace</li>
</ul>
<p>Condividi le tue idee nell''ambito delle seguenti categorie relative al progetto Entando: <strong>community</strong>, <strong>documentazione</strong>, <strong>funzionalit&agrave; del core</strong> e <strong>plugins</strong>.</p>]]></hypertext><hypertext lang="en"><![CDATA[<p><strong>Share your ideas on how improve Entando Project</strong>!</p>
<ul>
    <li><strong>Contribute</strong>: share your ideas on jAPS 2.0 Project</li>
    <li><strong>Discuss</strong>: brainstorm ideas with other to make them even better</li>
    <li><strong>Vote</strong>: check out other people''s ideas, and vote on the ones you like best</li>
</ul>
<p><strong>The best ideas bubble up to the top. </strong></p>
<p>Provide your responses within these Entando categories: <strong>Community</strong>, <strong>Documentation</strong>, <strong>Core</strong> <strong>Features</strong> and <strong>Plugins</strong>.</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="18" lang="en" /><text lang="it">Logo Ideascale</text><text lang="en">Ideascale Logo</text></attribute><attribute name="Image2" attributetype="Image"><resource resourcetype="Image" id="26" lang="en" /><text lang="it">Contribuisci</text><text lang="en">Contribute</text></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://japsplatform.ideascale.com/</urldest></link><text lang="it">Condividi la tua idea sul progetto Entando</text><text lang="en">Share your Idea for Entando Project</text></attribute></list></attributes><status>PUBLIC</status><version>4.0</version><lastEditor>jeff</lastEditor><created>20110926141219</created><lastModified>20110927183550</lastModified></content>
', 'free', '4.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('CNG59', 'CNG', 'Entando Links', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG59" typecode="CNG" typedescr="Generic Content"><descr>Entando Links</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Entando</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="Body" attributetype="Hypertext" /><attribute name="Image1" attributetype="Image" /><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando Portal</text></attribute><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://github.com/entando/</urldest></link><text lang="en">Entando on GitHub</text></attribute><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://japsplatform.ideascale.com/</urldest></link><text lang="en">Ideascale</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20111117112633</created><lastModified>20111207120206</lastModified></content>
', '20111117112633', '20111207120206', '<?xml version="1.0" encoding="UTF-8"?>
<content id="CNG59" typecode="CNG" typedescr="Generic Content"><descr>Entando Links</descr><groups mainGroup="free" /><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Entando</text></attribute><attribute name="Abstract" attributetype="Longtext" /><attribute name="Body" attributetype="Hypertext" /><attribute name="Image1" attributetype="Image" /><attribute name="Image2" attributetype="Image" /><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link"><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://www.entando.com/</urldest></link><text lang="en">Entando Portal</text></attribute><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://github.com/entando/</urldest></link><text lang="en">Entando on GitHub</text></attribute><attribute name="Links" attributetype="Link"><link type="external"><urldest>http://japsplatform.ideascale.com/</urldest></link><text lang="en">Ideascale</text></attribute></list></attributes><status>PUBLIC</status><version>2.0</version><lastEditor>jeff</lastEditor><created>20111117112633</created><lastModified>20111207120206</lastModified></content>
', 'free', '2.0', 'jeff');
INSERT INTO contents (contentid, contenttype, descr, status, workxml, created, lastmodified, onlinexml, maingroup, currentversion, lasteditor) VALUES ('NEW12', 'NEW', 'Entando on Osor.eu, the Open Source Observatory and Repository for the public administration', 'PUBLIC', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW12" typecode="NEW" typedescr="News"><descr>Entando on Osor.eu, the Open Source Observatory and Repository for the public administration</descr><groups mainGroup="administrators"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Entando on Osor.eu, the Open Source Observatory and Repository for the public administration</text></attribute><attribute name="Date" attributetype="Date"><date>20111006</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">The Open Source Observatory and Repository (OSOR) is a website launched by the European Commission under the IDABC programme, to support the distribution and reuse of software developed by or for public sector administrations across Europe, connecting EU services and Member States.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>The <strong>Open Source Observatory and Repository</strong> (OSOR) is a website launched by the <strong>European Commission</strong> under the <strong>IDABC</strong> programme, to support the distribution and reuse of software developed by or for public sector administrations across Europe, connecting EU services and Member States.</p>
<p>OSOR.eu is a platform for exchanging information, experiences and free, libre and open source software (F/OSS) applications.</p>
<p>OSOR.eu supports and encourages the collaborative development and re-use of publicly-financed free, libre and open source software (F/OSS) applications developments for use in European public administrations. It also promotes and links to the work of national repositories, encouraging the emergence of a pan-European federation of open source software repositories.</p>
<p><a href="#!U;http://www.osor.eu/projects/japs2!#">Entando project is published, among others, on OSOR.eu Repository</a>.</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="13" lang="en" /><text lang="en">Osor Logo</text></attribute><attribute name="Image2" attributetype="Image"><resource resourcetype="Image" id="28" lang="en" /><text lang="en">Entando Logo</text></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>6.0</version><lastEditor>jeff</lastEditor><created>20110923185204</created><lastModified>20111207124456</lastModified></content>
', '20110923185204', '20111207124456', '<?xml version="1.0" encoding="UTF-8"?>
<content id="NEW12" typecode="NEW" typedescr="News"><descr>Entando on Osor.eu, the Open Source Observatory and Repository for the public administration</descr><groups mainGroup="administrators"><group name="free" /></groups><categories /><attributes><attribute name="Title" attributetype="Text"><text lang="en">Entando on Osor.eu, the Open Source Observatory and Repository for the public administration</text></attribute><attribute name="Date" attributetype="Date"><date>20111006</date></attribute><attribute name="Abstract" attributetype="Longtext"><text lang="en">The Open Source Observatory and Repository (OSOR) is a website launched by the European Commission under the IDABC programme, to support the distribution and reuse of software developed by or for public sector administrations across Europe, connecting EU services and Member States.</text></attribute><attribute name="Body" attributetype="Hypertext"><hypertext lang="en"><![CDATA[<p>The <strong>Open Source Observatory and Repository</strong> (OSOR) is a website launched by the <strong>European Commission</strong> under the <strong>IDABC</strong> programme, to support the distribution and reuse of software developed by or for public sector administrations across Europe, connecting EU services and Member States.</p>
<p>OSOR.eu is a platform for exchanging information, experiences and free, libre and open source software (F/OSS) applications.</p>
<p>OSOR.eu supports and encourages the collaborative development and re-use of publicly-financed free, libre and open source software (F/OSS) applications developments for use in European public administrations. It also promotes and links to the work of national repositories, encouraging the emergence of a pan-European federation of open source software repositories.</p>
<p><a href="#!U;http://www.osor.eu/projects/japs2!#">Entando project is published, among others, on OSOR.eu Repository</a>.</p>]]></hypertext></attribute><attribute name="Image1" attributetype="Image"><resource resourcetype="Image" id="13" lang="en" /><text lang="en">Osor Logo</text></attribute><attribute name="Image2" attributetype="Image"><resource resourcetype="Image" id="28" lang="en" /><text lang="en">Entando Logo</text></attribute><list attributetype="Monolist" name="Attach" nestedtype="Attach" /><list attributetype="Monolist" name="Links" nestedtype="Link" /></attributes><status>PUBLIC</status><version>6.0</version><lastEditor>jeff</lastEditor><created>20110923185204</created><lastModified>20111207124456</lastModified></content>
', 'administrators', '6.0', 'jeff');


--
-- TOC entry 1867 (class 0 OID 560357)
-- Dependencies: 132
-- Data for Name: jpcontentfeedback_comments; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1868 (class 0 OID 560363)
-- Dependencies: 133
-- Data for Name: jpcontentfeedback_rating; Type: TABLE DATA; Schema: public; Owner: agile
--


--
-- TOC entry 1870 (class 0 OID 560373)
-- Dependencies: 135
-- Data for Name: localstrings; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE', 'en', 'page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE', 'it', 'pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_MODEL', 'en', 'page model');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_MODEL', 'it', 'modello pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_TITLE', 'en', 'page title');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_TITLE', 'it', 'titolo pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NOT_ALLOWED', 'en', 'User not allowed');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NOT_ALLOWED', 'it', 'Utente non autorizzato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_NOT_FOUND', 'en', 'Page not found');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PAGE_NOT_FOUND', 'it', 'Pagina non trovata');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('GENERIC_ERROR', 'en', 'Generic Error');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('GENERIC_ERROR', 'it', 'Errore Generico');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_BASIC', 'it', 'Normale');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_BASIC', 'en', 'Normal');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_MINT', 'it', 'Avanzata');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_MINT', 'en', 'Advanced');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_BASIC_GOTO', 'it', 'Accedi con client normale');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_BASIC_GOTO', 'en', 'Go to the administration with normal client');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_MINT_GOTO', 'it', 'Accedi con client avanzato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ADMINISTRATION_MINT_GOTO', 'en', 'Go to the administration with advanced client');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DATE_FROM', 'en', 'From');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DATE_FROM', 'it', 'Da');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DATE_TO', 'en', 'To');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DATE_TO', 'it', 'A');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('TEXT', 'en', 'Text');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('TEXT', 'it', 'Testo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ALL', 'en', 'All');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ALL', 'it', 'Tutte');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NUMBER_FROM', 'en', 'From');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NUMBER_FROM', 'it', 'Da');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NUMBER_TO', 'en', 'To');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NUMBER_TO', 'it', 'A');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_APPLY', 'en', 'Apply');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_APPLY', 'it', 'Applica');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_CONFIG_INTRO', 'en', 'Choose which content you want to add in this page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_CONFIG_INTRO', 'it', 'Scegli quali contenuti mostrare nella pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_CONFIGMYHOME', 'en', 'Page Content Configuration');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_CONFIGMYHOME', 'it', 'Configura la Pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_INSERTINTOCOLUMN', 'en', 'Inserting it into column');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_INSERTINTOCOLUMN', 'it', 'Inserendolo nella colonna');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_MOVE', 'en', 'Move');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_MOVE', 'it', 'Sposta');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_RESET', 'en', 'Reset the Page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_RESET', 'it', 'Reimposta la pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_MOVETHISSHOWLET', 'en', 'Move this box');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_MOVETHISSHOWLET', 'it', 'Sposta questo box');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_RESET_INTRO', 'en', 'If you want to discard the current configuration you can reset the page.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_RESET_INTRO', 'it', 'Se desideri riportare la pagina alla configurazione predefinita, puoi resettare le impostazioni.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_SWAPITWITH', 'en', 'Swap it with');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_SWAPITWITH', 'it', 'Scambiandolo con');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_LOADING_INFO', 'it', 'Caricamento informazioni in corso...');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_LOADING_INFO', 'en', 'Loading...');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_ERROR_INFO', 'it', 'Si è verificato un errore, riprovare.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPMYPORTALPLUS_ERROR_INFO', 'en', 'An error has occurred, retry.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_CONFIRM_NEWPASS', 'it', 'Conferma nuova password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_CONFIRM_NEWPASS', 'en', 'Confirm new password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_EDITPASSWORD', 'it', 'Modifica Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_EDITPASSWORD', 'en', 'Edit Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_EDITPASSWORD_TITLE', 'it', 'Modifica Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_EDITPASSWORD_TITLE', 'en', 'Edit Password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_EDITPROFILE_TITLE', 'it', 'Modifica profilo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_EDITPROFILE_TITLE', 'en', 'Edit Profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEUP', 'it', 'Sposta su');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEUP', 'en', 'Move up');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEUP_IN', 'it', 'Sposta su in posizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEUP_IN', 'en', 'Move at position');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEDOWN', 'it', 'Sposta giu');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEDOWN', 'en', 'Move down');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEDOWN_IN', 'it', 'Sposta giu in posizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_MOVEDOWN_IN', 'en', 'Move down at position');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_REMOVE', 'it', 'Rimuovi dalla lista');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ITEM_REMOVE', 'en', 'Remove from list');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_MESSAGE_TITLE_FIELDERRORS', 'it', 'Attenzione, si sono verificati i seguenti errori nella compilazione del modulo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_MESSAGE_TITLE_FIELDERRORS', 'en', 'Warning, please check the module');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_NEWPASS', 'it', 'Nuova password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_NEWPASS', 'en', 'New password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_OLDPASSWORD', 'it', 'Vecchia password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_OLDPASSWORD', 'en', 'Old password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PASSWORD_UPDATED', 'it', 'La password è stata aggiornata correttamente.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PASSWORD_UPDATED', 'en', 'Your password updated successfully.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PROFILE_UPDATED', 'it', 'Profilo aggiornato correttamente.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PROFILE_UPDATED', 'en', 'Your profile is now updated.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_SAVE_PASSWORD', 'it', 'Salva password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_SAVE_PASSWORD', 'en', 'Save password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_SAVE_PROFILE', 'it', 'Salva il profilo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_SAVE_PROFILE', 'en', 'Save profile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ADDITEM_LIST', 'it', 'Aggiungi nuovo elemento alla lista');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ADDITEM_LIST', 'en', 'Add an element to the list');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PUBLICCHECK', 'it', 'Il mio profilo è pubblico');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PUBLICCHECK', 'en', 'My profile is public');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_YES', 'it', 'Si');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_YES', 'en', 'Yes');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_NO', 'it', 'No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_NO', 'en', 'No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_BOTH_YES_AND_NO', 'it', 'Indifferente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_BOTH_YES_AND_NO', 'en', 'Both');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MANDATORY_SHORT', 'it', '*');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MANDATORY_SHORT', 'en', '*');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MANDATORY_FULL', 'it', 'Obbligatorio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MANDATORY_FULL', 'en', 'Mandatory');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MINLENGTH_SHORT', 'it', 'Min');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MINLENGTH_SHORT', 'en', 'Min');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MINLENGTH_FULL', 'it', 'Lunghezza Minima');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MINLENGTH_FULL', 'en', 'Minimum length');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MAXLENGTH_SHORT', 'it', 'Max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MAXLENGTH_SHORT', 'en', 'Max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MAXLENGTH_FULL', 'it', 'Lunghezza Massima');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ENTITY_ATTRIBUTE_MAXLENGTH_FULL', 'en', 'Maximum length');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_4', 'it', 'Walter');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_4', 'en', 'Walter');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_4', 'it', 'customer user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_4', 'en', 'customer user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_4', 'it', 'walter');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_4', 'en', 'walter');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_4', 'it', 'pass');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_4', 'en', 'pass');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LABEL_USER', 'it', 'utente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LABEL_USER', 'en', 'user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LABEL_PASS', 'it', 'password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LABEL_PASS', 'en', 'password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_GUEST', 'it', 'Ospite');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_GUEST', 'en', 'Guest');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_GUEST', 'it', 'user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_GUEST', 'en', 'user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_GUEST', 'it', 'guest');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_GUEST', 'en', 'guest');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_GUEST', 'it', 'pass');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_GUEST', 'en', 'pass');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_1', 'it', 'admin');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_1', 'en', 'admin');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_2', 'it', 'intranet user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_2', 'en', 'intranet user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_3', 'it', 'customer user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_DESCR_3', 'en', 'customer user');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LANG_en', 'it', 'English');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LANG_en', 'en', 'English');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LANG_it', 'it', 'Italiano');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LANG_it', 'en', 'Italiano');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_STATUS_CREDENTIALS_INVALID', 'it', 'Credenziali non valide.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_STATUS_CREDENTIALS_INVALID', 'en', 'Username/Password not valid.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USERNAME', 'it', 'Utente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USERNAME', 'en', 'Username');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('COPYRIGHT', 'it', 'Copyright &copy; Tzente S.r.l. 2011');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('COPYRIGHT', 'en', 'Copyright &copy; Tzente S.r.l. 2011');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCHED_FOR', 'en', 'You searched for');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCHED_FOR', 'it', 'Hai cercato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_FORM_TITLE', 'en', 'Search');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_FORM_TITLE', 'it', 'Cerca');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_GO', 'en', 'Go');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_GO', 'it', 'Vai');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_NOTHING_FOUND', 'en', 'Nothing found.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_NOTHING_FOUND', 'it', 'Nessun risultato trovato.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS', 'en', 'Search results');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS', 'it', 'Risultati della ricerca');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS_INTRO', 'en', 'You''ve found');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS_INTRO', 'it', 'Sono stati trovati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS_OUTRO', 'en', 'results');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_RESULTS_OUTRO', 'it', 'risultati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME', 'it', 'Benvenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME', 'en', 'Welcome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SLOGAN_DESCRIPTION', 'it', 'Entando is the next generation information management platform. It''s the open source alternative to classic proprietary and open source portal and content management systems.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SLOGAN_DESCRIPTION', 'en', 'Entando is the next generation information management platform. It''s the open source alternative to classic proprietary and open source portal and content management systems.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LINKS', 'en', 'Links');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LINKS', 'it', 'Approfondimenti');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ATTACHMENTS', 'en', 'Attachments');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ATTACHMENTS', 'it', 'Allegati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ARCHIVE_STYLE1_TITLE', 'en', 'Choose new style');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ARCHIVE_STYLE1_TITLE', 'it', 'Scegli questo stile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ARCHIVE_STYLE2_TITLE', 'en', 'Choose new style');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ARCHIVE_STYLE2_TITLE', 'it', 'Scegli questo stile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ARCHIVE_STYLE3_TITLE', 'en', 'Choose new style');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('ARCHIVE_STYLE3_TITLE', 'it', 'Scegli questo stile');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRNome', 'it', 'Nome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRNome', 'en', 'Name');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRCognome', 'it', 'Cognome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRCognome', 'en', 'Surname');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRemail', 'it', 'Email');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRemail', 'en', 'Email');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpmyportalplus_RESET_INTRO', 'it', 'Se vuoi, puoi resettare la configurazione della pagina.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpmyportalplus_RESET_INTRO', 'en', 'If you preferer, reset the page configuration.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_1', 'en', 'Jeff');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_1', 'it', 'Jeff');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_1', 'en', 'jeff');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_1', 'it', 'jeff');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_1', 'en', 'adminadmin');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_1', 'it', 'adminadmin');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_2', 'en', 'Caroline');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_2', 'it', 'Caroline');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_2', 'en', 'caroline');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_2', 'it', 'caroline');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_3', 'en', 'Max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_NAME_3', 'it', 'Max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_3', 'en', 'max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_LOGIN_3', 'it', 'max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_3', 'en', 'customer');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_3', 'it', 'customer');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_2', 'en', 'intranet');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('USER_PASS_2', 'it', 'intranet');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpsharewith_TITLE', 'it', 'Condividi con...');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpsharewith_TITLE', 'en', 'Share with...');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpsharewith_NOSCRIPT', 'en', 'This feature needs a Javascript enabled browser.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpsharewith_NOSCRIPT', 'it', 'Questa funzionalità ha bisogno di un browser con Javascript attivato.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PORTAL_TITLE', 'it', 'Entando Demo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PORTAL_TITLE', 'en', 'Entando Demo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PREV', 'it', 'Prec');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('PREV', 'en', 'Prev');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NEXT', 'it', 'Succ');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('NEXT', 'en', 'Next');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DOWNLOAD', 'it', 'Download');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('DOWNLOAD', 'en', 'Download');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRazienda', 'en', 'Company');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_ATTRazienda', 'it', 'Azienda');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LIST_VIEWER_EMPTY', 'it', 'Nessun risultato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LIST_VIEWER_EMPTY', 'en', 'Nothing found');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LOGIN', 'it', 'Login');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LOGIN', 'en', 'Sign In');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LOGOUT', 'it', 'Logout');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LOGOUT', 'en', 'Sign Out');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('EDIT_THIS_CONTENT', 'en', 'Edit this content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('EDIT_THIS_CONTENT', 'it', 'Modifica questo contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('TWEET', 'en', 'Tweet');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('TWEET', 'it', 'Tweet');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('BEGIN_GUEST', 'en', 'Begin guest');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('BEGIN_GUEST', 'it', 'Begin guest');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_caroline', 'en', '<strong>Welcome Caroline!</strong> you are a co-worker and you can access to the intranet area!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_caroline', 'it', '<strong>Benvenuta Caroline!</strong> sei una collaboratrice e puoi accedere alla sezione intranet!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_max', 'en', '<strong>Welcome Max!</strong> you are a customer and you can access to the customer area!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_max', 'it', '<strong>Welcome Max!</strong> sei un cliente e puoi accedere alla sezione clienti!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH', 'en', 'Search');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH', 'it', 'Cerca');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_jeff', 'en', '<strong>Welcome, Jeff</strong>! you are an administrator with full control over the entire portal!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_jeff', 'it', '<strong>Benvenuto, Jeff!</strong> sei un amministratore con controllo completo di tutto il portale!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_admin', 'en', '<strong>Welcome Admin!</strong> you are an administrator with full control over the entire portal!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WELCOME_admin', 'it', '<strong>Benvenuto Admin!</strong> sei un amministratore con controllo completo di tutto il portale!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LOGIN_AS', 'en', 'Sign in as');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('LOGIN_AS', 'it', 'Accedi come');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PLEASE_LOGIN', 'en', 'Please Sign In');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PLEASE_LOGIN', 'it', 'E'' necessario effettuare l''accesso');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PLEASE_LOGIN_AGAIN', 'en', 'Please Sign Out and Sign In again.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PLEASE_LOGIN_AGAIN', 'it', 'E'' necessario riloggarsi.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PLEASE_LOGIN_TO_EDIT_PASSWORD', 'en', 'Please Sign Out and Sign In again in order to change your password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpuserprofile_PLEASE_LOGIN_TO_EDIT_PASSWORD', 'it', 'E'' necessario effettuare l''accesso per cambiare la password');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_BY', 'en', 'Search by');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SEARCH_BY', 'it', 'Cerca per');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_USER_NOT_ALLOWED', 'it', 'Operazione non consentita');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_USER_NOT_ALLOWED', 'en', 'Operation not allowed');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_GENERIC_ERROR', 'it', 'Si è verificato un errore');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_GENERIC_ERROR', 'en', 'An error is happened');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_ERRORS', 'it', 'Errori');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_ERRORS', 'en', 'Errors');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_WORKING_ON', 'it', 'Stai lavorando a');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_WORKING_ON', 'en', 'You are working on');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONTENT_FREE', 'it', 'Contenuto visibile a tutti');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONTENT_FREE', 'en', 'Content visible to all');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SAVE', 'it', 'Salva');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SAVE', 'en', 'Save');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SEARCH', 'it', 'Cerca');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SEARCH', 'en', 'Search');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONTINUE', 'it', 'Continua');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONTINUE', 'en', 'Continue');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_URL', 'it', 'Link a url');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_URL', 'en', 'Link to url');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_PAGE', 'it', 'Link a pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_PAGE', 'en', 'Link to page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_CONTENT', 'it', 'Link a contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_CONTENT', 'en', 'Link to content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_CONTENT_ON_PAGE', 'it', 'su pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINK_TO_CONTENT_ON_PAGE', 'en', 'on page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE', 'it', 'Configura');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE', 'en', 'Configure');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REMOVE', 'it', 'Rimuovi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REMOVE', 'en', 'Remove');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_DO_THIS_ON_DEFAULT_LANG', 'it', 'Questo Attributo può essere usato solamente nella sezione della lingua di default');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_DO_THIS_ON_DEFAULT_LANG', 'en', 'You can only fill this Attribute from the default language section');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_LINK_ATTRIBUTE', 'it', 'Configura Attributo Link');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_LINK_ATTRIBUTE', 'en', 'Configure Link Attribute');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_STEP_1_OF_2', 'it', '(Passo 1 di 2)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_STEP_1_OF_2', 'en', '(Step 1 of 2)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_STEP_2_OF_2', 'it', '(Passo 2 di 2)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_STEP_2_OF_2', 'en', '(Step 2 of 2)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CHOOSE_LINK_TYPE', 'it', 'Scelta tipo di link');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CHOOSE_LINK_TYPE', 'en', 'Choose link type');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_LINK_TO_CONTENT', 'it', 'Scegli un Contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_LINK_TO_CONTENT', 'en', 'Choose a Content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SEARCH_FOR_DESCR', 'it', 'Cerca per Descrizione:');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SEARCH_FOR_DESCR', 'en', 'Search for Description:');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SEARCH_FILTERS', 'it', 'Raffina la Ricerca');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SEARCH_FILTERS', 'en', 'Refine your Search');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_TYPE', 'it', 'Tipo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_TYPE', 'en', 'Type');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SELECT_ALL', 'it', 'Tutti');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_SELECT_ALL', 'en', 'All');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_STATUS', 'it', 'Stato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_STATUS', 'en', 'Status');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINKATTRIBUTE_CONTENT_SUMMARY', 'it', 'La tabella mostra l''elenco dei contenuti disponibili per la configurazione del LinkAttribute. Per ogni contenuto è indicata la descrizione, il codice, il Gruppo di Utenti a cui appartiene, la data di creazione e quella di ultima modifica.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINKATTRIBUTE_CONTENT_SUMMARY', 'en', 'This table shows a list of contents available for the configuration of LinkAttribute. For each content it shows description, code, group, date of creation and of last modification.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINKATTRIBUTE_CONTENT_CAPTION', 'it', 'Lista Contenuti');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LINKATTRIBUTE_CONTENT_CAPTION', 'en', 'Content List');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_DESCRIPTION', 'it', 'Descrizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_DESCRIPTION', 'en', 'Description');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_GROUP', 'it', 'Gruppo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_GROUP', 'en', 'Group');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CREATION_DATE', 'it', 'Creazione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CREATION_DATE', 'en', 'Creation');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LAST_EDIT', 'it', 'Ultima Modifica');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LAST_EDIT', 'en', 'Last Edit');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_MAKE_CONTENT_ON_PAGE', 'it', 'Prosegui scegliendo anche una Pagina di pubblicazione temporanea');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_eMail', 'en', 'Email');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_MAKE_CONTENT_ON_PAGE', 'en', 'Continue choosing a Page for on-the-fly publishing');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_LINK_TO_PAGE', 'it', 'Scegli una  Pagina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_LINK_TO_PAGE', 'en', 'Choose a Page');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_FOR_THE_CONTENT', 'it', 'per il Contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_FOR_THE_CONTENT', 'en', 'for the Content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_PAGE_TREE', 'it', 'Albero delle Pagine');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_PAGE_TREE', 'en', 'Page Tree');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIRM', 'it', 'Conferma');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIRM', 'en', 'Confirm');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_URL', 'it', 'Inserisci un URL valido (esempio: http://www.miosito.it/)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CONFIGURE_URL', 'en', 'Insert a valid URL (ex: http://www.miosito.it/)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_URL', 'it', 'URL');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_URL', 'en', 'URL');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_PREVIOUS_LINK', 'it', 'In precedenza era stato configurato un');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_PREVIOUS_LINK', 'en', 'Previously configured as');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_EDIT_CONTENT', 'it', 'Modifica');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_EDIT_CONTENT', 'en', 'Edit');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REMOVE_CONTENT', 'it', 'Elimina');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REMOVE_CONTENT', 'en', 'Remove');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_CONTENT', 'it', 'Crea un nuovo contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_CONTENT', 'en', 'Create a new content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CHOOSE_ATTACH', 'it', 'Scegli un allegato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CHOOSE_ATTACH', 'en', 'Choose an attachment');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CHOOSE_IMAGE', 'it', 'Scegli un''immagine');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CHOOSE_IMAGE', 'en', 'Choose an image');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CATEGORY', 'it', 'Categoria');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CATEGORY', 'en', 'Category');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_JOIN', 'it', 'Associa');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_JOIN', 'en', 'Join');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_JOIN_TO', 'it', 'Associa al Contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_JOIN_TO', 'en', 'Join to Content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_RESOURCE', 'en', 'New Resource');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_RESOURCE', 'it', 'Nuova Risorsa');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_BACK_TO_CONTENT', 'en', 'Back to the Content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_BACK_TO_CONTENT', 'it', 'Torna al Contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REQUIRED_SHORT', 'en', '*');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REQUIRED_SHORT', 'it', '*');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REQUIRED_FULL', 'en', 'Required');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_REQUIRED_FULL', 'it', 'Obbligatorio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_INFO', 'en', 'Info');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_INFO', 'it', 'Info');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_FILE', 'en', 'File');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_FILE', 'it', 'File');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CATEGORIES_MANAGEMENT', 'en', 'Categories Management');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CATEGORIES_MANAGEMENT', 'it', 'Gestione delle Categorie');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_RESOURCES_CATEGORIES_SUMMARY', 'en', 'The table shows the categories associated with the resource. For each category shows the description (also known as the title), and you can remove it from the table.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_RESOURCES_CATEGORIES_SUMMARY', 'it', 'La tabella mostra le Categorie associate alla Risorsa. Per ogni categoria è indicata la descrizione (nota anche come titolo), ed è possibile rimuoverla dalla tabella.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_RESOURCES_CATEGORIES', 'en', 'Categories');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_RESOURCES_CATEGORIES', 'it', 'Categorie');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_RESOURCES_CATEGORY', 'en', 'Category');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_RESOURCES_CATEGORY', 'it', 'Categoria');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_INFO', 'en', 'The fields marked with * are required.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_INFO', 'it', 'I campi contrassegnati dal simbolo * sono obbligatori.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MANDATORY_FULL', 'en', 'Mandatory');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MANDATORY_FULL', 'it', 'Obbligatorio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MANDATORY_SHORT', 'en', '*');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MANDATORY_SHORT', 'it', '*');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MAXLENGTH_FULL', 'en', 'Max Length');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MAXLENGTH_FULL', 'it', 'Lunghezza massima');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MAXLENGTH_SHORT', 'en', 'max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MAXLENGTH_SHORT', 'it', 'max');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MINLENGTH_FULL', 'en', 'Min Length');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MINLENGTH_FULL', 'it', 'Lunghezza minima');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MINLENGTH_SHORT', 'en', 'min');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ENTITY_ATTR_FLAG_MINLENGTH_SHORT', 'it', 'min');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_INVIA', 'en', 'Send');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_INVIA', 'it', 'Invia');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_MESSAGE_SAVE_CONFIRMATION', 'it', 'Il messaggio è stato inviato correttamente. Se vuoi inviaci un''altra');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_MESSAGE_SAVE_CONFIRMATION', 'en', 'The message has been sent successfully. If you need, send us another');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_MESSAGE_REQUEST_LINK', 'en', 'request');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_MESSAGE_REQUEST_LINK', 'it', 'richiesta');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_SELECT', 'en', 'Select');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_SELECT', 'it', 'Seleziona');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_MESSAGETYPE', 'it', 'Scegliere un tipo di messaggio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_MESSAGETYPE', 'en', 'Choose a message type');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_CHOOSE_TYPE', 'it', 'Scegli e continua');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_CHOOSE_TYPE', 'en', 'Select and continue');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ERRORS', 'it', 'Errori durante la compilazione del modulo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ERRORS', 'en', 'Errors occured');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_YES', 'it', 'Si');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_YES', 'en', 'Yes');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_NO', 'it', 'No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_NO', 'en', 'No');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_BOTH_YES_AND_NO', 'it', 'Indifferente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_BOTH_YES_AND_NO', 'en', 'Both');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ERRORS_HAPPENED', 'it', 'Si sono verificati degli errori!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_ERRORS_HAPPENED', 'en', 'An error has happened!');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_Company', 'it', 'Azienda');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_Company', 'en', 'Company');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_Address', 'it', 'Indirizzo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_Address', 'en', 'Address');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_eMail', 'it', 'Email');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_Note', 'it', 'Messaggio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_Note', 'en', 'Message');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_SAVE', 'it', 'Invia');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_COM_SAVE', 'en', 'Send');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_CONTENT_RATING', 'it', 'Valutazione del Contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_CONTENT_RATING', 'en', 'Content Rating');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_AVG_RATING', 'it', 'Voto medio dei lettori:');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_AVG_RATING', 'en', 'Average users rating:');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTERS_NUM', 'it', 'votanti.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTERS_NUM', 'en', 'voters.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTERS_NULL', 'it', 'Ancora nessun utente ha votato questo contenuto.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTERS_NULL', 'en', 'No rating yet.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTE', 'it', 'Valuta');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTE', 'en', 'Rate it Now');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTE_SUBMIT', 'it', 'Invia la Valutazione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_VOTE_SUBMIT', 'en', 'Send Rating');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENTS', 'it', 'Commenti');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENTS', 'en', 'Comments');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_AUTHOR', 'it', 'Autore');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_AUTHOR', 'en', 'Author');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_DATE', 'it', 'Data');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_DATE', 'en', 'Date');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_TEXT', 'it', 'Testo Commento');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_TEXT', 'en', 'Comment Text');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_DELETE', 'it', 'Cancella');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_DELETE', 'en', 'Delete');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_RATING', 'it', 'Valutazione Commento');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_RATING', 'en', 'Comment Rating');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_NORATING', 'it', 'Nessuna valutazione da parte degli utenti.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_NORATING', 'en', 'No rating yet.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_LABEL_RATING', 'it', 'Voto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_LABEL_RATING', 'en', 'Rating Value');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_SEND', 'it', 'Invia');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_SEND', 'en', 'Send');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_THE_CONTENT', 'it', 'Commenta il Contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENT_THE_CONTENT', 'en', 'Comment this Content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_LABEL_COMMENTTEXT', 'it', 'Testo del Commento');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_LABEL_COMMENTTEXT', 'en', 'Comment Text');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENTS_NULL', 'it', 'Ancora nessun commento per questo contenuto.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpcontentfeedback_COMMENTS_NULL', 'en', 'No comments yet.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ACTIVE_QUESTIONNAIRE', 'en', 'active Questionnaires');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ACTIVE_QUESTIONNAIRE', 'it', 'questionari attivi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_AGE', 'en', 'Age');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_AGE', 'it', 'Età');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ANSWER_NUMBER', 'en', 'response number');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ANSWER_NUMBER', 'it', 'risposta numero');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ANSWERS', 'en', 'Answers');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ANSWERS', 'it', 'Risposte');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ARCHIVE_ENDDAY', 'en', 'and expired');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ARCHIVE_ENDDAY', 'it', 'ed è scaduto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_BEGIN', 'en', 'Begins');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_BEGIN', 'it', 'Inizia il');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_COUNTRY', 'en', 'City');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_COUNTRY', 'it', 'Città');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_DESCRIPTION', 'en', 'Description');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_DESCRIPTION', 'it', 'Descrizione');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ENDDAY', 'en', 'and expires');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ENDDAY', 'it', 'e scadrà');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_ALREADY_VOTED', 'en', 'Mistake! You have already voted.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_ALREADY_VOTED', 'it', 'Errore! Hai già votato.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_EXPIRED_SURVEY', 'en', 'Mistake! The survey is already expired.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_EXPIRED_SURVEY', 'it', 'Errore! Il sondaggio è scaduto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_FINALRESULTNOTALLOWED', 'en', 'Mistake! The display of final results is not allowed.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_FINALRESULTNOTALLOWED', 'it', 'Errore! La visualizzazione dei risultati finali non è permessa.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_NOTBEGUNYET', 'en', 'Mistake! You have not yet begun.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_NOTBEGUNYET', 'it', 'Errore! Non hai ancora cominciato.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_NULL_VOTER_RESPONSE', 'en', 'Mistake! The number of responses is zero');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_NULL_VOTER_RESPONSE', 'it', 'Errore! Il numero di risposte è nullo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_PARTIALRESULTSNOTALLOWED', 'en', 'Mistake! Display of partial results is not allowed.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_PARTIALRESULTSNOTALLOWED', 'it', 'Errore! La visualizzazione dei risultati parziali non è permessa.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_USER_NOT_ALLOWED', 'en', 'Mistake! Unauthorized.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_ERROR_USER_NOT_ALLOWED', 'it', 'Errore! Utente non autorizzato.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_FINAL_RESULTS', 'en', 'Final Results');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_FINAL_RESULTS', 'it', 'Risultati finali');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_FREE_TEXT', 'en', 'Free Text');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_FREE_TEXT', 'it', 'Testo Libero');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO', 'en', 'Send');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO', 'it', 'Invia');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_ACTIVE_POLLS', 'en', 'active Polls');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_ACTIVE_POLLS', 'it', 'sondaggi attivi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_ACTIVE_POLLS', 'en', 'Go to the list of active polls');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_ACTIVE_POLLS', 'it', 'Vai alla lista dei sondaggi attivi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_ACTIVE_QUESTIONNAIRE', 'en', 'Go to the list of active surveys');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_ACTIVE_QUESTIONNAIRE', 'it', 'Vai alla lista dei questionari attivi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_POLL', 'en', 'Go to');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_POLL', 'it', 'Vai a');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_POLL_ARCHIVE', 'en', 'Go to surveys');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_POLL_ARCHIVE', 'it', 'Vai all''archivio sondaggi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_QUESTIONNAIRE', 'en', 'Vai a');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_QUESTIONNAIRE', 'it', 'Vai a');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_QUESTIONNAIRE_ARCHIVE', 'en', 'Go to questionnaires');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_GO_TO_QUESTIONNAIRE_ARCHIVE', 'it', 'Vai all''archivio questionari');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_INSERT_FREE_TEXT', 'en', 'Enter free text');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_INSERT_FREE_TEXT', 'it', 'Inserisci il testo libero');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_MAX_ANSWERS', 'en', 'Maximum number of responses');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_MAX_ANSWERS', 'it', 'Numero massimo di risposte');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_MIN_ANSWERS', 'en', 'Minimum number of responses');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_MIN_ANSWERS', 'it', 'Numero minimo di risposte');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_OBTAINED', 'en', 'scored');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_OBTAINED', 'it', 'ha ottenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_PARTIAL_RESULTS', 'en', 'Subtotals');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_PARTIAL_RESULTS', 'it', 'Risultati parziali');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_PERSON', 'en', 'people.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_PERSON', 'it', 'persone.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLL', 'en', 'poll');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLL', 'it', 'sondaggio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLL_ARCHIVE', 'en', 'Archive');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLL_ARCHIVE', 'it', 'Archivio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLL_STARTDAY', 'en', 'The survey was published');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLL_STARTDAY', 'it', 'Il sondaggio è stato pubblicato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS', 'en', 'Polls');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS', 'it', 'Sondaggi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS_ARCHIVE_INTRO', 'en', 'If you want you can go back to');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS_ARCHIVE_INTRO', 'it', 'Se vuoi puoi tornare ai');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS_LIST', 'en', 'List active polls');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS_LIST', 'it', 'Lista dei sondaggi attivi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS_LIST_INTRO', 'en', 'If you want you can see the results of polls ended in');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_POLLS_LIST_INTRO', 'it', 'Se vuoi puoi vedere i risultati dei sondaggi scaduti nell''');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_PROFILE_NEEDED', 'en', 'It takes some of your data. Thank you for your cooperation.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_PROFILE_NEEDED', 'it', 'Sono necessari alcuni tuoi dati anagrafici. Grazie per la collaborazione.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTION', 'en', 'Question');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTION', 'it', 'Domanda');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTION_OF', 'en', 'of');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTION_OF', 'it', 'di');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTIONNAIRE_ARCHIVE', 'en', 'Archive');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTIONNAIRE_ARCHIVE', 'it', 'Archivio');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTIONNAIRE_LIST_INTRO', 'en', 'If you want, you can see the list of expired surveys browsing the');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_QUESTIONNAIRE_LIST_INTRO', 'it', 'Se vuoi puoi vedere i questionari scaduti nell''');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_SEX', 'en', 'Gender');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_SEX', 'it', 'Sesso');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_SURVEY', 'en', 'questionnaire');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_SURVEY', 'it', 'questionario');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_SURVEY_STARTDAY', 'en', 'The questionnaire was posted');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_SURVEY_STARTDAY', 'it', 'Il questionario è stato pubblicato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_THANKS_FOR', 'en', 'Thank you for cooperating. If you want you can return to the list');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_THANKS_FOR', 'it', 'Grazie per aver collaborato. Se vuoi puoi tornare alla lista dei');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_TITLE', 'en', 'Title');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_TITLE', 'it', 'Titolo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_VOTED_TOT', 'en', 'All voted');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_VOTED_TOT', 'it', 'Hanno votato in tutto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_VOTES', 'en', 'votes');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_VOTES', 'it', 'voti');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_HAVE_NOT_VOTED', 'en', 'You have not voted');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_HAVE_NOT_VOTED', 'it', 'Non hai ancora votato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_HAVE_VOTED', 'en', 'You have already voted');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_HAVE_VOTED', 'it', 'Hai già votato');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_NOT_VOTED', 'en', '(You have not voted)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_NOT_VOTED', 'it', '(Non hai ancora votato)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_VOTED', 'en', '(You have already voted)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('JPSURVEY_YOU_VOTED', 'it', '(Hai già votato)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpsurvey_POLLS_ARCHIVE_LIST_TITLE', 'it', 'Archivio dei Sondaggi');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpsurvey_POLLS_ARCHIVE_LIST_TITLE', 'en', 'Polls Archive');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CONTENT_CHANGED', 'it', 'Il contenuto è stato salvato correttamente. La pagina si sta ricaricando.');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('CONTENT_CHANGED', 'en', 'Content saved. This page will be reloaded');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('EDIT_CONTENT', 'it', 'Modifica Contenuto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('EDIT_CONTENT', 'en', 'Edit Content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WIDGET_EDIT_POPUP_TITLE', 'it', 'Edit');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('WIDGET_EDIT_POPUP_TITLE', 'en', 'Edit');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_FASTCONTENTEDIT_SHOWLET_TITLE', 'it', 'Modifica Contenuto da Frontend');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_FASTCONTENTEDIT_SHOWLET_TITLE', 'en', 'Edit Content');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_INTRO_en', 'it', 'Inglese');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_INTRO_en', 'en', 'English');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_INTRO_it', 'it', 'Italiano');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_INTRO_it', 'en', 'Italian');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Date', 'it', 'Data');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Date', 'en', 'Date');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Body', 'it', 'Testo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Body', 'en', 'Body');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Image1', 'it', 'Immagine 1');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Image1', 'en', 'Image 1');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Image2', 'it', 'Immagine 2');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Image2', 'en', 'Image 1');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Attach', 'it', 'Allegati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Attach', 'en', 'Attachments');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Links', 'it', 'Link correlati');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Links', 'en', 'Related links');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LIST', 'it', 'Lista');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_LIST', 'en', 'List');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_TITLE_COM', 'it', 'Form Azienda');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_TITLE_COM', 'en', 'Company Form');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_ATTACH', 'en', 'New File');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_ATTACH', 'it', 'Nuovo File');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_IMAGE', 'it', 'Nuovo File');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_IMAGE', 'en', 'New File');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('VIEW_ALL', 'it', 'View All');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('VIEW_ALL', 'en', 'View All');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('EDIT_CONTENT_BACKOFFICE', 'en', 'Edit Content (Backoffice)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('EDIT_CONTENT_BACKOFFICE', 'it', 'Modifica Contenuto (Backoffice)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CNG_Title', 'en', 'Title');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CNG_Title', 'it', 'Titolo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CNG_Abstract', 'en', 'Abstract');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_CNG_Abstract', 'it', 'Estratto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Title', 'en', 'Title');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Title', 'it', 'Titolo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Abstract', 'en', 'Abstract');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpfastcontentedit_NEW_Abstract', 'it', 'Estratto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('MESSAGE_TITLE_FIELDERRORS', 'en', 'Error');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('MESSAGE_TITLE_FIELDERRORS', 'it', 'Errore');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Name', 'en', 'Name');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Name', 'it', 'Nome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Surname', 'en', 'Surname');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Surname', 'it', 'Cognome');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Address', 'en', 'Address');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Address', 'it', 'Indirizzo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_eMail', 'en', 'Email');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_eMail', 'it', 'Email');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Date', 'en', 'Birthday');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Date', 'it', 'Data di nascita');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Number', 'en', 'Height (cm)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Number', 'it', 'Altezza (cm)');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Text', 'en', 'Personal WebSite');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Text', 'it', 'Sito Personale');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Longtext', 'en', 'Note');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Longtext', 'it', 'Note');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_SAVE', 'en', 'Send');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_SAVE', 'it', 'Invia');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Enumerator', 'en', 'Contract Type');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_PER_Enumerator', 'it', 'Tipo Contratto');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_TITLE_PER', 'en', 'User Form');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('jpwebdynamicform_TITLE_PER', 'it', 'Form Utente');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SLOGAN_TITLE', 'en', 'Welcome to Entando Portal Demo');
INSERT INTO localstrings (keycode, langcode, stringvalue) VALUES ('SLOGAN_TITLE', 'it', 'Benvenuto nel Portale Demo di Entando');


--
-- TOC entry 1871 (class 0 OID 560379)
-- Dependencies: 136
-- Data for Name: pagemodels; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO pagemodels (code, descr, frames, plugincode) VALUES ('internal', 'Internal', '<frames>
	<frame locked="true" pos="0">
		<descr>Top Header I</descr>
		<defaultShowlet code="navigation_langbar" />
	</frame>
	<frame locked="true" pos="1">
		<descr>Top Header II</descr>
<defaultShowlet code="login_form" />
	</frame>
	<frame locked="true" pos="2">
		<descr>Top Header III</descr>
	</frame>
	<frame locked="true" pos="3">
		<descr>Header I</descr>
	</frame>
	<frame locked="true" pos="4">
		<descr>Header II</descr>
		<defaultShowlet code="search_form" />
	</frame>
	<frame locked="true" pos="5">
		<descr>Header III</descr>
	</frame>
	<frame locked="true" pos="6">
		<descr>Users I</descr>
	</frame>
	<frame locked="true" pos="7">
		<descr>Users II</descr>
	</frame>
	<frame locked="true" pos="8">
		<descr>Users III</descr>
	</frame>
	<frame locked="true" pos="9">
		<descr>Users IV</descr>
	</frame>
	<frame locked="true" pos="10">
		<descr>Content I</descr>
		<defaultShowlet code="navigation_menu">
			<properties>
				<property key="navSpec">code(homepage).subtree(1)</property>
			</properties>
		</defaultShowlet>
	</frame>
	<frame locked="true" pos="11">
		<descr>Content II</descr>
	</frame>
	<frame locked="true" pos="12">
		<descr>Content III</descr>
	</frame>
	<frame locked="true" pos="13">
		<descr>Content IV</descr>
	</frame>
	<frame locked="true" pos="14" main="true">
		<descr>Left Column I</descr>
	</frame>
	<frame locked="true" pos="15">
		<descr>Left Column II</descr>
	</frame>
	<frame locked="true" pos="16">
		<descr>Left Column III</descr>
	</frame>
	<frame locked="true" pos="17">
		<descr>Left Column IV</descr>
	</frame>
	<frame locked="true" pos="18">
		<descr>Left Column V</descr>
	</frame>
	<frame locked="true" pos="19">
		<descr>Left Column VI</descr>
	</frame>
	<frame locked="true" pos="20">
		<descr>Left Column VII</descr>
	</frame>
	<frame locked="true" pos="21">
		<descr>Left Column VIII</descr>
	</frame>
	<frame locked="true" pos="22">
		<descr>Left Column IX</descr>
	</frame>
	<frame locked="true" pos="23">
		<descr>Left Column X</descr>
	</frame>
	<frame locked="true" pos="24">
		<descr>Right Column I</descr>
	</frame>
	<frame locked="true" pos="25">
		<descr>Right Column II</descr>
	</frame>
	<frame locked="true" pos="26">
		<descr>Right Column III</descr>
	</frame>
	<frame locked="true" pos="27">
		<descr>Right Column IV</descr>
	</frame>
	<frame locked="true" pos="28">
		<descr>Right Column V</descr>
	</frame>
	<frame locked="true" pos="29">
		<descr>Right Column VI</descr>
	</frame>
	<frame locked="true" pos="30">
		<descr>Right Column VII</descr>
	</frame>
	<frame locked="true" pos="31">
		<descr>Right Column VIII</descr>
	</frame>
	<frame locked="true" pos="32">
		<descr>Right Column IX</descr>
	</frame>
	<frame locked="true" pos="33">
		<descr>Right Column X</descr>
	</frame>
	<frame locked="true" pos="34">
		<descr>Footer I</descr>
	</frame>
	<frame locked="true" pos="35">
		<descr>Footer II</descr>
	</frame>
	<frame locked="true" pos="36">
		<descr>Footer III</descr>
		<defaultShowlet code="jpsharewith" />
	</frame>
	<frame locked="true" pos="37">
		<descr>Footer IV</descr>
	</frame>
</frames>', NULL);
INSERT INTO pagemodels (code, descr, frames, plugincode) VALUES ('home', 'Home Page', '<frames>
	<frame locked="true" pos="0">
		<descr>Top Header I</descr>
		<defaultShowet code="navigation_langbar" />
	</frame>
	<frame locked="true" pos="1">
		<descr>Top Header II</descr>
		<defaultShowet code="login_form" />
	</frame>
	<frame locked="true" pos="2">
		<descr>Top Header III</descr>
	</frame>
	<frame locked="true" pos="3">
		<descr>Header I</descr>
	</frame>
	<frame locked="true" pos="4">
		<descr>Header II</descr>
		<defaultShowet code="search_form" />
	</frame>
	<frame locked="true" pos="5">
		<descr>Header III</descr>
	</frame>
	<frame locked="true" pos="6">
		<descr>Users I</descr>
	</frame>
	<frame locked="true" pos="7">
		<descr>Users II</descr>
	</frame>
	<frame locked="true" pos="8">
		<descr>Users III</descr>
	</frame>
	<frame locked="true" pos="9">
		<descr>Users IV</descr>
	</frame>
	<frame locked="true" pos="10">
		<descr>Content I</descr>
		<defaultShowet code="navigation_menu">
			<properties>
				<property key="navSpec">code(homepage).subtree(1)</property>
			</properties>
		</defaultShowet>
	</frame>
	<frame locked="true" pos="11">
		<descr>Content II</descr>
	</frame>
	<frame locked="true" pos="12">
		<descr>Content III</descr>
	</frame>
	<frame locked="true" pos="13">
		<descr>Content IV</descr>
	</frame>
	<!-- start column 1 -->
		<frame column="1" locked="false" pos="14">
			<descr>Widgets Column 1 - I</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="15">
			<descr>Widgets Column 1 - II</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="16">
			<descr>Widgets Column 1 - III</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="17">
			<descr>Widgets Column 1 - IV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="18">
			<descr>Widgets Column 1 - V</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="19">
			<descr>Widgets Column 1 - VI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="20">
			<descr>Widgets Column 1 - VII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="21">
			<descr>Widgets Column 1 - VIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="22">
			<descr>Widgets Column 1 - IX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="23">
			<descr>Widgets Column 1 - X</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="24">
			<descr>Widgets Column 1 - XI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="25">
			<descr>Widgets Column 1 - XII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="26">
			<descr>Widgets Column 1 - XIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="27">
			<descr>Widgets Column 1 - XIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="28">
			<descr>Widgets Column 1 - XV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="29">
			<descr>Widgets Column 1 - XVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="30">
			<descr>Widgets Column 1 - XVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="31">
			<descr>Widgets Column 1 - XVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="32">
			<descr>Widgets Column 1 - XIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="33">
			<descr>Widgets Column 1 - XX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="34">
			<descr>Widgets Column 1 - XXI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="35">
			<descr>Widgets Column 1 - XXII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="36">
			<descr>Widgets Column 1 - XXIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="37">
			<descr>Widgets Column 1 - XXIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="38">
			<descr>Widgets Column 1 - XXV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="39">
			<descr>Widgets Column 1 - XXVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="40">
			<descr>Widgets Column 1 - XXVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="41">
			<descr>Widgets Column 1 - XXVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="42">
			<descr>Widgets Column 1 - XXIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="43">
			<descr>Widgets Column 1 - XXX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="44">
			<descr>Widgets Column 1 - XXXI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="45">
			<descr>Widgets Column 1 - XXXII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="46">
			<descr>Widgets Column 1 - XXXIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="47">
			<descr>Widgets Column 1 - XXXIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="48">
			<descr>Widgets Column 1 - XXXV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="49">
			<descr>Widgets Column 1 - XXXVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="50">
			<descr>Widgets Column 1 - XXXVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="51">
			<descr>Widgets Column 1 - XXXVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="52">
			<descr>Widgets Column 1 - XXXIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="53">
			<descr>Widgets Column 1 - XL</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="54">
			<descr>Widgets Column 1 - XLI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="55">
			<descr>Widgets Column 1 - XLII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="56">
			<descr>Widgets Column 1 - XLIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="57">
			<descr>Widgets Column 1 - XLIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="58">
			<descr>Widgets Column 1 - XLV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="59">
			<descr>Widgets Column 1 - XLVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="60">
			<descr>Widgets Column 1 - XLVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="61">
			<descr>Widgets Column 1 - XLVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="62">
			<descr>Widgets Column 1 - XLIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="1" locked="false" pos="63">
			<descr>Widgets Column 1 - L</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<!-- end column 1 -->
		<!-- start column 2 -->
		<frame column="2" locked="false" pos="64">
			<descr>Widgets Column 2 - I</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="65">
			<descr>Widgets Column 2 - II</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="66">
			<descr>Widgets Column 2 - III</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="67">
			<descr>Widgets Column 2 - IV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="68">
			<descr>Widgets Column 2 - V</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="69">
			<descr>Widgets Column 2 - VI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="70">
			<descr>Widgets Column 2 - VII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="71">
			<descr>Widgets Column 2 - VIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="72">
			<descr>Widgets Column 2 - IX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="73">
			<descr>Widgets Column 2 - X</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="74">
			<descr>Widgets Column 2 - XI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="75">
			<descr>Widgets Column 2 - XII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="76">
			<descr>Widgets Column 2 - XIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="77">
			<descr>Widgets Column 2 - XIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="78">
			<descr>Widgets Column 2 - XV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="79">
			<descr>Widgets Column 2 - XVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="80">
			<descr>Widgets Column 2 - XVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="81">
			<descr>Widgets Column 2 - XVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="82">
			<descr>Widgets Column 2 - XIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="83">
			<descr>Widgets Column 2 - XX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="84">
			<descr>Widgets Column 2 - XXI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="85">
			<descr>Widgets Column 2 - XXII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="86">
			<descr>Widgets Column 2 - XXIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="87">
			<descr>Widgets Column 2 - XXIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="88">
			<descr>Widgets Column 2 - XXV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="89">
			<descr>Widgets Column 2 - XXVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="90">
			<descr>Widgets Column 2 - XXVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="91">
			<descr>Widgets Column 2 - XXVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="92">
			<descr>Widgets Column 2 - XXIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="93">
			<descr>Widgets Column 2 - XXX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="94">
			<descr>Widgets Column 2 - XXXI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="95">
			<descr>Widgets Column 2 - XXXII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="96">
			<descr>Widgets Column 2 - XXXIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="97">
			<descr>Widgets Column 2 - XXXIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="98">
			<descr>Widgets Column 2 - XXXV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="99">
			<descr>Widgets Column 2 - XXXVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="100">
			<descr>Widgets Column 2 - XXXVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="101">
			<descr>Widgets Column 2 - XXXVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="102">
			<descr>Widgets Column 2 - XXXIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="103">
			<descr>Widgets Column 2 - XL</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="104">
			<descr>Widgets Column 2 - XLI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="105">
			<descr>Widgets Column 2 - XLII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="106">
			<descr>Widgets Column 2 - XLIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="107">
			<descr>Widgets Column 2 - XLIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="108">
			<descr>Widgets Column 2 - XLV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="109">
			<descr>Widgets Column 2 - XLVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="110">
			<descr>Widgets Column 2 - XLVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="111">
			<descr>Widgets Column 2 - XLVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="112">
			<descr>Widgets Column 2 - XLIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="2" locked="false" pos="113">
			<descr>Widgets Column 2 - L</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
	<!--  end column 2 -->
	<!--  start column 3 -->
		<frame column="3" locked="false" pos="114">
			<descr>Widgets Column 3 - I</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="115">
			<descr>Widgets Column 3 - II</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="116">
			<descr>Widgets Column 3 - III</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="117">
			<descr>Widgets Column 3 - IV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="118">
			<descr>Widgets Column 3 - V</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="119">
			<descr>Widgets Column 3 - VI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="120">
			<descr>Widgets Column 3 - VII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="121">
			<descr>Widgets Column 3 - VIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="122">
			<descr>Widgets Column 3 - IX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="123">
			<descr>Widgets Column 3 - X</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="124">
			<descr>Widgets Column 3 - XI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="125">
			<descr>Widgets Column 3 - XII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="126">
			<descr>Widgets Column 3 - XIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="127">
			<descr>Widgets Column 3 - XIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="128">
			<descr>Widgets Column 3 - XV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="129">
			<descr>Widgets Column 3 - XVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="130">
			<descr>Widgets Column 3 - XVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="131">
			<descr>Widgets Column 3 - XVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="132">
			<descr>Widgets Column 3 - XIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="133">
			<descr>Widgets Column 3 - XX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="134">
			<descr>Widgets Column 3 - XXI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="135">
			<descr>Widgets Column 3 - XXII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="136">
			<descr>Widgets Column 3 - XXIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="137">
			<descr>Widgets Column 3 - XXIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="138">
			<descr>Widgets Column 3 - XXV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="139">
			<descr>Widgets Column 3 - XXVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="140">
			<descr>Widgets Column 3 - XXVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="141">
			<descr>Widgets Column 3 - XXVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="142">
			<descr>Widgets Column 3 - XXIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="143">
			<descr>Widgets Column 3 - XXX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="144">
			<descr>Widgets Column 3 - XXXI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="145">
			<descr>Widgets Column 3 - XXXII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="146">
			<descr>Widgets Column 3 - XXXIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="147">
			<descr>Widgets Column 3 - XXXIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="148">
			<descr>Widgets Column 3 - XXXV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="149">
			<descr>Widgets Column 3 - XXXVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="150">
			<descr>Widgets Column 3 - XXXVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="151">
			<descr>Widgets Column 3 - XXXVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="152">
			<descr>Widgets Column 3 - XXXIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="153">
			<descr>Widgets Column 3 - XL</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="154">
			<descr>Widgets Column 3 - XLI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="155">
			<descr>Widgets Column 3 - XLII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="156">
			<descr>Widgets Column 3 - XLIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="157">
			<descr>Widgets Column 3 - XLIV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="158">
			<descr>Widgets Column 3 - XLV</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="159">
			<descr>Widgets Column 3 - XLVI</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="160">
			<descr>Widgets Column 3 - XLVII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="161">
			<descr>Widgets Column 3 - XLVIII</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="162">
			<descr>Widgets Column 3 - XLIX</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
		<frame column="3" locked="false" pos="163">
			<descr>Widgets Column 3 - L</descr><defaultShowet code="jpmyportalplus_void" />
		</frame>
	<!--  end column 3 -->
	<frame locked="true" pos="164">
		<descr>Footer I</descr>
	</frame>
	<frame locked="true" pos="165">
		<descr>Footer II</descr>
	</frame>
	<frame locked="true" pos="166">
		<descr>Footer III</descr>
		<defaultShowet code="jpsharewith" />
	</frame>
	<frame locked="true" pos="167">
		<descr>Footer IV</descr>
		<defaultShowet code="navigation_menu">
			<properties>
				<property key="navSpec">code(homepage) + code(view_content_test)</property>
			</properties>
		</defaultShowet>
	</frame>
</frames>', NULL);


--
-- TOC entry 1872 (class 0 OID 560385)
-- Dependencies: 137
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('homepage', 'homepage', -1, 'home', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Home</property>
<property key="it">Home</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('login', 'service', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Pagina di login</property>
<property key="en">Login</property>
</properties>', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('errorpage', 'service', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Error page</property>
<property key="it">Pagina di errore</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('notfound', 'service', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Page not found</property>
<property key="it">Pagina non trovata</property>
</properties>

', 'free', 1, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('search', 'service', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search Results</property>
<property key="it">Risultati della Ricerca</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('newsview', 'service', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the News</property>
<property key="it">Leggi la Notizia</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('profile', 'service', 6, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Profile Edit</property>
<property key="it">Modifica Profile</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news_style1', 'news_archive', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News Archive</property>
<property key="it">News Archive</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news_style2', 'news_archive', 2, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News Archive</property>
<property key="it">News Archive</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news_style3', 'news_archive', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News Archive</property>
<property key="it">News Archive</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('configure_latest_documents', 'service', 7, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Latest Documents</property>
<property key="it">Ultimi documenti</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('events', 'homepage', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Events</property>
<property key="it">Eventi</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('contentsview', 'service', 8, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Read the content</property>
<property key="it">Leggi il Contenuto</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>false</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('service', 'homepage', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="it">Pagine di Servizio</property>
<property key="en">Service</property>
</properties>', 'free', 0, NULL);
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('formview', 'service', 10, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Dynamic Form</property>
<property key="it">Form Dinamico</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('news_archive', 'homepage', 2, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News</property>
<property key="it">News</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('surveys_list', 'quest_suveys', 1, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Active Questionnaires</property> 
<property key="it">Questionari Attivi</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('video_archive', 'homepage', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Video Archive</property>
<property key="it">Archivio Video</property>
</properties>

', 'free', 0, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('fastcontentedit', 'service', 9, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Frontent Content Editing</property>
<property key="it">Modifica Contenuto da Frontend</property>
</properties>

', 'free', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('surveys_archive', 'quest_suveys', 2, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Questionnaires Archive</property> 
<property key="it">Archivio Questionari</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('survey_detail', 'quest_suveys', 3, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Questionnaire Details</property> 
<property key="it">Dettaglio Questionario</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('survey_results', 'quest_suveys', 4, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Questionnaire Results</property> 
<property key="it">Risultati Questionario</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('polls_list', 'quest_suveys', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Active Polls</property> 
<property key="it">Sondaggi Attivi</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('polls_archive', 'quest_suveys', 6, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Polls Archive</property> 
<property key="it">Archivio Sondaggi</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('poll_detail', 'quest_suveys', 7, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Poll Details</property> 
<property key="it">Dettaglio Sondaggi</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('poll_results', 'quest_suveys', 8, 'internal', '<?xml version="1.0" encoding="UTF-8"?> <properties> 
<property key="en">Poll Details</property> 
<property key="it">Dettaglio Sondaggi</property> </properties> ', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?> <config> <useextratitles>true</useextratitles> </config> ');
INSERT INTO pages (code, parentcode, pos, modelcode, titles, groupcode, showinmenu, extraconfig) VALUES ('quest_suveys', 'homepage', 5, 'internal', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Questionnaires and Surveys</property>
<property key="it">Questionari e Sondaggi</property>
</properties>

', 'intranet', 1, '<?xml version="1.0" encoding="UTF-8"?>
<config>
  <useextratitles>true</useextratitles>
</config>

');


--
-- TOC entry 1873 (class 0 OID 560391)
-- Dependencies: 138
-- Data for Name: resourcerelations; Type: TABLE DATA; Schema: public; Owner: agile
--



--
-- TOC entry 1874 (class 0 OID 560394)
-- Dependencies: 139
-- Data for Name: resources; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('13', 'Image', 'Logo Osor', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="13"><descr>Logo Osor</descr><groups mainGroup="free" /><categories /><masterfile>OSOR-logo.png</masterfile><instance><size>3</size><filename>OSOR-logo_d3.png</filename><mimetype>image/png</mimetype><weight>4 Kb</weight></instance><instance><size>2</size><filename>OSOR-logo_d2.png</filename><mimetype>image/png</mimetype><weight>4 Kb</weight></instance><instance><size>1</size><filename>OSOR-logo_d1.png</filename><mimetype>image/png</mimetype><weight>4 Kb</weight></instance><instance><size>0</size><filename>OSOR-logo_d0.png</filename><mimetype>image/png</mimetype><weight>5 Kb</weight></instance></resource>
', 'OSOR-logo.png');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('14', 'Image', 'Banner Live Event Tzente - Pentaho - Bnova', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="14"><descr>Banner Live Event Tzente - Pentaho - Bnova</descr><groups mainGroup="free" /><categories /><masterfile>Banner_Evento.jpg</masterfile><instance><size>3</size><filename>Banner_Evento_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>6 Kb</weight></instance><instance><size>2</size><filename>Banner_Evento_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>1</size><filename>Banner_Evento_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Banner_Evento_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>15 Kb</weight></instance></resource>
', 'Banner_Evento.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('16', 'Image', 'Banner Webcast integrazione Entando - Pentaho', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="16"><descr>Banner Webcast integrazione Entando - Pentaho</descr><groups mainGroup="free" /><categories /><masterfile>Webinar.png</masterfile><instance><size>3</size><filename>Webinar_d3.png</filename><mimetype>image/png</mimetype><weight>27 Kb</weight></instance><instance><size>2</size><filename>Webinar_d2.png</filename><mimetype>image/png</mimetype><weight>12 Kb</weight></instance><instance><size>1</size><filename>Webinar_d1.png</filename><mimetype>image/png</mimetype><weight>4 Kb</weight></instance><instance><size>0</size><filename>Webinar_d0.png</filename><mimetype>image/png</mimetype><weight>56 Kb</weight></instance></resource>
', 'Webinar.png');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('18', 'Image', 'Entando IdeaScale', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="18"><descr>Entando IdeaScale</descr><groups mainGroup="free" /><categories /><masterfile>ideascale_logo.jpeg</masterfile><instance><size>3</size><filename>ideascale_logo_d3.jpeg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>2</size><filename>ideascale_logo_d2.jpeg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>1</size><filename>ideascale_logo_d1.jpeg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>ideascale_logo_d0.jpeg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance></resource>
', 'ideascale_logo.jpeg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('20', 'Image', 'Intranet Area', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="20"><descr>Intranet Area</descr><groups mainGroup="free" /><categories /><masterfile>Intranet_Area.jpg</masterfile><instance><size>3</size><filename>Intranet_Area_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>6 Kb</weight></instance><instance><size>2</size><filename>Intranet_Area_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>1</size><filename>Intranet_Area_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>Intranet_Area_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>239 Kb</weight></instance></resource>
', 'Intranet_Area.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('23', 'Image', 'Intranet Notice Board', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="23"><descr>Intranet Notice Board</descr><groups mainGroup="free" /><categories /><masterfile>Intranet_notice_board.jpg</masterfile><instance><size>3</size><filename>Intranet_notice_board_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>6 Kb</weight></instance><instance><size>2</size><filename>Intranet_notice_board_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>1</size><filename>Intranet_notice_board_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Intranet_notice_board_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>801 Kb</weight></instance></resource>
', 'Intranet_notice_board.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('24', 'Image', 'Company Meeting', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="24"><descr>Company Meeting</descr><groups mainGroup="free" /><categories /><masterfile>Company_Meeting.jpg</masterfile><instance><size>3</size><filename>Company_Meeting_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>10 Kb</weight></instance><instance><size>2</size><filename>Company_Meeting_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>5 Kb</weight></instance><instance><size>1</size><filename>Company_Meeting_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Company_Meeting_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>803 Kb</weight></instance></resource>
', 'Company_Meeting.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('10', 'Image', 'Meeting', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="10"><descr>Meeting</descr><groups mainGroup="free" /><categories /><masterfile>Live_Event_Tzente_Pentaho_Bnova_d5.jpg</masterfile><instance><size>3</size><filename>Live_Event_Tzente_Pentaho_Bnova_d5_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>5 Kb</weight></instance><instance><size>2</size><filename>Live_Event_Tzente_Pentaho_Bnova_d5_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>3 Kb</weight></instance><instance><size>1</size><filename>Live_Event_Tzente_Pentaho_Bnova_d5_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Live_Event_Tzente_Pentaho_Bnova_d5_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>5 Kb</weight></instance></resource>
', 'Live_Event_Tzente_Pentaho_Bnova_d5.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('25', 'Image', 'Webcast Portal & BI', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="25"><descr>Webcast Portal &amp; BI</descr><groups mainGroup="free" /><categories /><masterfile>Webcast_Analytics.jpg</masterfile><instance><size>3</size><filename>Webcast_Analytics_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>9 Kb</weight></instance><instance><size>2</size><filename>Webcast_Analytics_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>5 Kb</weight></instance><instance><size>1</size><filename>Webcast_Analytics_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Webcast_Analytics_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>576 Kb</weight></instance></resource>
', 'Webcast_Analytics.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('26', 'Image', 'Contribute', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="26"><descr>Contribute</descr><groups mainGroup="free" /><categories /><masterfile>Contribute.jpg</masterfile><instance><size>3</size><filename>Contribute_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>4 Kb</weight></instance><instance><size>2</size><filename>Contribute_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>1</size><filename>Contribute_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>Contribute_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>124 Kb</weight></instance></resource>
', 'Contribute.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('29', 'Image', 'Live Event', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="29"><descr>Live Event</descr><groups mainGroup="free" /><categories /><masterfile>Live_Event.jpg</masterfile><instance><size>3</size><filename>Live_Event_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>10 Kb</weight></instance><instance><size>2</size><filename>Live_Event_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>5 Kb</weight></instance><instance><size>1</size><filename>Live_Event_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Live_Event_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>497 Kb</weight></instance></resource>
', 'Live_Event.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('31', 'Image', 'Analytics', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="31"><descr>Analytics</descr><groups mainGroup="free" /><categories /><masterfile>Analytics.jpg</masterfile><instance><size>3</size><filename>Analytics_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>8 Kb</weight></instance><instance><size>2</size><filename>Analytics_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>4 Kb</weight></instance><instance><size>1</size><filename>Analytics_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>Analytics_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>325 Kb</weight></instance></resource>
', 'Analytics.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('32', 'Image', 'Customer Services', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="32"><descr>Customer Services</descr><groups mainGroup="free" /><categories /><masterfile>Customer_services.jpg</masterfile><instance><size>3</size><filename>Customer_services_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>4 Kb</weight></instance><instance><size>2</size><filename>Customer_services_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>1</size><filename>Customer_services_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>Customer_services_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>346 Kb</weight></instance></resource>
', 'Customer_services.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('37', 'Attach', 'Entando System Requirements', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="37"><descr>Entando System Requirements</descr><groups mainGroup="free" /><categories /><masterfile>Entando_System_Requirements.pdf</masterfile><instance><size>0</size><filename>Entando_System_Requirements.pdf</filename><mimetype>application/pdf</mimetype><weight>43 Kb</weight></instance></resource>
', 'Entando_System_Requirements.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('39', 'Attach', 'Product Card', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="39"><descr>Product Card</descr><groups mainGroup="free" /><categories /><masterfile>Product_Card.pdf</masterfile><instance><size>0</size><filename>Product_Card.pdf</filename><mimetype>application/pdf</mimetype><weight>65 Kb</weight></instance></resource>
', 'Product_Card.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('43', 'Attach', 'Business Plan', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="43"><descr>Business Plan</descr><groups mainGroup="free" /><categories /><masterfile>Business_Plan.pdf</masterfile><instance><size>0</size><filename>Business_Plan.pdf</filename><mimetype>application/pdf</mimetype><weight>40 Kb</weight></instance></resource>
', 'Business_Plan.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('46', 'Attach', 'Best Practice', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="46"><descr>Best Practice</descr><groups mainGroup="free" /><categories /><masterfile>Entando_Plugin_Best_Practices.pdf</masterfile><instance><size>0</size><filename>Entando_Plugin_Best_Practices.pdf</filename><mimetype>application/pdf</mimetype><weight>39 Kb</weight></instance></resource>
', 'Entando_Plugin_Best_Practices.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('48', 'Attach', 'Intranet Documentation', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="48"><descr>Intranet Documentation</descr><groups mainGroup="free" /><categories /><masterfile>Intranet_Documentation.pdf</masterfile><instance><size>0</size><filename>Intranet_Documentation.pdf</filename><mimetype>application/pdf</mimetype><weight>27 Kb</weight></instance></resource>
', 'Intranet_Documentation.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('50', 'Attach', 'Customer Agreement', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="50"><descr>Customer Agreement</descr><groups mainGroup="free" /><categories /><masterfile>Customer_Agreement.pdf</masterfile><instance><size>0</size><filename>Customer_Agreement.pdf</filename><mimetype>application/pdf</mimetype><weight>40 Kb</weight></instance></resource>
', 'Customer_Agreement.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('52', 'Attach', 'Entando Model', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Attach" id="52"><descr>Entando Model</descr><groups mainGroup="free" /><categories /><masterfile>Entando_Model.pdf</masterfile><instance><size>0</size><filename>Entando_Model.pdf</filename><mimetype>application/pdf</mimetype><weight>78 Kb</weight></instance></resource>
', 'Entando_Model.pdf');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('57', 'Image', 'What is Entando', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="57"><descr>What is Entando</descr><groups mainGroup="free" /><categories /><masterfile>What_is_Entando.png</masterfile><instance><size>3</size><filename>What_is_Entando_d3.png</filename><mimetype>image/png</mimetype><weight>8 Kb</weight></instance><instance><size>2</size><filename>What_is_Entando_d2.png</filename><mimetype>image/png</mimetype><weight>4 Kb</weight></instance><instance><size>1</size><filename>What_is_Entando_d1.png</filename><mimetype>image/png</mimetype><weight>1 Kb</weight></instance><instance><size>0</size><filename>What_is_Entando_d0.png</filename><mimetype>image/png</mimetype><weight>43 Kb</weight></instance></resource>
', 'What_is_Entando.png');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('54', 'Image', 'My Entando APP', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="54"><descr>My Entando APP</descr><groups mainGroup="free" /><categories /><masterfile>APP.jpg</masterfile><instance><size>3</size><filename>APP_d3.jpg</filename><mimetype>image/jpeg</mimetype><weight>8 Kb</weight></instance><instance><size>2</size><filename>APP_d2.jpg</filename><mimetype>image/jpeg</mimetype><weight>4 Kb</weight></instance><instance><size>1</size><filename>APP_d1.jpg</filename><mimetype>image/jpeg</mimetype><weight>2 Kb</weight></instance><instance><size>0</size><filename>APP_d0.jpg</filename><mimetype>image/jpeg</mimetype><weight>45 Kb</weight></instance></resource>
', 'APP.jpg');
INSERT INTO resources (resid, restype, descr, maingroup, resourcexml, masterfilename) VALUES ('28', 'Image', 'Entando Logo', 'free', '<?xml version="1.0" encoding="UTF-8"?>
<resource typecode="Image" id="28"><descr>Entando Logo</descr><groups mainGroup="free" /><categories /><masterfile>Entando_green_logo.png</masterfile><instance><size>3</size><filename>Entando_green_logo_d3.png</filename><mimetype>image/png</mimetype><weight>2 Kb</weight></instance><instance><size>2</size><filename>Entando_green_logo_d2.png</filename><mimetype>image/png</mimetype><weight>1 Kb</weight></instance><instance><size>1</size><filename>Entando_green_logo_d1.png</filename><mimetype>image/png</mimetype><weight>0 Kb</weight></instance><instance><size>0</size><filename>Entando_green_logo_d0.png</filename><mimetype>image/png</mimetype><weight>5 Kb</weight></instance></resource>
', 'Entando_green_logo.png');


--
-- TOC entry 1875 (class 0 OID 560400)
-- Dependencies: 140
-- Data for Name: showletcatalog; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a Content</property>
<property key="it">Contenuti - Pubblica un Contenuto</property>
</properties>', '<config>
	<parameter name="contentId">
		Content ID
	</parameter>
	<parameter name="modelId">
		Content Model ID
	</parameter>
	<action name="viewerConfig"/>
</config>', 'jacms', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('messages_system', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">System Messages</property>
<property key="it">Messaggi di Sistema</property>
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('search_result', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search - Search Result</property>
<property key="it">Ricerca - Risultati della Ricerca</property>
</properties>', NULL, 'jacms', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('login_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Login Form</property>
<property key="it">Form di Login</property>
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Internal Servlet</property>
<property key="it">Invocazione di una Servlet Interna</property>
</properties>', '<config>
	<parameter name="actionPath">
		Path to an action or to a JSP. You must prepend ''/ExtStr2'' to any Struts2 action path
	</parameter>
	<action name="configSimpleParameter"/>
</config>', NULL, NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpmyportalplus_void', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">My Portal - Void</property>
<property key="it">My Portal - Vuoto</property>
</properties>', NULL, 'jpmyportalplus', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpmyportalplus_sample_showlet', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">My Portal - Sample Showlet</property>
<property key="it">My Portal - Showlet di Esempio</property>
</properties>

', NULL, 'jpmyportalplus', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpuserprofile_editCurrentUser', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User</property>
<property key="it">Edita Utente Corrente</property>
</properties>', NULL, 'jpuserprofile', 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpuserprofile/Front/CurrentUser/edit.action</property>
</properties>', 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpuserprofile_editCurrentUser_password', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User Password</property>
<property key="it">Edita Password Utente Corrente</property>
</properties>', NULL, 'jpuserprofile', 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpuserprofile/Front/CurrentUser/editPassword.action</property>
</properties>', 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpuserprofile_editCurrentUser_profile', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Edit Current User Profile</property>
<property key="it">Edita Profilo Utente Corrente</property>
</properties>', NULL, 'jpuserprofile', 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpuserprofile/Front/CurrentUser/Profile/edit.action</property>
</properties>', 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('navigation_langbar', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Langbar</property>
<property key="it">Navigazione - Barra della Lingua</property>
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('search_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Search - Search Form</property>
<property key="it">Ricerca - Form di Ricerca</property>
</properties>

', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Navigation - Navigation Menu</property>
<property key="it">Navigazione - Menu di Navigazione</property>
</properties>', '<config>
	<parameter name="navSpec">Rules for the Page List auto-generation</parameter>
	<action name="navigatorConfig" />
</config>', NULL, NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('news_choose_style', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">News - Choose style</property>
<property key="it">Notizie - Scegli stile</property>
</properties>', NULL, NULL, NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('documents_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Latest Documents</property>
<property key="it">Documenti recenti</property>
</properties>

', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="linkDescr_it">Configura</property>
<property key="pageLink">configure_latest_documents</property>
<property key="linkDescr_en">Configure</property>
<property key="contentType">DWN</property>
<property key="modelId">42</property>
</properties>

', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('latest_news', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Latest News</property>
<property key="it">Ultime Notizie</property>
</properties>

', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">1</property>
<property key="linkDescr_it">Configura</property>
<property key="pageLink">news_style1</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="linkDescr_en">Configure</property>
<property key="contentType">NEW</property>
<property key="modelId">27</property>
</properties>

', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpsharewith', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Share With...</property>
<property key="it">Condividi con...</property>
</properties>', NULL, 'jpsharewith', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('mobile_myentando', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">My Entando Showcase</property>
<property key="it">My Entando Showcase</property>
</properties>

', NULL, NULL, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG45</property>
<property key="modelId">33</property>
</properties>

', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('inEvidenza', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Top Story</property>
<property key="it">In Evidenza</property>
</properties>

', NULL, NULL, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG45</property>
<property key="modelId">34</property>
</properties>

', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('latest_events', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Latest Events</property>
<property key="it">Ultimi Eventi</property>
</properties>

', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">2</property>
<property key="linkDescr_it">Configura</property>
<property key="categories">events</property>
<property key="pageLink">events</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="linkDescr_en">Configure</property>
<property key="contentType">NEW</property>
<property key="modelId">26</property>
</properties>

', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpfastcontentedit_content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a List of Contents Editables from Front-End</property>
<property key="it">Contenuti - Pubblica una Lista di contenuti editabili da Front-End</property>
</properties>', '<config>
	<parameter name="contentType">Content Type (mandatory)</parameter>
	<parameter name="modelId">Content Model</parameter>
	<parameter name="userFilters">Front-End user filter options</parameter>
	<parameter name="category">Content Category **deprecated**</parameter>
	<parameter name="categories">Content Category codes (comma separeted)</parameter>
	<parameter name="maxElemForItem">Contents for each page</parameter>
	<parameter name="filters" />
	<parameter name="title_{lang}">Showlet Title in lang {lang}</parameter>
	<parameter name="pageLink">The code of the Page to link</parameter>
	<parameter name="linkDescr_{lang}">Link description in lang {lang}</parameter>
	<action name="listViewerConfig"/>
</config>', 'jpfastcontentedit', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpfastcontentedit_formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Content Editing Form</property>
<property key="it">Form Editing Contenuti</property>
</properties>', '<config>
	<parameter name="typeCode">Content Type (optional)</parameter>
	<parameter name="authorAttribute">Name of attribute containing Author name (optional)</parameter>
	<action name="jpfastcontenteditConfig"/>
</config>', 'jpfastcontentedit', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpwebdynamicform_message_form', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Dynamic Web Forms - Publish the form for a Message Type</property>
<property key="it">Dynamic Web Forms - Pubblica il form di un tipo di Messaggio</property>
</properties>', '<config>
	<parameter name="typeCode">Code of the Message Type</parameter>
	<action name="webdynamicformConfig"/>
</config>', 'jpwebdynamicform', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpwebdynamicform_message_choice', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Dynamic Web Forms - Choice of a type of Message</property>
<property key="it">Dynamic Web Forms - Scelta tipo di Messaggio</property>
</properties>', '<config>
	<parameter name="actionPath">
		Relative path of an action or a JSP (ex: /ExtStr2/do/jpwebdynamicform/Message/User/listTypes).
	</parameter>
	<action name="configSimpleParameter"/>
</config>', 'jpwebdynamicform', 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpwebdynamicform/Message/User/listTypes</property>
</properties>', 0, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('form_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">WebForms</property>
<property key="it">WebForms</property>
</properties>

', NULL, NULL, 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpwebdynamicform/Message/User/listTypes?doSimpleList=true</property>
</properties>

', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('content_feedback_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Content Feedback - Publish a Content</property>
<property key="it">Feedback Contenuti - Pubblica un Contenuto</property>
</properties>', '<config>
	<parameter name="contentId">
		Content ID
	</parameter>
	<parameter name="modelId">
		Content Model ID
	</parameter>
	<parameter name="usedContentRating">
		Enable content rating (true|false)
	</parameter>
<parameter name="usedComment">
		Enable user comments (true|false)
	</parameter>
<parameter name="usedCommentWithRating">
		Enable rating on comments (true|false)
	</parameter>
<parameter name="commentValidation">
		Enable administrator moderation of comments (true|false)
	</parameter> 
<action name="viewerContentFeedbackConfig"/>
</config>', 'jpcontentfeedback', NULL, NULL, 1, NULL);
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('latest_video', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Latest Video</property>
<property key="it">Ultimi Video</property>
</properties>

', NULL, NULL, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">1</property>
<property key="linkDescr_it">Archivio</property>
<property key="pageLink">video_archive</property>
<property key="filters">(order=DESC;attributeFilter=false;key=created)</property>
<property key="linkDescr_en">Archive</property>
<property key="contentType">YTB</property>
<property key="modelId">52</property>
</properties>

', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('form_new', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Dynamic Web Forms - Form Viewer</property>
<property key="it">Dynamic Web Forms - Form Viewer</property>
</properties>

', NULL, NULL, 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpwebdynamicform/Message/User/new</property>
</properties>

', 0, 'free');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpsurvey_pollList', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Polls</property>
<property key="it">Sondaggi</property>
</properties>

', NULL, 'jpsurvey', NULL, NULL, 1, 'intranet');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpsurvey_questionnaireList', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Questionnaires</property>
<property key="it">Questionari</property>
</properties>

', NULL, 'jpsurvey', NULL, NULL, 1, 'intranet');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpsurvey_pollArchive', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Polls Archive</property>
<property key="it">Archivio dei Sondaggi</property>
</properties>

', NULL, 'jpsurvey', NULL, NULL, 1, 'intranet');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpsurvey_questionnaireArchive', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Questionnaires Archive</property>
<property key="it">Archivio Questionari</property>
</properties>

', NULL, 'jpsurvey', NULL, NULL, 1, 'intranet');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpsurvey_detailsSurvey', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Questionnaire/Survey - Details</property>
<property key="it">Questionari/Sondaggi - Dettaglio</property>
</properties>

', NULL, 'jpsurvey', 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpsurvey/Front/Survey/entryPoint.action</property>
</properties>

', 1, 'intranet');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('jpsurvey_resultsSurvey', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Questionnaire/Survey - Show Results</property>
<property key="it">Questionario/Sondaggio - Mostra Risultati</property>
</properties>

', NULL, 'jpsurvey', 'formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="actionPath">/ExtStr2/do/jpsurvey/Front/SurveyDetail/entryPoint.action</property>
</properties>

', 1, 'intranet');
INSERT INTO showletcatalog (code, titles, parameters, plugincode, parenttypecode, defaultconfig, locked, maingroup) VALUES ('content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="en">Contents - Publish a List of Contents</property>
<property key="it">Contenuti - Pubblica una Lista di Contenuti</property>
</properties>', '<config>
	<parameter name="contentType">Content Type (mandatory)</parameter>
	<parameter name="modelId">Content Model</parameter>
	<parameter name="userFilters">Front-End user filter options</parameter>
	<parameter name="category">Content Category **deprecated**</parameter>
	<parameter name="categories">Content Category codes (comma separeted)</parameter>
    <parameter name="orClauseCategoryFilter" />
	<parameter name="maxElemForItem">Contents for each page</parameter>
	<parameter name="filters" />
	<parameter name="title_{lang}">Showlet Title in lang {lang}</parameter>
	<parameter name="pageLink">The code of the Page to link</parameter>
	<parameter name="linkDescr_{lang}">Link description in lang {lang}</parameter>
	<action name="listViewerConfig"/>
</config>', 'jacms', NULL, NULL, 1, NULL);


--
-- TOC entry 1876 (class 0 OID 560406)
-- Dependencies: 141
-- Data for Name: showletconfig; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('search', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('search', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('search', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('search', 14, 'search_result', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('profile', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('profile', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('profile', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('profile', 14, 'jpuserprofile_editCurrentUser_password', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('profile', 15, 'jpuserprofile_editCurrentUser_profile', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style1', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style2', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style3', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style1', 15, 'news_choose_style', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style2', 15, 'news_choose_style', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style3', 15, 'news_choose_style', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style1', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style1', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 166, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('events', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('events', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('events', 2, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('events', 15, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="userFilters">(attributeFilter=true;key=Title)</property>
<property key="categories">events</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="contentType">NEW</property>
<property key="modelId">21</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('configure_latest_documents', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('configure_latest_documents', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('configure_latest_documents', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('configure_latest_documents', 14, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="title_it">Documenti</property>
<property key="filters">(order=DESC;attributeFilter=false;key=modified)</property>
<property key="title_en">Latest Documents</property>
<property key="contentType">DWN</property>
<property key="modelId">4</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('configure_latest_documents', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('notfound', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('notfound', 2, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('notfound', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('notfound', 14, 'messages_system', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('notfound', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('errorpage', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('errorpage', 2, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('errorpage', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('errorpage', 14, 'messages_system', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('errorpage', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('newsview', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('newsview', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('contentsview', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('contentsview', 14, 'content_viewer', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style1', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style2', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style2', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style2', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style3', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style3', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style3', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('events', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('notfound', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 75, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 76, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 77, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 78, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 79, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 80, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 81, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 82, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('errorpage', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('newsview', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('newsview', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('newsview', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('search', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('profile', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('configure_latest_documents', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('contentsview', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('contentsview', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('contentsview', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style1', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style2', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style3', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('events', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('search', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('profile', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('contentsview', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 23, 'latest_news', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 73, 'inEvidenza', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 16, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 17, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 18, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 19, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 20, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 21, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 22, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 25, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 26, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 27, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 28, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 29, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 30, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 31, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 32, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 33, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 34, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 35, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 36, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 37, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 38, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 39, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 40, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 41, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 42, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 43, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 44, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 46, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 47, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 48, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 49, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 50, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 51, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 52, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 53, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 54, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 56, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 57, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 58, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 59, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 60, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 61, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 62, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 63, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 64, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 65, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 66, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 67, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 68, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 69, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 70, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 71, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 72, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 83, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 84, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 85, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 86, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 87, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 88, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 89, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 90, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 91, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 92, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 93, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 94, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 95, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 96, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 97, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 98, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 99, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 100, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 101, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 102, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 103, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 104, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 105, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 106, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 107, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 108, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 109, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 110, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 111, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 112, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 113, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 114, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 115, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 116, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 117, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 118, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 119, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 120, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 121, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 122, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 126, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 127, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 128, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 129, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 130, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 131, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 132, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 133, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 134, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 135, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 136, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 137, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 138, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 139, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 140, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 141, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 142, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 143, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 144, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 145, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 146, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 147, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 148, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 149, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 150, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 151, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 152, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 153, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 154, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 155, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 156, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 157, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 158, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 159, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 160, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 161, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 162, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 163, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 55, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 45, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_list', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_list', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_list', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_list', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_list', 15, 'jpsurvey_questionnaireList', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_archive', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_archive', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_archive', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_archive', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('surveys_archive', 15, 'jpsurvey_questionnaireArchive', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_detail', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_detail', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_detail', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_detail', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_detail', 15, 'jpsurvey_detailsSurvey', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_results', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_results', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_results', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_results', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('survey_results', 15, 'jpsurvey_resultsSurvey', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_list', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_list', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_list', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_list', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_list', 15, 'jpsurvey_pollList', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_archive', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_archive', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_archive', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_archive', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('polls_archive', 15, 'jpsurvey_pollArchive', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_detail', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_detail', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_detail', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_detail', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_detail', 15, 'jpsurvey_detailsSurvey', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_results', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_results', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_results', 5, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_results', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?> <properties> <property key="navSpec">code(homepage).subtree(1)</property> </properties> ', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('poll_results', 15, 'jpsurvey_resultsSurvey', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style1', 14, 'jpfastcontentedit_content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">3</property>
<property key="title_it">Ultime Notizie</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="title_en">Latest News</property>
<property key="contentType">NEW</property>
<property key="modelId">22</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style3', 14, 'jpfastcontentedit_content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">3</property>
<property key="title_it">Ultime Notizie</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="title_en">Latest News</property>
<property key="contentType">NEW</property>
<property key="modelId">24</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_style2', 14, 'jpfastcontentedit_content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">3</property>
<property key="title_it">Ultime Notizie</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="title_en">Latest News</property>
<property key="contentType">NEW</property>
<property key="modelId">23</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('formview', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('formview', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('formview', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('formview', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('formview', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('formview', 14, 'form_new', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('quest_suveys', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('quest_suveys', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('quest_suveys', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('quest_suveys', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('quest_suveys', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('quest_suveys', 14, 'jpsurvey_pollList', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('quest_suveys', 16, 'jpsurvey_questionnaireList', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 164, 'content_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="contentId">CNG59</property>
<property key="modelId">35</property>
</properties>

', 'CNG59');
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('newsview', 14, 'content_feedback_viewer', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="usedContentRating">true</property>
<property key="usedCommentWithRating">true</property>
<property key="usedComment">true</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('video_archive', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('video_archive', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('video_archive', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('video_archive', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('video_archive', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('video_archive', 15, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">20</property>
<property key="title_it">Archivio Video</property>
<property key="userFilters">(attributeFilter=false;key=category)+(attributeFilter=true;key=Title)</property>
<property key="filters">(order=DESC;attributeFilter=false;key=created)</property>
<property key="title_en">Video Archive</property>
<property key="contentType">YTB</property>
<property key="modelId">53</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 123, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('fastcontentedit', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('fastcontentedit', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('fastcontentedit', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('fastcontentedit', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('fastcontentedit', 14, 'jpfastcontentedit_formAction', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="typeCode">NEW</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('fastcontentedit', 36, 'jpsharewith', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 14, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 15, 'jpmyportalplus_void', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 24, 'latest_video', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 74, 'documents_list', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 124, 'form_list', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('homepage', 125, 'latest_events', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_archive', 0, 'navigation_langbar', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_archive', 1, 'login_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_archive', 4, 'search_form', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_archive', 10, 'navigation_menu', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="navSpec">code(homepage).subtree(1)</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_archive', 14, 'content_viewer_list', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="maxElemForItem">3</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="contentType">NEW</property>
<property key="modelId">22</property>
</properties>

', NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_archive', 15, 'news_choose_style', NULL, NULL);
INSERT INTO showletconfig (pagecode, framepos, showletcode, config, publishedcontent) VALUES ('news_archive', 36, 'jpsharewith', NULL, NULL);


--
-- TOC entry 1877 (class 0 OID 560412)
-- Dependencies: 142
-- Data for Name: sysconfig; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'langs', 'Definition of the system languages', '<?xml version="1.0" encoding="UTF-8"?>
<Langs>
	<Lang>
		<code>it</code>
		<descr>Italiano</descr>
	</Lang>
	<Lang>
		<code>en</code>
		<descr>English</descr>
		<default>true</default>
	</Lang>
</Langs>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'imageDimensions', 'Definition of the resized image dimensions', '<Dimensions>
	<Dimension>
		<id>1</id>
		<dimx>90</dimx>
		<dimy>90</dimy>
	</Dimension>
	<Dimension>
		<id>2</id>
		<dimx>160</dimx>
		<dimy>160</dimy>
	</Dimension>
	<Dimension>
		<id>3</id>
		<dimx>250</dimx>
		<dimy>250</dimy>
	</Dimension>
</Dimensions>
');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'params', 'Configuration params', '<?xml version="1.0" encoding="UTF-8"?>
<Params>
	<Param name="urlStyle">classic</Param>
	<Param name="hypertextEditor">fckeditor</Param>
	<Param name="treeStyle_page">classic</Param>
	<Param name="treeStyle_category">classic</Param>
	<Param name="startLangFromBrowser">false</Param>
	<SpecialPages>
		<Param name="notFoundPageCode">notfound</Param>
		<Param name="homePageCode">homepage</Param>
		<Param name="errorPageCode">errorpage</Param>
		<Param name="loginPageCode">login</Param>
	</SpecialPages>
	<ExtendendPrivacyModule>
		<Param name="extendedPrivacyModuleEnabled">false</Param>
		<Param name="maxMonthsSinceLastAccess">6</Param>
		<Param name="maxMonthsSinceLastPasswordChange">3</Param>        
	</ExtendendPrivacyModule>
</Params>
');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jpuserprofileProfileType', 'Definizione del profilo utente', '<?xml version="1.0" encoding="UTF-8"?>
<profiletypes>
	<profiletype typecode="PFL" typedescr="Profilo utente/cittadino tipo">
		<attributes>
			<attribute name="Nome" attributetype="Monotext" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jpuserprofile:firstname</role>
				</roles>
			</attribute>
			<attribute name="Cognome" attributetype="Monotext" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jpuserprofile:surname</role>
				</roles>
			</attribute>
			<attribute name="email" attributetype="Monotext" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jpuserprofile:mail</role>
				</roles>
			</attribute>
			<attribute name="azienda" attributetype="Monotext">
				<validations />
			</attribute>
		</attributes>
	</profiletype>
</profiletypes>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jpwebdynamicform_messageNotifierConfig', 'Configurazione del servizio di notifica Messaggi', '<messagetypes>
    <messagetype typeCode="PER" senderCode="CODE1" mailAttrName="eMail" >
        <recipients>
            <to><![CDATA[Address 1 <address@notexistant1.itte>]]></to>
            <to><![CDATA[Address 2 <address@notexistant2.itte>]]></to>
            <cc><![CDATA[Address 3 <address@notexistant3.itte>]]></cc>
            <bcc><![CDATA[Address 4 <address@notexistant4.itte>]]></bcc>
        </recipients>
        <model>
            <!-- CORPO DELLA MAIL -->
            <body><![CDATA[Corpo della Mail come template di Velocity]]></body>

            <!-- OGGETTO DELLA MAIL -->
            <subject><![CDATA[Oggetto della mail come template di Velocity]]></subject>
        </model>
    </messagetype>
    <messagetype typeCode="COM" senderCode="CODE2" mailAttrName="eMail" store="false" >
        <recipients>
            <to><![CDATA[Address 1 <address@notexistant1.itte>]]></to>
            <to><![CDATA[Address 2 <address@notexistant2.itte>]]></to>
            <to><![CDATA[Address 3 <address@notexistant3.itte>]]></to>
            <cc><![CDATA[Address 4 <address@notexistant4.itte>]]></cc>
            <cc><![CDATA[Address 5 <address@notexistant5.itte>]]></cc>
            <bcc><![CDATA[Address 6 <address@notexistant6.itte>]]></bcc>
        </recipients>
        <model>
            <!-- CORPO DELLA MAIL -->
            <body><![CDATA[Corpo della mail come template di Velocity]]></body>

            <!-- OGGETTO DELLA MAIL -->
            <subject><![CDATA[Oggetto della mail come template di Velocity]]></subject>
        </model>
    </messagetype>
</messagetypes>');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jpmail_config', 'Configurazione del servizio di invio eMail', '<mailConfig>
	<senders>
		<sender code="CODE1">EMAIL1@EMAIL.COM</sender>
	</senders>
	<smtp debug="false" >
		<host>out.virgilio.it</host>
		<user></user>
		<password></password>
	</smtp>
</mailConfig>');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'contentTypes', 'Definition of the Content Types', '<?xml version="1.0" encoding="UTF-8"?>
<contenttypes>
	<contenttype typecode="CNG" typedescr="Generic Content" viewpage="contentsview" listmodel="31" defaultmodel="3">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Longtext" indexingtype="TEXT">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Body" attributetype="Hypertext" indexingtype="TEXT">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>

			<attribute name="Image1" attributetype="Image">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>

			<attribute name="Image2" attributetype="Image">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>

			<list name="Attach" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attach" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</list>
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="DWN" typedescr="Download File" viewpage="newsview" listmodel="41" defaultmodel="4">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Abstract" attributetype="Longtext" indexingtype="TEXT">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>

			<attribute name="File" attributetype="Attach">
				<validations>
					<required>true</required>
				</validations>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
		</attributes>
	</contenttype>
	<contenttype typecode="NEW" typedescr="News" viewpage="newsview" listmodel="21" defaultmodel="2">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Date" attributetype="Date" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Abstract" attributetype="Longtext" indexingtype="TEXT">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Body" attributetype="Hypertext" indexingtype="TEXT">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Image1" attributetype="Image">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Image2" attributetype="Image">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<list name="Attach" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attach" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</list>
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</list>
		</attributes>
	</contenttype>
	<contenttype typecode="TST" typedescr="Test Content Type" viewpage="contentsview" listmodel="11" defaultmodel="1">
		<attributes>
			<attribute name="Title" attributetype="Text" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
		</attributes>
	</contenttype>
	<contenttype typecode="YTB" typedescr="Youtube Video" viewpage="contentsview" listmodel="51" defaultmodel="5">
		<attributes>
			<attribute name="VideoCode" attributetype="Text">
				<validations>
					<required>true</required>
					<expression evalOnValuedAttribute="true">
						<ognlexpression><![CDATA[#attribute.getText().length() > 5]]></ognlexpression>
						<errormessage><![CDATA[Insert the id of the video. Example, it the page is "http://www.youtube.com/watch?v=012345678901" the VideoCode is 012345678901.]]></errormessage>
						<helpmessage><![CDATA[Insert the id of the video. Example, it the page is "http://www.youtube.com/watch?v=012345678901" the VideoCode is 012345678901.]]></helpmessage>
					</expression>
				</validations>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Title" attributetype="Text" searcheable="true" indexingtype="TEXT">
				<validations>
					<required>true</required>
				</validations>
				<roles>
					<role>jacms:title</role>
				</roles>
			</attribute>
			<attribute name="Abstract" attributetype="Longtext" indexingtype="TEXT">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<attribute name="Body" attributetype="Hypertext" indexingtype="TEXT">
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</attribute>
			<list name="Attach" attributetype="Monolist">
				<nestedtype>
					<attribute name="Attach" attributetype="Attach" indexingtype="TEXT" />
				</nestedtype>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</list>
			<list name="Links" attributetype="Monolist">
				<nestedtype>
					<attribute name="Links" attributetype="Link" indexingtype="TEXT" />
				</nestedtype>
				<disablingCodes>
					<code>jpcmsshortcut:editOnWidget</code>
				</disablingCodes>
			</list>
		</attributes>
	</contenttype>
</contenttypes>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jpmyportalplus_config', 'Definizione degli oggetti configurabili di My Portal', '<?xml version="1.0" encoding="UTF-8"?>
<myportalConfig><showlets><showlet code="latest_video" /><showlet code="jpsurvey_questionnaireList" /><showlet code="form_list" /><showlet code="jpsurvey_pollList" /><showlet code="latest_events" /><showlet code="latest_news" /><showlet code="documents_list" /><showlet code="inEvidenza" /></showlets></myportalConfig>
');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jpwebdynamicform_messageTypes', 'Definizione dei Tipi di Messaggio', '<?xml version="1.0" encoding="UTF-8"?>
<messagetypes>
	<messagetype typecode="COM" typedescr="Company Form">
		<attributes>
			<attribute name="Company" attributetype="Monotext" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Address" attributetype="Monotext" />
			<attribute name="eMail" attributetype="Monotext">
				<validations>
					<required>true</required>
					<regexp><![CDATA[(.*<.+@.+.[a-z]+>)|(.+@.+.[a-z]+)]]></regexp>
				</validations>
			</attribute>
			<attribute name="Note" attributetype="Monotext">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
		</attributes>
	</messagetype>
	<messagetype typecode="PER" typedescr="Person Form">
		<attributes>
			<attribute name="Name" attributetype="Monotext" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Surname" attributetype="Monotext" searcheable="true">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Address" attributetype="Monotext" />
			<attribute name="eMail" attributetype="Monotext">
				<validations>
					<required>true</required>
					<regexp><![CDATA[(.*<.+@.+.[a-z]+>)|(.+@.+.[a-z]+)]]></regexp>
				</validations>
			</attribute>
			<attribute name="Date" attributetype="Date">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Number" attributetype="Number">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
			<attribute name="Enumerator" attributetype="Enumerator" separator=",">
				<validations>
					<required>true</required>
				</validations>
				<![CDATA[Opzione A,Opzione B,Opzione C,Opzione D,Opzione E,Opzione F,Opzione G]]>
			</attribute>
			<attribute name="Longtext" attributetype="Longtext">
				<validations>
					<required>true</required>
				</validations>
			</attribute>
		</attributes>
	</messagetype>
</messagetypes>

');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'jpcontentfeedback_config', 'Content Feedback global configuration', '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<contentFeedbackConfig>
		<anonymousComment>false</anonymousComment>
		<comment>true</comment>
		<rateComment>true</rateComment>
		<rateContent>true</rateContent>
</contentFeedbackConfig>');
INSERT INTO sysconfig (version, item, descr, config) VALUES ('production', 'subIndexDir', 'Name of the sub-directory containing content indexing files', 'indexdir20120324194258');


--
-- TOC entry 1878 (class 0 OID 560418)
-- Dependencies: 143
-- Data for Name: uniquekeys; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO uniquekeys (id, keyvalue) VALUES (1, 64);



--
-- TOC entry 1869 (class 0 OID 560366)
-- Dependencies: 134
-- Data for Name: jpmyportalplus_userpageconfig; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 23, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 24, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 25, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 73, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 74, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 123, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 124, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 14, 'jpsurvey_questionnaireList', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 66, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 73, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 123, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 67, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 117, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 14, 'latest_news', '<?xml version="1.0" encoding="UTF-8"?>
<properties>
<property key="linkDescr_it">Configura</property>
<property key="maxElemForItem">1</property>
<property key="pageLink">news_style1</property>
<property key="filters">(order=DESC;attributeFilter=true;key=Date)</property>
<property key="linkDescr_en">Configure</property>
<property key="modelId">26</property>
<property key="contentType">NEW</property>
</properties>

', 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 124, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 125, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 74, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 23, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 24, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 124, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 125, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 22, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 76, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 24, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 123, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 21, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('admin', 'homepage', 23, 'latest_news', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('admin', 'homepage', 73, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 23, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('admin', 'homepage', 64, 'inEvidenza', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 73, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 75, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 74, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 115, 'latest_events', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 65, 'latest_video', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 66, 'form_list', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 18, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 17, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 20, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 19, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 117, 'jpsurvey_pollList', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 16, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 15, 'latest_news', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 16, 'documents_list', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 18, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 17, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 64, 'form_list', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 19, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 65, 'jpsurvey_questionnaireList', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 14, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 125, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 20, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 114, 'latest_video', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 66, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('caroline', 'homepage', 115, 'jpsurvey_pollList', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 64, 'latest_events', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 17, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 18, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 19, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 115, 'latest_video', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 114, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 65, 'form_list', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 15, 'inEvidenza', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 16, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('max', 'homepage', 116, 'documents_list', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 67, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 64, 'documents_list', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 114, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 116, 'jpmyportalplus_void', NULL, 0);
INSERT INTO jpmyportalplus_userpageconfig (username, pagecode, framepos, showletcode, config, closed) VALUES ('jeff', 'homepage', 15, 'inEvidenza', NULL, 0);


--
-- TOC entry 1866 (class 0 OID 560354)
-- Dependencies: 131
-- Data for Name: contentsearch; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW12', 'Title', 'Entando on Osor.eu, the Open Source Observatory and Repository for the public administration', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW12', 'Title', 'Entando on Osor.eu, the Open Source Observatory and Repository for the public administration', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW12', 'Date', NULL, '2011-10-06', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW17', 'Title', 'Release of Entando version 2.4.0.1', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW17', 'Title', 'Rilascio di Entando versione 2.4.0.1', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW17', 'Date', NULL, '2011-12-07', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST2', 'Title', 'Contenuto 1', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST2', 'Title', 'Contenuto 1', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST4', 'Title', 'Contenuto 3', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST4', 'Title', 'Contenuto 3', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST3', 'Title', 'Contenuto 2', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST3', 'Title', 'Contenuto 2', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW15', 'Title', 'LIVE EVENT - Portal and Business Intelligence: across organizational boundaries', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW15', 'Title', 'EVENTO LIVE - Il Portale e la Business Intelligence: oltre i confini dell''organizzazione', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW15', 'Date', NULL, '2011-09-29', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW11', 'Title', 'Webcast: "Portal Meets Business Intelligence: 3A Latte Arborea, a Case Study about Dairy and Farming in Italy"', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW11', 'Title', 'Webcast sull''integrazione della piattaforma jAPS 2.0 entando e Pentaho Business Intelligence', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW11', 'Date', NULL, '2011-05-24', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW33', 'Title', 'New customer Services', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW33', 'Title', 'Nuovi servizi per i clienti', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW33', 'Date', NULL, '2011-12-01', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW21', 'Title', 'Welcome to the Intranet Area for co-workers', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW21', 'Title', 'Benvenuti nell''area Intranet dedicata ai collaboratori', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW21', 'Date', NULL, '2011-12-14', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW22', 'Title', 'Meeting reserved for co-workers', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW22', 'Title', 'Incontro riservato ai collaboratori', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW22', 'Date', NULL, '2011-11-24', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW30', 'Title', 'New reports for customers now available', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW30', 'Title', 'Ora sono disponibili i report per i clienti', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW30', 'Date', NULL, '2011-11-16', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW19', 'Title', 'Contribute to Entando Project: submit your Idea and Suggestion', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW19', 'Title', 'Contribuisci al progetto Entando: proponi la tua idea', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW19', 'Date', NULL, '2011-10-20', NULL, NULL);
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG45', 'Title', 'My Entando APP', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG45', 'Title', 'APP My Entando', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Welcome to Entando Portal Demo', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Benvenuto in Entando Portal Demo', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Some useful links', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Collegamenti utili', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('YTB58', 'Title', 'Entando Backoffice Demo', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('YTB58', 'Title', 'Entando Backoffice Demo', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN49', 'Title', 'Intranet Documentation', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN49', 'Title', 'Documentazione per Intranet', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN47', 'Title', 'Customer Best Practice', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN47', 'Title', 'Customer Best Practice', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN38', 'Title', 'Entando System Requirements', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN38', 'Title', 'Entando - Requisiti di sistema', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN44', 'Title', 'Business Plan', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN44', 'Title', 'Business Plan', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN51', 'Title', 'Customer Agreement', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN51', 'Title', 'Contratto Clienti', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN53', 'Title', 'Entando Model', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN53', 'Title', 'Il Modello Entando', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN40', 'Title', 'Product Details', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN40', 'Title', 'Scheda Prodotto', NULL, NULL, 'it');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG59', 'Title', 'Entando', NULL, NULL, 'en');
INSERT INTO contentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG59', 'Title', 'Entando', NULL, NULL, 'it');


--
-- TOC entry 1864 (class 0 OID 560345)
-- Dependencies: 129
-- Data for Name: contentrelations; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW12', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW12', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW12', NULL, NULL, '13', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW12', NULL, NULL, '28', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW17', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW17', NULL, NULL, '28', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('TST2', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('TST4', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('TST3', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW15', NULL, NULL, NULL, 'events', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW15', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW15', NULL, NULL, '14', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW15', NULL, NULL, '29', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW11', NULL, NULL, NULL, 'events', NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW11', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW11', NULL, NULL, '16', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW11', NULL, NULL, '25', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW33', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW33', NULL, NULL, '32', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW21', NULL, NULL, NULL, NULL, 'intranet');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW21', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW21', NULL, NULL, '20', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW22', NULL, NULL, NULL, NULL, 'intranet');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW22', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW22', NULL, NULL, '10', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW22', NULL, NULL, '24', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW30', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW30', NULL, NULL, NULL, NULL, 'customers');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW30', NULL, NULL, '31', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW19', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW19', NULL, NULL, '18', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('NEW19', NULL, NULL, '26', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG45', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG45', NULL, NULL, '54', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG56', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG56', NULL, NULL, '57', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG55', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('YTB58', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN49', NULL, NULL, NULL, NULL, 'intranet');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN49', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN49', NULL, NULL, '48', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN47', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN47', NULL, NULL, NULL, NULL, 'customers');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN47', NULL, NULL, '46', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN38', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN38', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN38', NULL, NULL, '37', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN44', NULL, NULL, NULL, NULL, 'intranet');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN44', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN44', NULL, NULL, '43', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN51', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN51', NULL, NULL, NULL, NULL, 'customers');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN51', NULL, NULL, '50', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN53', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN53', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN53', NULL, NULL, '52', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN40', NULL, NULL, NULL, NULL, 'free');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN40', NULL, NULL, NULL, NULL, 'administrators');
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('DWN40', NULL, NULL, '39', NULL, NULL);
INSERT INTO contentrelations (contentid, refpage, refcontent, refresource, refcategory, refgroup) VALUES ('CNG59', NULL, NULL, NULL, NULL, 'free');


--
-- TOC entry 1879 (class 0 OID 560421)
-- Dependencies: 144
-- Data for Name: workcontentrelations; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('NEW15', 'events');
INSERT INTO workcontentrelations (contentid, refcategory) VALUES ('NEW11', 'events');


--
-- TOC entry 1880 (class 0 OID 560424)
-- Dependencies: 145
-- Data for Name: workcontentsearch; Type: TABLE DATA; Schema: public; Owner: agile
--

INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW12', 'Title', 'Entando on Osor.eu, the Open Source Observatory and Repository for the public administration', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW12', 'Title', 'Entando on Osor.eu, the Open Source Observatory and Repository for the public administration', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW12', 'Date', NULL, '2011-10-06', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW17', 'Title', 'Release of Entando version 2.4.0.1', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW17', 'Title', 'Rilascio di Entando versione 2.4.0.1', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW17', 'Date', NULL, '2011-12-07', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST2', 'Title', 'Contenuto 1', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST2', 'Title', 'Contenuto 1', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST4', 'Title', 'Contenuto 3', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST4', 'Title', 'Contenuto 3', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST3', 'Title', 'Contenuto 2', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('TST3', 'Title', 'Contenuto 2', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW15', 'Title', 'LIVE EVENT - Portal and Business Intelligence: across organizational boundaries', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW15', 'Title', 'EVENTO LIVE - Il Portale e la Business Intelligence: oltre i confini dell''organizzazione', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW15', 'Date', NULL, '2011-09-29', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW11', 'Title', 'Webcast: "Portal Meets Business Intelligence: 3A Latte Arborea, a Case Study about Dairy and Farming in Italy"', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW11', 'Title', 'Webcast sull''integrazione della piattaforma jAPS 2.0 entando e Pentaho Business Intelligence', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW11', 'Date', NULL, '2011-05-24', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW33', 'Title', 'New customer Services', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW33', 'Title', 'Nuovi servizi per i clienti', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW33', 'Date', NULL, '2011-12-01', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW21', 'Title', 'Welcome to the Intranet Area for co-workers', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW21', 'Title', 'Benvenuti nell''area Intranet dedicata ai collaboratori', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW21', 'Date', NULL, '2011-12-14', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW22', 'Title', 'Meeting reserved for co-workers', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW22', 'Title', 'Incontro riservato ai collaboratori', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW22', 'Date', NULL, '2011-11-24', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW30', 'Title', 'New reports for customers now available', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW30', 'Title', 'Ora sono disponibili i report per i clienti', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW30', 'Date', NULL, '2011-11-16', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW19', 'Title', 'Contribute to Entando Project: submit your Idea and Suggestion', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW19', 'Title', 'Contribuisci al progetto Entando: proponi la tua idea', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('NEW19', 'Date', NULL, '2011-10-20', NULL, NULL);
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG45', 'Title', 'My Entando APP', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG45', 'Title', 'APP My Entando', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Welcome to Entando Portal Demo', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG56', 'Title', 'Benvenuto in Entando Portal Demo', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Some useful links', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG55', 'Title', 'Collegamenti utili', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('YTB58', 'Title', 'Entando Backoffice Demo', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('YTB58', 'Title', 'Entando Backoffice Demo', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN49', 'Title', 'Intranet Documentation', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN49', 'Title', 'Documentazione per Intranet', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN47', 'Title', 'Customer Best Practice', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN47', 'Title', 'Customer Best Practice', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN38', 'Title', 'Entando System Requirements', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN38', 'Title', 'Entando - Requisiti di sistema', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN44', 'Title', 'Business Plan', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN44', 'Title', 'Business Plan', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN51', 'Title', 'Customer Agreement', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN51', 'Title', 'Contratto Clienti', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN53', 'Title', 'Entando Model', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN53', 'Title', 'Il Modello Entando', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN40', 'Title', 'Product Details', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('DWN40', 'Title', 'Scheda Prodotto', NULL, NULL, 'it');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG59', 'Title', 'Entando', NULL, NULL, 'en');
INSERT INTO workcontentsearch (contentid, attrname, textvalue, datevalue, numvalue, langcode) VALUES ('CNG59', 'Title', 'Entando', NULL, NULL, 'it');


-- Completed on 2012-03-24 19:47:31 CET

--
-- PostgreSQL database dump complete
--

