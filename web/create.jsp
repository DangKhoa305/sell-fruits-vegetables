<%-- 
    Document   : create
    Created on : Mar 9, 2022, 9:13:46 AM
    Author     : dangk
--%>

<%@page import="sample.product.ProductError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add product Page</title>
    </head>
    <body>
        <%
            ProductError productError = (ProductError) request.getAttribute("PRODUCT_ERROR");
            if(productError == null){
                productError = new ProductError();
            }
            %>
        <form action="MainController" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Product ID</td>
                        <td><input type="text" name="productID" placeholder="input ID" required=""/></td>
                        <td><%= productError.getProductIDError()%></td>
                    </tr>

                    <tr>
                        <td>Product Name</td>
                        <td><input type="text" name="productName" placeholder="input Name" required=""/></td>
                        <td><%= productError.getProductNameError()%></td>
                    </tr>
                    <tr>
                        <td>Image</td>
                        <td><input type="text" name="image" placeholder="input XXX.jpg" required=""/></td>
                    </tr>
                    <tr>
                        <td>Price</td>
                        <td><input type="text" name="price" placeholder="input number" required=""/></td>
                    </tr>
                    <tr>
                        <td>Quantity</td>
                        <td><input type="text" name="quantity" placeholder="input number" required=""/></td>
                    </tr>
                    <tr>
                        <td>Category ID</td>
                        <td><input type="text" name="categoryID" placeholder="input 1/2/3(rau/cu/qua)"required=""/></td>
                    </tr>
                    <tr>
                        <td>Import Date</td>
                        <td><input type="text" name="importDate" placeholder="YY-MM-DD" required=""/></td>
                    </tr>
                    <tr>
                        <td>Using Date</td>
                        <td><input type="text" name="usingDate" placeholder="YY-MM-DD" required=""/></td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td><input type="text" name="status"  required=""/></td>
                    </tr>
                </tbody>
            </table>
           
            <input type="submit" name="action" value="Create"/>
            <input type="reset"  value="Reset"/>
            <a href="admin.jsp">Return home</a>
        </form>
    </body>
</html>
