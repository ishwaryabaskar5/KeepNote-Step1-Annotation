
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send
     button. Handle errors like empty fields -->

<form action="saveNote" method="POST">
    <h2>Keep Note</h2>
    <table>
        <tr>
            <td>Id</td>
            <td><input type="text" name="noteId" /></td>
        </tr>

        <tr>
            <td>Title</td>
            <td><input type="text" name="noteTitle" /></td>
        </tr>

        <tr>
            <td>Content</td>
            <td><input type="text" name="noteContent" /></td>
        </tr>

        <tr>
            <td>Status</td>
            <td><input type="text" name="noteStatus" /></td>
        </tr>
    </table>
    <button type="submit">Save</button>
</form>

<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
<table>
        <th>
            <td>Id</td>
            <td>Title</td>
            <td>Content</td>
            <td>Status</td>
            <td>CreatedAt</td>
        </th>
        <c:forEach items = "${list}" var = "listValue" >
            <tr>
                <td>${listValue.getNoteId()}</td>
                <td>${listValue.getNoteTitle()}</td>
                <td>${listValue.getNoteContent()}</td>
                <td>${listValue.getNoteStatus()}</td>
                <td>${listValue.getCreatedAt()}</td>
            </tr>
        </c:forEach>
</table>
</body>
</html>