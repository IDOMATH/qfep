<html>
  <head>
    <title>Random Quote</title>
    <g:javascript library="jquery" />
  </head>

  <body>

    <div id="header">
      <g:remoteLink action="renderString" update="mainContent">Render String</g:remoteLink>
    </div>

    <div id="side">
      <p>Placeholding</p>
    </div>

    <div id="quote">
      <%--Evaluates content reference (takes whatever is called content and puts it in the page) --%>
      <q>${quote.content}</q>
      <br />
      <%--Evaluates author reference (takes whatever is called author and puts it in the page)  --%>
      <p>-${quote.author}</p>

      <div id="mainContent">
        <p>This is mainContent</p>
      </div>

    </div>

    <div id="side">
      <p>More Placeholding</p<>
    </div>
  </body>

</html>
