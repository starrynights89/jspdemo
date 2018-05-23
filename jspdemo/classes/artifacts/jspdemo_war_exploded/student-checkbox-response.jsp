<html>

<head><title>Student Confirmation Title</title></head>

<body>

	The student is confirmed: ${param.firstName} ${param.lastName}

	<br/><br/>

	Favorite Programming Languages: <br/>
	
	<!-- display list of "favoriteLanguage" -->	
	<ul>
		<%
			String[] langs = request.getParameterValues("favoriteLanguage");
			
			try {
				for (String tempLang:langs) {
					out.println("<li>" + tempLang + "</li>");
				}
			} catch(NullPointerException e) {
				out.println("No language selected!");
			}
		%>
	</ul>
</body>
</html>