<%--
  Created by IntelliJ IDEA.
  User: sajan
  Date: 11/22/2016
  Time: 4:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="navbar">
</head>

<div class="uk-width-1-1">
    <div class="uk-width-1-6 uk-float-left  uk-margin-large-right" >
    <g:if test="${user?.profile?.photo}">
    <img class="uk-border-circle uk-margin-top uk-margin-right "   src="${createLink(controller:'profile',
            action:'display_picture', id:user?.id)}" >
    <br/>
    </g:if>
    </div>
<div class="uk-width-1-4 uk-float-left uk-text-left uk-margin-top" >
    <h2><label class="uk-text-bold">${user?.profile?.name}</label> </h2>
    <label class="uk-text-bold"> Lives at ${user?.profile?.address}</label><br/>
    <br/>
    <label class="uk-text-left-medium"> Followers : ${user?.followers?.size()}</label>
    <label class="uk-text-right-medium"> Following : ${user?.following?.size()}</label>
    <br/>
    <g:link controller="profile" action="editprofile"> <i class="uk-icon-edit"></i> Edit profile</g:link> <br/>
    <br/>
    <g:form >

        <g:textArea class="uk-panel uk-panel-box uk-align-center uk-text-large uk-text-success" name="content" id="comment" rows="3" cols="50" >
            Tweet!
        </g:textArea>

        <g:submitToRemote value="Post"
                          url="[controller:'user',action:'listAllPost']" update="message" ></g:submitToRemote>
    </g:form>
</div>
<div id="message" class="uk-width-1-3 uk-float-right"  >

</div>
</div>
</div>
<div class=" uk-float-right  uk-width-1-1 ">
    <h2 class="uk-text-primary uk-text-center"> Your Tweets!! </h2>
    <div class="uk-width-1-3 uk-align-center">
    <table class="uk-table ">
        <g:each in="${user.posts}" var="post">
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
</div>


</div>


</body>
</html>