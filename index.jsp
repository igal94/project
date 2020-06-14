<!DOCTYPE html>
<html>
<head>
  <title>Echoing HTML Request Parameters</title>
</head>
<body>
  <h3>Choose an author:</h3>
  <form method="get">
    <input type="checkbox" name="author" value="Tan Ah Teck">Tan
    <input type="checkbox" name="author" value="Mohd Ali">Ali
    <input type="checkbox" name="author" value="Kumar">Kumar
    <input type="submit" value="Query">
  </form>
 
  <%
  String[] authors = request.getParameterValues("author");
  if (authors != null) {
  %>
    <h3>You have selected author(s):</h3>
    <ul>
  <%
      for (int i = 0; i < authors.length; ++i) {
  %>
        <li><%= authors[i] %></li>
  <%
      }
  %>
    <br />
    <a href="https://www.amazon.com/books-used-books-textbooks/b?ie=UTF8&node=283155">link to amazon</a>
	<br />
    </ul>
    <a href="<%= request.getRequestURI() %>">BACK</a>
	
  <%
  }
  %>
</body>
</html>
