<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.UI.UserControl" %>
<%@ Import Namespace="BlogEngine.Core" %>

<footer class="Footer">
    <div class="Container">
        <nav class="NavBarFooter">
            <ul class="clearFix">
                <li class="Home"><a href="<%=Utils.AbsoluteWebRoot %>" rel="home"><span><%=Resources.labels.home %></span></a></li>
                <li>|</li>
                <li><a href="<%=Utils.AbsoluteWebRoot %>archive<%= BlogEngine.Core.BlogConfig.FileExtension %>"><%=Resources.labels.archive %></a></li>
                <li>|</li>
                <li><a href="<%=Utils.AbsoluteWebRoot %>contact<%= BlogEngine.Core.BlogConfig.FileExtension %>"><%=Resources.labels.contact %></a></li>
                <li>|</li>
                <li><a href="<%=Utils.FeedUrl %>" class="feed"><%=Resources.labels.subscribe %></a></li>
                <li>|</li>
                <li><a href="javascript:void(BlogEngine.filterByAPML())" class="apmlfilter"><%=Resources.labels.filterByApml %></a></li>
                <li>|</li>
                <li><a runat="server" id="aLogin"></a></li>
            </ul>
        </nav>
        <div class="License">
            <p class="ltr">
                Copyright &copy; <%=DateTime.Now.Year %> by Eddie Davis - <a href="http://seyfolahi.net/" title="Web Designer - UI/UX" target="_blank">Theme by Farzin Seyfolahi</a>
            </p>
        </div>
    </div>
</footer>
