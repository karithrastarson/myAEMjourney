<%@include file="/apps/aemjourney/global/global.jsp"%><%
%><%@page session="false"%><%
%><body>
    <div class="container_12">
        <header class="header clearfix">
            <div class="grid_4 logo">AEM Journey</div>
            <div class="grid_8 nav">
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Page 1</a></li>
                    <li><a href="#">Page 2</a></li>
                </ul>
            </div>
        </header>

        <hr/>

        <div class="page-content">
           <cq:include script="main.jsp"/>
        </div>

        <hr/>

        <footer class="footer clearfix">
            2016 AEM Journey
        </footer>

    </div>

    <cq:includeClientLib js="aemjourney.demo.all"/>
</body>