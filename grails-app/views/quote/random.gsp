<html>
  <head>
    <title>Random Quote</title>
    <g:javascript library="jquery" />
  </head>

  <body>
        <div id="side">
          <p>Total Quotes: ${totalQuotes}</p>
        </div>

        <div id="middle">
          <%--Evaluates content reference (takes whatever is called content and puts it in the page) --%>
          <q>${quote.content}</q>
          <%--Evaluates author reference (takes whatever is called author and puts it in the page)  --%>
          <p>-${quote.author}</p>
        </div>

        <div id="side">
          <p>Grails is neat</p>
        </div>

  </body>

</html>
