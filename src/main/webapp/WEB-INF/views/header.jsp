<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <style>
        body,ul,li {
            padding: 0;
            margin: 0;
            list-style: none;
        }
        a:hover, a:visited, a:link {
            color: black;
            text-decoration: none;
        }
        .topNav {
            display: flex;
            gap: 50px;
            justify-content: center;
        }
    </style>
</head>
<body>
    <nav>
        <ul class="topNav">
            <li><a href="${pageContext.servletContext.contextPath}/">홈</a></li>
            <li><a href="${pageContext.servletContext.contextPath}/board">게시판</a></li>
            <c:if test="${userid != null}">
                <li><a href="${pageContext.servletContext.contextPath}/logout">로그아웃</a></li>
            </c:if>
            <c:if test="${userid == null}">
                <li><a href="${pageContext.servletContext.contextPath}/login">로그인</a></li>
            </c:if>
            <li><a href="${pageContext.servletContext.contextPath}/signup">회원가입</a></li>
        </ul>
    </nav>

</body>
</html>
