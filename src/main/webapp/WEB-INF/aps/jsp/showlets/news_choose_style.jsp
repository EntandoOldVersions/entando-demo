<%@ taglib prefix="jacms" uri="/jacms-aps-core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<wp:headInfo type="CSS" info="showlets/news_choose_style.css" />
<wp:currentPage param="code" var="currentPage" />
<div class="news_styles">
<p>
<a href="<wp:url page="news_style1" />" <c:if test="${currentPage == 'news_style1'}"> class="current" </c:if> title="<wp:i18n key="ARCHIVE_STYLE1_TITLE"/>"><img alt="" src="<wp:imgURL/>showlets/news_style1.png"></a>
<a href="<wp:url page="news_style2" />" <c:if test="${currentPage == 'news_style2'}"> class="current" </c:if> title="<wp:i18n key="ARCHIVE_STYLE2_TITLE"/>"><img alt="" src="<wp:imgURL/>showlets/news_style2.png"></a>
<a href="<wp:url page="news_style3" />" <c:if test="${currentPage == 'news_style3'}"> class="current" </c:if> title="<wp:i18n key="ARCHIVE_STYLE3_TITLE"/>"><img alt="" src="<wp:imgURL/>showlets/news_style3.png"></a>
</p>
</div>
