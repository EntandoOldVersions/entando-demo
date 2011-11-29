<%@ taglib prefix="wpfp" uri="/jpfacetnav-core" %>
<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="wpcms" uri="/jacms-aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<wp:headInfo type="CSS" info="../../plugins/jpfacetnav/jpfacetnav.css"/>
<div class="jpfacetnav">

<h2><wp:i18n key="jpfacetnav_TITLE_FACET_RESULTS" /></h2>

<%-- NOTA : l'attributo "executeExtractRequiredFacets" è a false perchè si presume che sia inserita la showlet facetNavTree prima --%>
<wpfp:facetNavResult requiredFacetsParamName="requiredFacets"
	resultParamName="contentList" executeExtractRequiredFacets="false" breadCrumbsParamName="breadCrumbs" />

<c:if test="${breadCrumbs != null && !empty breadCrumbs}">
	<p><wp:i18n key="SEARCHED_FOR" />:</p>
	<ul class="jpfacetnav_filterlist">
		<c:forEach var="item" items="${breadCrumbs}" varStatus="itemStatus">
		<li>
			<c:forEach var="breadCrumb" items="${item.breadCrumbs}" varStatus="status">
				<c:if test="${!status.first}">
					<c:choose>
						<c:when test="${breadCrumb == item.requiredFacet}">
							<span class="jpfacetfilter jpfacetnav_requiredFacet"><wpfp:facetNodeTitle facetNodeCode="${breadCrumb}" /></span>
							<c:set var="currentNodeTitle"><wpfp:facetNodeTitle facetNodeCode="${breadCrumb}" /></c:set>
						</c:when>
						<c:when test="${breadCrumb == item.facetRoot}">
							<span class="jpfacetfilter jpfacetnav_facetRoot"><wpfp:facetNodeTitle facetNodeCode="${item.facetRoot}" /></span>
							<c:set var="currentNodeTitle"><wpfp:facetNodeTitle facetNodeCode="${item.facetRoot}" /></c:set>
						</c:when>
						<c:otherwise>
							<a title="<wp:i18n key="jpfacetnav_JUMPTO_FILTER" />: <wpfp:facetNodeTitle facetNodeCode="${breadCrumb}" />" class="jpfacetfilter" href="<wp:url><wpfp:urlPar name="selectedNode" ><c:out value="${breadCrumb}" /></wpfp:urlPar><c:forEach var="requiredFacet" items="${requiredFacets}" varStatus="statusInternal"><wpfp:urlPar name="facetNode_${statusInternal.count}" ><c:out value="${requiredFacet}" /></wpfp:urlPar></c:forEach></wp:url>">
								<wpfp:facetNodeTitle facetNodeCode="${breadCrumb}" />
							</a>
							<c:set var="currentNodeTitle"><wpfp:facetNodeTitle facetNodeCode="${breadCrumb}" /></c:set>
						</c:otherwise>
					</c:choose>
					<c:if test="${!status.last}">&#32;/&#32;</c:if>
				</c:if>
			</c:forEach>
			<span class="noscreen">|</span>&#32;<a class="jpfacetnavfilterremove" title="<wp:i18n key="jpfacetnav_REMOVE_FILTER" />:&#32;<c:out value="${currentNodeTitle}" />" href="<wp:url><c:forEach var="requiredFacet" items="${requiredFacets}" varStatus="statusInternal"><wpfp:urlPar name="facetNode_${statusInternal.count}" ><c:out value="${requiredFacet}" /></wpfp:urlPar></c:forEach><c:forEach var="breadCrumb" items="${item.breadCrumbs}" varStatus="status2"><wpfp:urlPar name="facetNodeToRemove_${status2.count}" ><c:out value="${breadCrumb}" /></wpfp:urlPar></c:forEach></wp:url>">
			<img src="<wp:resourceURL />plugins/jpfacetnav/static/img/edit-delete.png" alt="<wp:i18n key="jpfacetnav_REMOVE_FILTER" />" /></a>
			<%-- <c:if test="${!itemStatus.last}">&#32;|&#32;</c:if> --%>
		</li>
		</c:forEach>
	</ul>
</c:if>

<c:choose>
	<c:when test="${empty contentList}">
		<p><em><wp:i18n key="SEARCH_NOTHING_FOUND" /></em></p>
	</c:when>
	<c:otherwise>

		<wp:pager listName="contentList" objectName="groupContent" max="10" pagerIdFromFrame="true" >
			<c:set var="group" value="${groupContent}" scope="request" />
			<p><em><wp:i18n key="SEARCH_RESULTS_INTRO" />&#32;<c:out value="${groupContent.size}" />&#32;<wp:i18n key="SEARCH_RESULTS_OUTRO" />&#32;[<c:out value="${groupContent.begin + 1}" /> &ndash; <c:out value="${groupContent.end + 1}" />]:</em></p>
			<ol class="pureSize">
				<c:forEach var="contentId" items="${contentList}" begin="${groupContent.begin}" end="${groupContent.end}">
					<li><wpcms:content contentId="${contentId}" modelId="list" /></li>
				</c:forEach>
			</ol>
			<c:import url="/WEB-INF/plugins/jacms/aps/jsp/showlets/inc/pagerBlock.jsp" />
		</wp:pager>

	</c:otherwise>
</c:choose>
</div>