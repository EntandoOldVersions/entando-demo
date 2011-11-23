<%@ taglib prefix="wp" uri="/aps-core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<wp:headInfo type="CSS" info="showlets/search_form.css" />
<div class="search_form">
	<form action="<wp:url page="search" />" method="get">
		<p>
			<span class="input-container">
				<input type="image" src="<wp:imgURL />icon-search.png" title="Go" />&#32;<input type="text" name="search" value="" />
			</span>
		</p>
	</form>
</div>