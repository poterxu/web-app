<%-- 
    Document   : display_email_entry
    Created on : Dec 11, 2016, 9:28:14 PM
    Author     : poter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Murach's Java Servlets and JSP</title>
    </head>
    <body>
        <!-- import packages and classes needed by the scripts -->
        <%
            //get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String emailAddress = request.getParameter("emailAddress");
            
        %>
        <h1>Thanks for joining our email list</h1>
        <p>Here is the information than you entered:</p>
        <table cellspacing='5' cellpadding='5' border='1'>
            <tr>
                <td align='right'>First name:</td>
                <td><%= firstName %></td>
                
            </tr>
            <tr>
                <td align="right"> Last name:</td>
                <td><%= lastName %> </td>
                
            </tr>
            <tr>
                <td align="right">Email address:</td>
                <td><%= emailAddress %></td>
                </tr>
            </table>
                <p>To enter another email address, click on the Back<br>
                button in your browser or the Return button shown <br>
                below.
                </p>
                <form action="join_email_list.html" method="post">
                    <input type="submit" value="Return">
                    </form>
    </body>
</html>
