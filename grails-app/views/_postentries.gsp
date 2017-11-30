
<div>
    <p class="uk-text-bold uk-text-large uk-text-danger"> Recent Posts</p>
<table class="uk-table">

    <g:each in="${posts}" var="post">

        <tr class="uk-text-center">
            <th> ${post.content}</th>
            <td class="uk-text-small"> <g:dateFromNow date="${post.dateCreated}"></g:dateFromNow></td>
            <hr/>
        </tr>


    </g:each>


</table>
</div>