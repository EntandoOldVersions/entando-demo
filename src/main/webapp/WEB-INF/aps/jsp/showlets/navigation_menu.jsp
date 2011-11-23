<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<wp:headInfo type="CSS" info="showlets/navigation_menu.css"/>
<wp:currentPage param="code" var="currentPageCode" />
<c:set var="test_counter" value="${-1}" />
<wp:nav var="page"><c:set var="test_counter" value="${test_counter+1}" /></wp:nav>
<wp:currentPage param="code" var="surfedCode"/>
<div class="navigation_menu">
	<c:set var="counter" value="${0}" />
	<c:set var="closeUl" value="${false}" />
	<c:set var="pagePrev" value="${null}" />
	<c:set var="pageCurrent" value="${null}" />
	<c:set var="pageNext" value="${null}" />
	<ul class="navigation_menu_ul">
		<wp:nav var="page">
			<%-- -------------------------------------------  --%>
			<c:choose>
				<c:when test="${empty pageCurrent}"><c:set var="pageCurrent" value="${page}" /></c:when>
				<c:when test="${empty pageNext}"><c:set var="pageNext" value="${page}" /></c:when>
				<%-- -------------------------------------------  --%>
				<c:otherwise>
					<c:if test="${pagePrev.level < pageCurrent.level}"><ul class="navigation_menu_ul"></c:if>
					<li class="navigation_menu_li<c:if test="${pageCurrent.code==surfedCode}"> current</c:if>"><c:if test="${pageCurrent.level==0}"><span class="main-item"></c:if>
					<c:if test="${pageCurrent.level!=0}"><span class="sub-item"></c:if>
						<c:choose>
							<c:when test="${pageCurrent.void}"><span class="link"><span><c:out value="${pageCurrent.title}" /></span></span></c:when>
							<c:otherwise><a href="<c:out value="${pageCurrent.url}" />" class="link"><span><c:out value="${pageCurrent.title}" /></span></a>
							</c:otherwise>
						</c:choose></span>
					<c:if test="${pageCurrent.level == pageNext.level}"></li></c:if>
					<c:if test="${pageCurrent.level > pageNext.level}"><c:forEach begin="${pageNext.level}" end="${pageCurrent.level-1}"></li>
					</ul></c:forEach></li></c:if>
					<c:if test="${pageCurrent.level < pageNext.level}"><%-- nothing --%></c:if>
					<c:set var="pagePrev" value="${pageCurrent}" />
					<c:set var="pageCurrent" value="${pageNext}" />
					<c:set var="pageNext" value="${page}" />
				</c:otherwise>
			</c:choose>
			<c:set var="counter" value="${counter+1}" />
		</wp:nav>

		<%-- -------------------------------------------  --%>
			<%-- elabora i rimanenti --%>

		<c:choose>
			<%-- -------------------------------------------  --%>
			<c:when test="${counter >= 2}"><%-- se ci sono più di 2 voci, scarico le varibiali --%>
				<%-- elabora il penultimo --%>
					<c:if test="${pagePrev.level < pageCurrent.level}"><ul class="navigation_menu_ul"></c:if>
							<li class="navigation_menu_li<c:if test="${pageCurrent.code==surfedCode}"> current</c:if>"><c:if test="${pageCurrent.level==0}"><span class="main-item"></c:if>
							<c:if test="${pageCurrent.level!=0}"><span class="sub-item"></c:if>
								<c:choose>
									<c:when test="${pageCurrent.void}"><span class="link"><span><c:out value="${pageCurrent.title}" /></span></span></c:when>
									<c:otherwise><a href="<c:out value="${pageCurrent.url}" />" class="link"><span><c:out value="${pageCurrent.title}" /></span></a>
									</c:otherwise>
								</c:choose></span>
					<c:if test="${pageCurrent.level == pageNext.level}"></li></c:if>
					<c:if test="${pageCurrent.level > pageNext.level}"><c:forEach begin="${pageNext.level}" end="${pageCurrent.level-1}"></li>
					</ul></c:forEach></li></c:if>
					<c:if test="${pageCurrent.level < pageNext.level}"><%-- nothing --%></c:if>
					<c:set var="pagePrev" value="${pageCurrent}" />
					<c:set var="pageCurrent" value="${pageNext}" />
					<c:set var="pageNext" value="${null}" />

				<%-- elabora l'ultimo --%>
					<c:if test="${pagePrev.level < pageCurrent.level}"><ul class="navigation_menu_ul"></c:if>
							<li class="navigation_menu_li<c:if test="${pageCurrent.code==surfedCode}"> current</c:if>"><c:if test="${pageCurrent.level==0}"><span class="main-item"></c:if>
							<c:if test="${pageCurrent.level!=0}"><span class="sub-item"></c:if>
								<c:choose>
									<c:when test="${pageCurrent.void}"><span class="link"><span><c:out value="${pageCurrent.title}" /></span></span></c:when>
									<c:otherwise><a href="<c:out value="${pageCurrent.url}" />" class="link"><span><c:out value="${pageCurrent.title}" /></span></a>
									</c:otherwise>
								</c:choose></span>
					<c:if test="${pageCurrent.level == 0}"></li></c:if>
					<c:if test="${pageCurrent.level > 0}"><c:forEach begin="${0}" end="${pageCurrent.level-1}"></li>
					</ul></c:forEach></li></c:if>
					<c:if test="${pageCurrent.level < pageNext.level}"><%-- nothing --%></c:if>

				<%-- end --%>
					<c:set var="pagePrev" value="${null}" />
					<c:set var="pageCurrent" value="${null}" />
					<c:set var="pageNext" value="${null}" />
			</c:when>
			<%-- -------------------------------------------  --%>
			<c:when test="${counter == 1}"><%-- se la voce è solo una --%>
					<%-- elabora l'ultimo --%>
					<c:if test="${0 < pageCurrent.level}"><ul class="navigation_menu_ul"></c:if>
							<li class="navigation_menu_li<c:if test="${pageCurrent.code==surfedCode}"> current</c:if>"><c:if test="${pageCurrent.level==0}"><span class="main-item"></c:if>
							<c:if test="${pageCurrent.level!=0}"><span class="sub-item"></c:if>
								<c:choose>
									<c:when test="${pageCurrent.void}"><span class="link"><span><c:out value="${pageCurrent.title}" /></span></span></c:when>
									<c:otherwise><a href="<c:out value="${pageCurrent.url}" />" class="link"><span><c:out value="${pageCurrent.title}" /></span></a>
									</c:otherwise>
								</c:choose></span>
					<c:if test="${pageCurrent.level == 0}"></li></c:if>
					<c:if test="${pageCurrent.level > 0}"><c:forEach begin="${0}" end="${pageCurrent.level-1}"></li>
					</ul></c:forEach></li></c:if>
					<c:if test="${pageCurrent.level < pageNext.level}"><%-- nothing --%></c:if>

				<%-- end --%>
					<c:set var="pagePrev" value="${null}" />
					<c:set var="pageCurrent" value="${null}" />
					<c:set var="pageNext" value="${null}" />
			</c:when>
		</c:choose>
	</ul>
</div>