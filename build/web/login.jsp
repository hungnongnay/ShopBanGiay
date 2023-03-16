<%-- 
    Document   : login.jsp
    Created on : Mar 15, 2023, 11:29:30 PM
    Author     : W
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style_login.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="login-page">
            <div class="form pag">
                <h1>Login Form</h1>
                <form class="login-form" action="" method="">
                    <input type="text" placeholder="username" name="username" />
                    <input type="password" placeholder="password" name="password" />
                    <button>login</button>
                    <p class="message">Not registered? <a href="register.jsp">Create an account</a></p>
                </form>
            </div>
        </div>
    </body>
</html>
