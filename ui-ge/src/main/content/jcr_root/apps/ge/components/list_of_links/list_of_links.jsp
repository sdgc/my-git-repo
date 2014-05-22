<%--

  copyright.jsp. Renders information about copyright and some links
  
  author: reshma.chetty@sdgc.com	5/21/2014
  
  revisions: 

  ==============================================================================

  
  ==============================================================================

--%><%
%><%@page session="false"%><%
%><%@include file="/apps/foundation/global.jsp" %><%
%>
<ge:placeHolder slingRequest="<%= slingRequest %>" placeHolderCondition="<%= properties.get("listoflinkstitle", String.class) == null %>">

<%
        String id_link = "nav-user"; //default to horizontal
		String class_link = "clearfix";
        String horizontalVertical = properties.get("linkspattern", "");
        if (horizontalVertical.equals("vertical") ) {
			id_link = "links-more";
            class_link = "no-padding-bottom";
        }
%>
<ge:copyright/>

<div>
	<p><c:out value="${properties.listoflinkstitle}" /> </p>
	
	<c:choose>
	<c:when test="${properties['linkspattern']=! null}">
		<nav id="<%=id_link%>" class="<%=class_link%>">
			<ul>
		<c:forEach items="${linksItems}" var="linkItem">
			<li><a href="${linkItem.linkUrl}">${linkItem.linkText}</a></li>
		</c:forEach>
	</ul>
	</nav>
	</c:when>>
	</c:choose>>	
</div>

</ge:placeHolder>