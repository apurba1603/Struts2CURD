<%-- 
    Document   : report
    Created on : 15-Jan-2022, 11:01:45 pm
    Author     : Apu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<jsp:include page="menu.jsp" ></jsp:include>
    <!doctype html>
    <html lang="en">
        <head>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta name="description" content="">
            <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
            <meta name="generator" content="Hugo 0.88.1">
            <title>Customer</title>
            <!-- Bootstrap core CSS -->
            <link href="./css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
            <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
            <meta name="theme-color" content="#7952b3">


            <style>
                .button-update {
                    background-color: #008CBA;
                    color: white;
                }
                .button-delete {
                    background-color: red;
                    color: white;
                }
                .bd-placeholder-img {
                    font-size: 1.125rem;
                    text-anchor: middle;
                    -webkit-user-select: none;
                    -moz-user-select: none;
                    user-select: none;
                }

                @media (min-width: 768px) {
                    .bd-placeholder-img-lg {
                        font-size: 3.5rem;
                    }
                }
            </style>


            <!-- Custom styles for this template -->
            <link href="./css/dashboard.css" rel="stylesheet">
        </head>
        <body>


            <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">

                <h2>User</h2>
                <font style="color: #a52834"><c:out value="${requestScope.MSG}"></c:out></font>
            <div class="table-responsive">
                <s:if test="noData==false">
                    <table class="table table-striped table-sm">
                        <thead>
                            <tr>
                                <th scope="col">User Name</th>
                                <th scope="col">Password</th>
                                <th scope="col">First Name</th>
                                <th scope="col">Last Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Phone Number</th>
                                <th scope="col">Actions</th>
                            </tr>
                        </thead>
                        <s:iterator value="userList">
                            <tr>
                                <td><s:property value="userName" /></td>
                                <td><s:property value="password" /></td>
                                <td><s:property value="firstName" /></td>
                                <td><s:property value="lastName" /></td>
                                <td><s:property value="email" /></td>
                                <td><s:property value="phoneNumber" /></td>
                                <td>
                                    <a href="updatedetails.action?submitType=updatedata&userName=<s:property value="userName"/>">
                                        <button class="button-update">Update</button>
                                    </a>
                                    <a href="deleterecord.action?userName=<s:property value="userName"/>">
                                        <button class="button-delete">Delete</button>
                                    </a>
                                </td>
                            </tr>
                        </s:iterator>
                    </table>
                </s:if>
                <s:else>
                    <div style="color: red;">No Data Found.</div>
                </s:else>
            </div>
        </main>
    </div>
</div>


<script src="./js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
<script src="./js/feather.min.js" crossorigin="anonymous"></script>
<script src="./js/Chart.min.js" crossorigin="anonymous"></script>
<script src="./js/dashboard.js"></script>
</body>
</html>
