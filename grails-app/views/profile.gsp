<%--
  Created by IntelliJ IDEA.
  User: sajan
  Date: 11/22/2016
  Time: 4:28 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="navbar">
    <title></title>
</head>

<body>

<div class="uk-panel uk-panel-box-primary uk-panel-box-primary-hover">
    <table class="uk-table">
    <g:uploadForm controller="profile">
        <tr>
            <td>
                Name
            </td>
            <td>
                <g:textField name="name" placeholder="Name"></g:textField><br>
            </td>
        </tr>
        <tr>
            <td>
                Address
            </td>
            <td>
                 <g:textField name="address" placeholder="Address"></g:textField><br>
            </td>
        </tr>
        <tr>
            <td>
                Phone no
            </td>
            <td>
                <g:textField name="phoneNo" placeholder="Number" class="uk-panel uk-panel-box"></g:textField>
            </td>
        </tr>
        <tr>
            <td>
                Photo:
            </td>
            <td>
                <label for="photo">Upload Picture</label>
                <input type="file" name="photo" id="photo" />
                <g:actionSubmit value="Upload" action="upload"></g:actionSubmit>
            </td>
        </tr>

    </g:uploadForm>
    </table>
 </div>
</body>
</html>