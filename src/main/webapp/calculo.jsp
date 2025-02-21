<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<%
    int[] valores = {1,2,3,4,5,6,7,8,9,10};
    request.setAttribute("valores", valores);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
    <body>
        <h1>Calculo</h1>
        <hr />
        <c:forEach var="item" items="${valores}">
            ${item}${"x"}${"5"}${"="}${item*5} <br />
            <c:if test="${item == 10}" > FIM </c:if>
        </c:forEach>
        <hr />
        <c:forEach var="item" begin="1" end="20" step="1">
            ${item}${"x"}${"5"}${"="}${item*5} <br />
        </c:forEach>
    </body>
</html>