<%@ include file="/apps/aemjourney/global/global.jsp"%><%
%><%@page session="false"%><%
%>
<p> HERE IS SOMETHING </p>
<div class="grid_12">
    <div class="promo">
        <cq:include path="promo-text" resourceType="foundation/components/text"/>
    </div>
</div>

<section class="grid_8">
    <cq:include path="main-par" resourceType="foundation/components/parsys"/>
</section>

<aside class="sidebar grid_4">
    <cq:include path="sidebar-par" resourceType="foundation/components/parsys"/>
</aside>