<%-- 
    Document   : updateProduct
    Created on : 16-Jan-2022, 1:08:43 am
    Author     : Apu
--%>


<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <title>Update</title>
    </head>
    <body>
        <h2>Update Product</h2>
        <form action=updateproducts method="post">
            
                <table>
                    <tr>
                        <td><b>Product Id:</b></td>
                        <td><input type="text" name="productId" value='<s:property value="productId"/>'></td>
                    </tr>
                    <tr>
                        <td><b>Product Name:</b></td>
                        <td><input type="text" name="productName" value='<s:property value="productName"/>'></td>
                    </tr>
                    <tr>
                        <td><b>Product Make:</b></td>
                        <td><input type="text"  name="productMake" value='<s:property value="productMake"/>'>
                        </td>
                    </tr>
                    <tr>
                        <td><b>Price:</b></td>
                        <td><input type="text" name="price" value='<s:property value="price"/>'></td>
                    </tr>
                    <tr>
                        <td><b>Availability:</b></td>
                        <td><input type="text" name="availability" value='<s:property value="availability"/>'></td>
                    </tr>
                </table> 
                    
            <button name="submitType" value="update" type="submit">Update</button>
            <a href="productReport"><button class="button-report" type="button">Cancel</button></a>
        </form>
        <s:if test="ctr>0">
            <span style="color: red;"><s:property value="msg" /></span>
        </s:if>
        <s:else>
            <span style="color: red;"><s:property value="msg" /></span>
        </s:else>
    </body>
</html>

