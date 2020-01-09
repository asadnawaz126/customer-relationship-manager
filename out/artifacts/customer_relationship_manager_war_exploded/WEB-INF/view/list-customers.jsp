<%--
  Created by IntelliJ IDEA.
  User: asadn
  Date: 11/17/2019
  Time: 8:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>List Customers</title>

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
</head>
    <body>

        <div id="wrapper" >

            <div id="header">
                    <h2>CRM - Customer Relationship Manager</h2>
                </div>

        </div>

        <div id="container">

            <div id = "content">

                <input type="button" value="Add Customer"
                    onclick = "window.location.href = 'showFormAddCustomer'; return false;" class="add-button"
                />

                <table>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Action</th>
                    </tr>

                    <c:forEach var="customer" items="${customers}">

                        <c:url var="updateLink" value="/customer/showFormForUpdate">
                            
                            <c:param name="customerId" value="${customer.id}"/>
                            
                        </c:url>

                        <tr>
                            <td>${customer.firstName}</td>
                            <td>${customer.lastName}</td>
                            <td>${customer.email}</td>
                            <td><a href="${updateLink}">Update</a></td>
                        </tr>
                    </c:forEach>

                </table>

            </div>

        </div>

    </body>
</html>
