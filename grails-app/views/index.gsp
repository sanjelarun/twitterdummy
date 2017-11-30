<html>
<head>
	<meta name="layout" content="frontpage">
	<title></title>
</head>
<body>
<div class="uk-grid uk-width-1-1" style="height: 100%">
	<div class="uk-width-1-3">
		<g:form controller="user">
			<h2>Login</h2>
			<span class="uk-text-danger">${message1}</span>
			<table class="uk-table uk-table-hover">
                <tr>
                    <td>
                        Email
					</td>
					<td>
						<g:textField name="email" placeholder="Email"></g:textField><br>
					</td>
				</tr>
				<tr>
				<td>
					Password
				</td>
				<td>
					<g:passwordField  name="password" placeholder="Password"></g:passwordField>
				</td>
			</tr>
			<tr>
                <td  align="center" colspan="2">
			<g:actionSubmit style="background-color:skyblue" value="Login" action="login"></g:actionSubmit>
			</td>

		</g:form>
	</table>
	</div>
	<div class="uk-width-1-3"></div>
	<div class="uk-width-1-3  ">
		<g:form controller="user">
			<h2>Create New Account</h2>
			<span class="uk-text-danger">${message2}</span>
			<table class="uk-table uk-table-hover">
				<tr>
					<td>
						Email
					</td>
					<td>
						<g:textField name="email" placeholder="Email"></g:textField>
					</td>
				</tr>
				<tr>
					<td>
						Password
					</td>
					<td>
						<g:passwordField name="password" placeholder="Password"></g:passwordField>
					</td>
				</tr>
				<tr>
					<td colspan="2" align="center">
						<g:actionSubmit style="background-color: skyblue" value="Register" action="register"></g:actionSubmit>
					</td>
				</tr>
			</table>
			    <br>



		</g:form>
	</div>
</div>




</body>
</html>