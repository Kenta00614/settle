<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="header.jsp" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.Facility" %>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>施設選択</title>
</head>
<body>
    <h1>施設カテゴリ選択</h1>

    <!-- カテゴリ選択フォーム -->
    <form action="FacilitySelect" method="get">
        <label for="categorySelect">カテゴリを選択:</label>
        <select name="category" id="categorySelect">
            <option value="0">温泉</option>
            <option value="1">寺・寺院</option>
            <option value="2">博物館</option>
            <option value="3">スキー場</option>
            <option value="4">水族館</option>
            <option value="5">動物園</option>
            <option value="6">果樹園</option>
            <option value="7">レジャー</option>
            <option value="8">その他</option>
        </select>
        <button type="submit">検索</button>
    </form>

    <!-- 施設一覧表示 -->
    <h2>施設一覧</h2>
    <c:forEach var="facility" items="${facilityList}">
        <div>
            <p>${facility.fac_name} (${facility.getStrCategory()})</p>
            <a href="FacilityDetailServlet?facId=${facility.fac_id}">詳細ページへ</a>
        </div>
    </c:forEach>
</body>
</html>
