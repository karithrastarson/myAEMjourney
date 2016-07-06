<%@include file="/apps/aemjourney/global/global.jsp"%>
<%
	
%><%@page session="false"%>
<%
	/*Service and Utilities*/
	final XSSAPI xss = sling.getService(XSSAPI.class);
	final I18n i18n = new I18n(slingRequest);
	final WCMMode mode = WCMMode.fromRequest(slingRequest);

	/*Component Properties and Data*/
	final String question = properties.get("question","");
	final String answer = properties.get("answer","");
	final String seeMorePath = properties.get("seeMorePath", "");
	final Page seeMorePage = pageManager.getContainingPage(seeMorePath);

%><%

/* Component Init Checks */
if(seeMorePage == null || "".equals(question) || "".equals(answer)){
	if(WCMMode.EDIT.equals(mode)){
		%><div><img src="/libs/cq/ui/resource/0.gif" class="cq-text-placeholder" alt=""></div><% 
	}
	return;
}
%>

<%-- Component Presentation --%>

<div class="q-n-a js-aemcasts-demo-components-content-general-q-and-a">
	<a class="question" href="#">
		<span class="open">( <%=i18n.get("Open")%>)</span>
		<span class="close">( <%=i18n.get("Close")%> )</span> 

		<cq:text property="question" tagName="span" escapeXml="true"/>
	</a>
	<div class="answer">
		<div>
			<cq:text property="answer" tagName="div" escapeXml="true"/>
		</div>
		<div class="see-more">
			<hr />
			<%=i18n.get("See more")%>: 
			<a href="<%= resourceResolver.map(seeMorePage.getPath())%>.html"><%= xss.encodeForHTML(seeMorePage.getTitle()) %></a>
		</div>
	</div>
</div>