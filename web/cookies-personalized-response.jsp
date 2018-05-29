<html>

<head><title>Confirmation</title></head>

<%
    // Read form data
    String favLang = request.getParameter("favoriteLanguage");

    // create the cookie
    Cookie theCookie = new Cookie("myApp.favoriteLanguage", favLang);

    // set the life span ... total number of seconds (yuk!)
    theCookie.setMaxAge(60*60*24*365); // <-- for one year

    // send cookie to browser
    response.addCookie(theCookie);
%>

</html>