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
-- Data for Name: contentmodels; Type: TABLE DATA; Schema: public; Owner: -
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
-- PostgreSQL database dump complete
--

