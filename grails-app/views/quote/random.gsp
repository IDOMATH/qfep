<html>
  <head>
    <title>Random Quote</title>
    <g:javascript library="jquery" />
  </head>

  <body>

    <div class="topnav">
      <g:remoteLink action="random">Home</g:remoteLink>
      <g:remoteLink controller="quote" action="ajaxRandom" update="middle">More Quote</g:remoteLink>
      <a href="#">Donate</a>
      <g:remoteLink controller="quote" action="renderView" update="mainContent">Render View</g:remoteLink>
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

      <div id="mainContent" style='float: right; width: 80%;min-height: 500px; background-color: #c0ffc0;'>
        <p>This is mainContent</p>
      </div>

    </div>

    <div id="side">
      <p>More Placeholding</p<>
    </div>
  </body>

</html>
