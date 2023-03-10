<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: AFTR
  Date: 03/03/2023
  Time: 15:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="css/bootstrap.css">
   <title>Register</title>
</head>
<body >
        <% HashMap<String,String> errores=(HashMap<String, String>) request.getSession().getAttribute("errores");
        if (errores!=null&&errores.size()>0){
            String contenido="";
        %>
        <h3>Whoops!</h3>
        <%
            for(String error:errores.values()){
        %>
                <p>* <%=error%></p>
            <%}%>
        <%}%>
        <h1 id="log-title">Registro</h1>
        <form action="/register-client" method="post">
            <div id="information-space">
            <div>
                <h6>Nickname</h6>
                <input type="text" name="nickname" value="${param.nickname}"/>
            </div>
            <div>
                <h6>Password</h6>
                <input type="password" name="password" value="${param.password}" />
            </div>
            <div>
                <h6>Confirm Password</h6>
                <input type="password" name="confirmpassword" value="${param.confirmpassword}"  />
            </div>

            <button type="submit" value="register" id="log-button" class="btn btn-dark">Send</button>
            </div>
        </form>

</body>
</html>
