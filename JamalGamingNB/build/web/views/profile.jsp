<%-- 
    Document   : profile
    Created on : Jul 12, 2022, 4:49:39 PM
    Author     : Wikon3
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Profile</title>
        <jsp:include page='layouts/headgame.jsp'>
            <jsp:param name="title" value="Valorant" />
        </jsp:include>
    </head>
    <body>
        <jsp:include page='layouts/navbarlogin.jsp'></jsp:include>
        <div class="col-12" id="data2">
        <div class="row background-data">
            <h2>Data Anda</h2>
            <div class="col-12 ">
                <p>Nama</p>
                <input type="text" value="" class="input-submit" id="nama">
            </div>
            <div class="col-12">
                <p>Username</p>
                <input type="text" value="" class="input-submit" id="uid">
            </div>
            <div class="col-12">
                <p>Password</p>
                <input type="password" value="" class="input-submit" id="uid">
            </div>
            <div class="col-12">
                <div class="row">
                    <button type="submit" class="input-submit2">Update</button>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page='layouts/footer.jsp'></jsp:include>
</body>
</html>
