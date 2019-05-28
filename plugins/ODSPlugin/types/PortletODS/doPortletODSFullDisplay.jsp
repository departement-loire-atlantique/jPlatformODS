<%@ page contentType="text/html; charset=UTF-8" %><%
%><%-- This file has been automatically generated. --%><%
%><%--
  @Summary: PortletODS display page
  @Category: Generated
  @Author: JCMS Type Processor
  @Customizable: True
  @Requestable: True
--%><%
%><%@ include file='/jcore/doInitPage.jspf' %><%
%><%@ include file='/jcore/portal/doPortletParams.jspf' %><%
%><% PortletODS obj = (PortletODS)portlet; %><%
%><%@ include file='/front/doFullDisplay.jspf' %>

<%
//jcmsContext.addCSSHeader("https://cdnjs.cloudflare.com/ajax/libs/font-awesome/3.2.1/css/font-awesome.min.css");
jcmsContext.addCSSHeader("plugins/ODSPlugin/css/ods-widgets.min.css");
jcmsContext.addCSSHeader("plugins/ODSPlugin/css/style.css");
%>

<div class="fullDisplay PortletODS <%= obj.canBeEditedFieldByField(loggedMember) ? "unitFieldEdition" : "" %>" itemscope="itemscope">

    <div class="publication-header">
        <h1 class="publication-title" <%= gfla(obj, "title") %> itemprop="name"><%= obj.getTitle(userLang) %></h1>
    </div>

    <div class="container-fluid widget" ng-app="ods-widgets">
		<% if (Util.notEmpty(obj.getWidgetCode(userLang))) { %>
		<%= obj.getWidgetCode(userLang) %>
		<% } %>
    </div>

<%
    jcmsContext.addJavaScript("plugins/ODSPlugin/js/angular.min.js");
    jcmsContext.addJavaScript("plugins/ODSPlugin/js/angular-sanitize.min.js");
	jcmsContext.addJavaScript("plugins/ODSPlugin/js/ods-widgets.js");
%>  

</div><%-- **********4A616C696F73204A434D53 *** SIGNATURE BOUNDARY * DO NOT EDIT ANYTHING BELOW THIS LINE *** --%><%
%><%-- kR4B9tYfKKx89xjbJ8oRPw== --%>