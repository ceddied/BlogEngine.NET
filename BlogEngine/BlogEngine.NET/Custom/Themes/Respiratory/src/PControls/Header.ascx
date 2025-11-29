<%@ Control Language="C#" AutoEventWireup="true" Inherits="System.Web.UI.UserControl" %>
<%@ Import Namespace="BlogEngine.Core" %>

<header class="Header">
    <nav class="TopBar">
        <div class="Container ClearFix">
            <ul class="Left NavBar">
                <li class="Home Left"><a href="<%=Utils.AbsoluteWebRoot %>" rel="home"><span><%=Resources.labels.home %></span></a></li>
                <li class="Left"><a href="<%=Utils.AbsoluteWebRoot %>archive<%= BlogEngine.Core.BlogConfig.FileExtension %>"><%=Resources.labels.archive %></a></li>
                <li class="Left"><a href="<%=Utils.AbsoluteWebRoot %>contact<%= BlogEngine.Core.BlogConfig.FileExtension %>"><%=Resources.labels.contact %></a></li>
                <% if(Utils.IsMobile)
                        { %>
                <li class="Left">
                    <blog:MobileThemeSwitch ID="MobileThemeSwitch1" runat="server" />
                </li>
                <% } %>
                <%foreach(BlogEngine.Core.Page parentPage in BlogEngine.Core.Page.Pages.Where(p => !p.HasParentPage&&p.IsPublished&&p.ShowInList))
                        { %><li class="Left Page-Link"><a href="<%=parentPage.RelativeLink %>" title="<%=parentPage.Title%>"><%=parentPage.Title%></a> <%if(parentPage.HasChildPages)
                                                                                                                                                           { %>
                        <ul class="Sub-Page-Links">
                            <%foreach(BlogEngine.Core.Page childPage in BlogEngine.Core.Page.Pages.Where(p => p.Parent==parentPage.Id&&p.IsPublished))
                                    { %>
                            <li class="Left"><a href="<%=childPage.RelativeLink %>" title="<%=childPage.Title %>"><%=childPage.Title %></a></li>
                            <% } %>
                        </ul>
                        <% } %></li>
                <% } %>
            </ul>
            <div class=" SubscribeButton Right">
                <a href="<%=Utils.FeedUrl %>" title="<%=Resources.labels.subscribe %>"><span><%=Resources.labels.subscribe %></span></a>
            </div>
            <script>$(".NavBar li:has(ul)").addClass("HasChild");</script>
        </div>
    </nav>
    <div class="BlogTitle">
        <div class="Container ClearFix">
            <h1 class="Title">
                <a href="<%=Utils.AbsoluteWebRoot %>"><%=BlogSettings.Instance.Name %></a>
            </h1>
            <span class="Desc"><%=BlogSettings.Instance.Description %></span>
        </div>
    </div>
</header>
