<%-- 
    Document   : history
    Created on : Jul 11, 2022, 4:50:58 PM
    Author     : LENOVO
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="Controller.ProductController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page='layouts/headgame.jsp'>
            <jsp:param name="title" value="History" />
        </jsp:include>
    </head>
<body>
        <jsp:include page='layouts/navbarhistory.jsp'></jsp:include>
        <%
            String name = request.getParameter("nama");
            if (name == null || name.equals("")) {
                response.sendRedirect("history");
            }

            ProductController pc = new ProductController();
            ResultSet rs = pc.getByName(name);
            
            System.out.println(rs);
            
            if (!rs.isBeforeFirst()) {
                response.sendRedirect("history");
            }
            
        %>
 
    <div>
        <h1 class="contact">History</h1>
        <div class="row background-data2">
            <div class="col-12">
                <table>
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>Nama Barang</th>
                            <th>Jenis Barang</th>
                            <th>Stok</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% while (rs.next()) {%>
                                <tr>
                                    <td><%= rs.getString("id")%></td>
                                    <td><%= rs.getString("name")%></td>
                                    <td><%= rs.getString(8)%></td>
                                    <td><%= rs.getString("stock")%></td>
                                    <td>
                                        <form action="delete?id=<%= rs.getString("id") %>" method="POST"
                                              onsubmit="return confirm('Are you sure want to delete the data?')"
                                        >
                                            <a href="edit?id=<%= rs.getString("id") %>" class="btn btn-sm btn-info">Edit</a>
                                            <input type="hidden" name="id" value="<%= rs.getString("id")%>" />
                                            <button type="submit" class="btn btn-sm btn-danger">Delete</button>
                                        </form>
                                        
                                    </td>
                                </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>



    <jsp:include page='layouts/footer.jsp'></jsp:include>
    
</body>

</html>
