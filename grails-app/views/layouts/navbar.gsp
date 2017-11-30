<%--
  Created by IntelliJ IDEA.
  User: aruns
  Date: 12/4/2016
  Time: 8:38 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="en">
<g:javascript library="jquery"/>
<head>
    <meta charset="UTF-8">
    <link type="text/css" href="<g:createLinkTo dir="css"  file="uikit.min.css"/>"  rel="stylesheet"/>

    <r:layoutResources />
</head>
<body>

<nav class="uk-navbar">
    <ul class="uk-navbar-nav">
        <li class="uk-active"><g:link controller="user" action="index">Home</g:link></li>
        <li><g:link controller="profile" action="index">Profile</g:link></li>

    </ul>
    <div class="uk-navbar-content uk-navbar-flip">

        <g:form controller="user" class="uk-form uk-margin-remove uk-display-inline-block">
            <g:textField name="query" placeholder="Search"></g:textField>
            <g:actionSubmit value="Search" action="search" class="uk-button"></g:actionSubmit>
        </g:form>


        <div class="uk-navbar-content uk-navbar-flip">
            <g:form  controller="user"  class="uk-form uk-margin-remove uk-display-inline-block">
                <g:actionSubmit  value="Logout" action="logout" class="uk-button"></g:actionSubmit>
            </g:form>
        </div>

    </div>

</nav>

<br/>

<g:layoutBody/>
<r:layoutResources />
</body>
</html>