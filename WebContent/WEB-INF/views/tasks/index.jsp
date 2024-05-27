<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url="../layout/app.jsp">
    <c:param name="content">
        <h2>タスク一覧</h2>
        <ul>
            <c:forEach var="tasks" items="${Tasks}">
                <li>
                    <a href="${pageContext.request.contextPath}/show?id=${Tasks.id}">
                    <c:out value="${Tasks.id}" />
                    </a>
                    ：<c:out value="${Tasks.content}" />
                </li>
            </c:forEach>
        </ul>

        <a href ="${pageContext.request.contextPath}/new">新規タスクの追加</a>

    </c:param>
</c:import>