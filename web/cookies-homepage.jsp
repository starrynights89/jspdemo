<html>

<body>
<h3>raining Portal</h3>

<!-- read the favorite programming language cookie -->
<%
    // the default ...  if there are no cookies
    String favLang = "Java";

    // get the cookies from the browser request
    Cookie[] theCookies = request.getCookies();

    // find our favorite langauge cookie
    if (theCookies != null) {
        for (Cookie tempCookie : theCookies) {
           if ("myApp.favoriteLanguage".equals(tempCookie.getName())) {
               favLang = tempCookie.getValue();
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

<h4>New Books for <%= favLang %></h4>
<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>
</body>

</html>