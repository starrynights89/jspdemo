<%@ page import="java.net.URLEncoder" %>
<html>

<body>
<h3>Training Portal</h3>

<!-- read the favorite programming language cookie -->
<%
    // the default ...  if there are no cookies
    String favLang = "Java";

    // get the cookies from the browser request
    Cookie[] theCookies = request.getCookies();

    // find our favorite language cookie
    if (theCookies != null) {
        for (Cookie tempCookie : theCookies) {
           if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {

               // encode cookie data ... handle case of languages with spaces in them
               favLang = URLEncoder.encode(favLang, "UTF-8");
               break;
           }
        }
    }
%>

<!-- now show a personalized page ... use the "favLang" Variable -->

<!-- show new books for this language -->
<h4>New Books for <%= favLang %></h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<h4>Latest News Reports for <%= favLang %></h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<h4>Hot jobs for <%= favLang %></h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>

<hr>
<a href="cookies-personalize-form.html">Personalize this page</a>
</body>

</html>