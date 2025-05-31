<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.time.LocalDateTime, 
            java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Examples</title>
</head>
<body>

	<!-- HTML COMMENT: Will appear in the browser -->
	<%-- JSP COMMENT: Will NOT appear in the browser --%>

	<!-- 
    Declaration block: The `count` is an integer that determines the loop count.
    The `list` is an ArrayList of integers used to store values during the loop.
    -->
	<%! 
        /** 
         * An integer to define the number of iterations for the loops.
         */
        int count = 6;
        
        /** 
         * An ArrayList to store integer values for processing inside the loop.
         */
        ArrayList<Integer> list = new ArrayList<>();
    %>

	<h1>JSP Examples</h1>

	<h2>Include a file</h2>

	<!-- 
    Include directive: This includes a JSP snippet from 
    another file, allowing for code reuse and modularity.
    -->
	<%@ include file="/WEB-INF/Snippet.jsp"%>

	<h2>Expression Tags</h2>

	<h2>
		<!-- 
        JSP Expression tag: Outputs the current time using LocalDateTime.now(). 
        The result will be evaluated and displayed in the HTML response. 
        -->
		The current time is:
		<%= LocalDateTime.now() %>
	</h2>

	<!-- 
    Scriptlet tag: A for-loop used to iterate `count` times, adding each  
    value to the `list`. The value of `i` is then displayed on the page.
    -->
	<% for( int i = 0; i < count; i++ ) { 
        list.add(i); %>
		<p>
			i = <%= i %>
		</p>
	<% } %>

	<h2>Scriptlet tags</h2>

	<!-- 
    Scriptlet tag: Another for-loop that prints "Hello World" to the browser `count` times
    using the `out.println()` method. This approach writes directly to the response stream.
    -->
	<%
    for( int i = 0; i < count; i++ )
        out.println("Hello World");
    %>

	<!-- 
    Scriptlet block: The loop runs `count` times, displaying 
    "Hello World!!" inside a paragraph for each iteration.
    -->
	<% for( int i = 0; i < count; i++ ) { %>
		<p>Hello World!!</p>
	<% } %>

</body>
</html>
