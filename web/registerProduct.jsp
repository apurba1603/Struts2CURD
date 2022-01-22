<%-- 
    Document   : registerProduct
    Created on : 15-Jan-2022, 8:07:21 pm
    Author     : Apu
--%>


<%@ page contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags"%>

<html>
    <head>
        <title>Register Product</title>
        <style type="text/css">
            .button-register {background-color: green;color: white;}
            .button-report {background-color: #000000;color: white;margin-left: 30%;}
        </style>
    </head>
    <body>
        <h2>Register Product</h2>
        <a href="productReport"><button class="button-report" type="button">Product Report</button></a>
        <s:form namespace="/registerProduct" action="registerProduct.action" method="post">
            <s:textfield label="Product Name" name="productName" />
            <s:textfield label="Product Make" name="productMake" />
            <s:textfield label="Price" name="price" />
            <s:textfield label="Availability" name="availability" />
            <s:submit cssClass="button-register" value="Resgister" />
        </s:form>
        <s:if test="ctr>0">
            <span style="color: green;"><s:property value="msg" /></span>
        </s:if>
        <s:else>
            <span style="color: red;"><s:property value="msg" /></span>
        </s:else>
    </body>
</html>