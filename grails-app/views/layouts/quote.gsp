<html>
  <head>

    <%--&raquo makes the >> thing it's and HTML entity --%>
    <title>QFEP &raquo; <g:layoutTitle/></title>
    <g:external dir="css" file="quoteStyle.css"/>
    <%--Pulls head elements from target page --%>
    <g:layoutHead />
    <%--Pulls resources for page --%>
    <r:layoutResources />

  </head>

  <body>
    <div id="header">
      <g:img dir="images" file="logo.jpg" alt="logo"/>
    </div>

    <%--Pulls content from targer page --%>
    <g:layoutBody />
  </body>

</html>
