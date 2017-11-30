<%--
  Created by IntelliJ IDEA.
  User: aruns
  Date: 12/5/2016
  Time: 8:12 AM
--%>

<%@ page import="twiitter.User" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbar">
</head>

<body>
    <div class="uk-panel uk-panel-box-primary uk-panel-box-primary-hover uk-align-center uk-width-1-2">

        <g:if test="${p?.profile?.photo}">
            <img class=" uk-align-center uk-border-rounded uk-margin-top " width="250"  height="250" src="${createLink(controller:'profile',
                    action:'display_picture', id:p?.id)}" >
        </g:if>
        <g:else>
            <img class="uk-align-center uk-border-rounded uk-margin-top " src="<g:createLinkTo dir="images" file="noimage.png"/>" width="250" height="250"/>
        </g:else>
        <h2 class="uk-text-center uk-text-bold"> ${p?.email} </h2>
        <h3 class="uk-text-center">
            ${p?.profile?.address} <br/>
            ${p?.profile?.phoneNo} <br/>
        </h3>

        <label class="uk-text-center uk-align-center"> Followers : ${p?.followers.size()}</label>
        <label class="uk-text-center uk-align-center"> Following : ${p?.following.size()}</label>

        ${ }
        <g:if test="${p.getFollowers().size() == 0}">
            Not Followed
        </g:if>
        <g:else>
            following
        </g:else>
    </div>
<div class="uk-width-1-2 uk-align-center" >
    <h3 class="uk-text-bold uk-text-center uk-text-success"> ${p.email}'s Posts </h3>
<table class="uk-table">
    <g:each in="${p.posts}" var="post">
        <thead>
        <tr class="uk-text-center">
            <th> ${post?.content}</th>
        </tr>
        </thead>
        <tr class=" uk-text-small uk-text-right">
            <td> <g:dateFromNow date="${post?.dateCreated}"></g:dateFromNow></td>

        </tr>
        <tr>
            <td>
                <hr/>
            </td>
        </tr>

    </g:each>
</table>
</div>
</body>
</html>