<%-- 
    Document   : register
    Created on : Mar 15, 2023, 11:29:38 PM
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
            <div class="form bt">
                <form class="login-form" action="" method="">
                    <h1>Register Form</h1>
                    <input type="text" placeholder="name" name="name" />
                    <input type="password" placeholder="password" name="password" />
                    <input type="password" placeholder="re - password" name="repassword" />
                    <button>create</button>
                    <p class="message">Already registered? <a href="login.jsp">Sign In</a></p>
                </form>
            </div>
        </div>
    </body>
</html>
