<%-- 
    Document   : profile
    Created on : Jul 12, 2022, 4:49:39 PM
    Author     : Wikon3
--%>

<%@page import="Controller.UserController"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.ProductController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Profile</title>
        <jsp:include page='layouts/headgame.jsp'>
            <jsp:param name="title" value="Valorant" />
        </jsp:include>
    </head>
     <%
            UserController pc = new UserController();
            ResultSet rs;
            String nama = (String)request.getSession().getAttribute("nama");
            System.out.println("nama = " + nama);
            if (nama!=null) {
                rs = pc.getByUsername(nama);
                System.out.println("nama2 = " + nama);
            } else {
                rs = (ResultSet)request.getAttribute("rs");
            }
        %>

    <body>
        <jsp:include page='layouts/navbarprofile.jsp'></jsp:include>
        <div class="col-12" id="data2">
            <form method="POST" action="profile">
                <div class="row background-data">
            <h1>Data Anda</h1>
            <div class="col-12">
                <h2>Nama Saat ini : <%= request.getSession(true).getAttribute("nama") %></h2>
            </div>
            <div class="col-12">
                <h2>Login ID Saat ini : <%= request.getSession(true).getAttribute("loginid")%></h2>
            </div>
            <div class="col-12">
                <h2>Password Saat ini : <%= request.getSession(true).getAttribute("password")%></h2>
                <br>
                <h3>Ganti Password</h3>
                <input type="password" name="pass" class="input-submit" id="uid" placeholder="Type Here">
            </div>
            <div class="col-12">
                <div class="row">
                    <button type="submit" class="input-submit2">Update Password</button>
                </div>
            </div>
        </div>
            </form>
    </div>
    <jsp:include page='layouts/footer.jsp'></jsp:include>
</body>
</html>