<%--
  Created by IntelliJ IDEA.
  User: aruns
  Date: 12/5/2016
  Time: 7:25 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbar">
</head>

<body>
    <g:if test="${results.size() != 0}">


    <g:each in="${results}" var="result">
        <div  class="uk-width-1-1">

            <div class="uk-panel uk-panel-box uk-width-1-2 uk-align-center">
            <a href="<g:createLink controller="profile" action="viewprofile" id="${result.id}"></g:createLink> ">
            <g:if test="${result?.profile?.photo}">
                <img class=" uk-margin-large-right" width="100"  height="100" src="${createLink(controller:'profile',
                        action:'display_picture', id:result.id)}" >
            </g:if>
        <g:else>
            <img class="uk-margin-large-right" src="<g:createLinkTo dir="images" file="noimage.png"/>" width="100" height="100"/>
        </g:else>
        </a>
        ${result.email}

        </div>

        </g:each>

    </div>
</g:if>
<g:else>
    <h3> No result !! Please Try again</h3>
</g:else>
</body>
</html>