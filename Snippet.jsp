<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.time.LocalDateTime"%>

<h2>Imported HTML</h2>

<!-- 
A HTML paragraph providing context to the imported HTML snippet.
It indicates that the content below is imported from "Snippet.html".
-->
<p>From Snippet.html</p>

<!-- 
JSP Expression Tag: Outputs the current date and time using `LocalDateTime.now()`.
This dynamically renders the current timestamp at the moment the JSP page is accessed.
-->
<%=LocalDateTime.now()%>
