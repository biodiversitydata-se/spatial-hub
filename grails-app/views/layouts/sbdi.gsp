<!DOCTYPE html>
<html lang="en-AU">
<head>
    <g:if test="${config == null}">
        <g:set var="config" value="${grailsApplication.config}"/>
    </g:if>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="app.version" content="${g.meta(name: 'app.version')}"/>
    <meta name="app.build" content="${g.meta(name: 'app.build')}"/>
    <meta name="description" content="${config.skin?.orgNameLong ?: 'Atlas of Living Australia'}"/>
    <meta name="author" content="${config.skin?.orgNameLong ?: 'Atlas of Living Australia'}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Favicon -->
    <link href="${config.favicon.url}" rel="shortcut icon" type="image/x-icon"/>
    <title><g:layoutTitle/></title>
    <g:layoutHead/>

    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap" rel="stylesheet">
    <asset:stylesheet href="application-sbdi.css" />
    <g:if test="${hub}">
        <!-- Hub is not null-->
        <asset:stylesheet href="css/${hub}.css"/>
    </g:if>
    <g:else>
        <!-- Hub is null wheres the style sheet-->
        <asset:stylesheet href="generic.css"/>
    </g:else>
    <link rel="stylesheet" href="${config.headerAndFooter.baseURL}/css/app.css?DIGEST">

  <!-- Matomo -->
  <script type="text/javascript">
    if (window.location.hostname !== "localhost") {
      var _paq = window._paq = window._paq || [];
      /* tracker methods like "setCustomDimension" should be called before "trackPageView" */
      _paq.push(["setDocumentTitle", document.domain + "/" + document.title]);
      _paq.push(["setCookieDomain", "*.biodiversitydata.se"]);
      _paq.push(["setDomains", ["*.biodiversitydata.se"]]);
      _paq.push(['trackPageView']);
      _paq.push(['enableLinkTracking']);
      (function() {
        var u="//matomo.biodiversitydata.se/";
        _paq.push(['setTrackerUrl', u+'matomo.php']);
        _paq.push(['setSiteId', '25']);
        var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0];
        g.async=true; g.src=u+'matomo.js'; s.parentNode.insertBefore(g,s);
      })();
    }
  </script>
  <!-- End Matomo Code -->
</head>

<body class="${pageProperty(name: 'body.class')}" id="${pageProperty(name: 'body.id')}"
      onload="${pageProperty(name: 'body.onload')}">

<g:set var="fluidLayout" value="${pageProperty(name: 'meta.fluidLayout') ?: config.skin?.fluidLayout}"/>

<!-- Banner -->
<ala:systemMessage/>
<g:if test="${config.skin.header}">
    <hf:banner/>
</g:if>
<!-- End banner -->

<!-- Container -->
<div class="${fluidLayout ? 'container-fluid' : 'container'}" id="main">
    <g:layoutBody/>
</div><!-- End container #main col -->

<!-- Footer -->
<g:if test="${config.skin.footer}">
    <hf:footer/>
</g:if>
<!-- End footer -->

<!-- JS resources -->
<script src="${config.headerAndFooter.baseURL}/js/vendor.js?DIGEST"></script>
<script src="${config.headerAndFooter.baseURL}/js/app.js?DIGEST"></script>
<script>require('js/init');</script>
<asset:deferredScripts />
<asset:javascript src="commonui-bs3-2019/js/application.min.js"/>
<asset:javascript src="commonui-bs3-2019.js"/>
</body>
</html>
