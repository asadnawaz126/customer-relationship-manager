<%--
  Created by IntelliJ IDEA.
  User: asadn
  Date: 12/13/2019
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Title</title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>

    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/>
</head>
<body>


    <div id="wrapper">
        <div id="header">
            <h2>CRM - Customer Relationship Manager</h2>
        </div>
    </div>

    <div id="container">
        <h3>Save Customer</h3>

        <form:form action="saveCustomer" modelAttribute="customer" method="post">

            <!-- Gets customer id and submits it all without the user knowing. Needed so that we can change the values in the database at same id when user wants to update an entry-->
            <form:hidden path="id"/>

            <table>
                <tbody>
                <tr>
                    <td>First Name:</td>
                    <td><form:input path="firstName"/></td>
                </tr>

                <tr>
                    <td>Last Name:</td>
                    <td><form:input path="lastName"/></td>
                </tr>

                <tr>
                    <td>Email:</td>
                    <td><form:input path="email"/></td>
                </tr>

                <tr>
                    <td></td>
                    <td><input type="submit" value="Save" class="save"/> </td>
                </tr>
                </tbody>
            </table>

        </form:form>

        <div style="clear: both"></div>
            <p>
                <a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
            </p>



    </div>





</body>
</html>
