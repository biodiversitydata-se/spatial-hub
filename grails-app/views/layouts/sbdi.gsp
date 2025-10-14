<!DOCTYPE html>
<html lang="en-AU">
<head>
    <g:if test="${config == null}">
        <g:set var="config" value="${grailsApplication.config}"/>
    </g:if>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="app.version" content="${g.meta(name: 'info.app.version')}"/>
    <meta name="app.build" content="${g.meta(name: 'info.app.build')}"/>
    <meta name="description" content="${config.skin?.orgNameLong ?: 'Atlas of Living Australia'}"/>
    <meta name="author" content="${config.skin?.orgNameLong ?: 'Atlas of Living Australia'}">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${config.favicon.url}" rel="shortcut icon" type="image/x-icon"/>
    <link href="${config.headerAndFooter.baseURL}/app/themes/sbdi/css/styles.css" rel="stylesheet">
    <link href="${config.headerAndFooter.baseURL}/app/themes/sbdi/css/z-override-style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&amp;display=swap" rel="stylesheet">
    <title><g:layoutTitle/></title>
    <g:layoutHead/>
    <asset:stylesheet href="application-sbdi.css" />
    <g:if test="${hub}">
        <!-- Hub is not null-->
        <asset:stylesheet href="css/${hub}.css"/>
    </g:if>
    <g:else>
        <!-- Hub is null wheres the style sheet-->
        <asset:stylesheet href="generic.css"/>
    </g:else>
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

<header id="wrapper-navbar">
    <nav class="navbar navbar-default">
        <div class="container">
            <div class="navbar-header">
                <a href="${config.ala.baseURL}">
                  <asset:image src="SBDI-utan-text-vit.svg" title="Swedish Biodiversity Data Infrastructure" />
                </a>
                <span>Swedish Biodiversity Data Infrastructure</span>
            </div>
            <div id="navbar-collapse" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Search and explore <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="https://collections.biodiversitydata.se/datasets">Search datasets and checklists</a></li>
                            <li><a href="https://collections.biodiversitydata.se/">Explore data partners</a></li>
                            <li><a href="https://lists.biodiversitydata.se/">Explore species lists</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="https://species.biodiversitydata.se/">Search species</a></li>
                            <li><a href="https://records.biodiversitydata.se/#tab_simpleSearch">Search occurrence records</a></li>
                            <li><a href="https://spatial.biodiversitydata.se/">Analyse data in Spatial Portal</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="https://records.biodiversitydata.se/explore/your-area">Explore records in your area</a></li>
                            <li><a href="https://regions.biodiversitydata.se/">Explore records in predefined regions</a></li>
                            <li><a href="https://records.biodiversitydata.se/search#tab_spatialSearch">Search by polygon</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="https://tools.biodiversitydata.se">SBDI tools</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Help <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="https://docs.biodiversitydata.se/">Browse our help pages</a></li>
                            <li><a href="https://docs.biodiversitydata.se/support">Contact us / Support</a></li>
                            <!--
                            <li><a href="https://new.biodiversitydata.se/explore-data/programming/">Programming and API:s</a></li>
                            -->
                            <li role="separator" class="divider"></li>
                            <li><a href="https://docs.biodiversitydata.se/sbdi-data/citation-guide/">How to site SBDI and data used</a></li>
                            <li><a href="https://docs.biodiversitydata.se/publish-and-share-data/">Share your data</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-user"></i> <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <g:if test="${request.userPrincipal}">
                                <li><a href="${config.userdetails.web.url}myprofile/">My profile</a></li>
                                <li><a href="/logout?">Logout</a></li>
                            </g:if>
                            <g:else>
                                <li><a href="/login?path=${request.getRequestURL()}">Login</a></li>
                                <li><a href="${config.userdetails.web.url}registration/createAccount">Sign up</a></li>
                            </g:else>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>

<ala:systemMessage/>
<!-- Container -->
<div class="${fluidLayout ? 'container-fluid' : 'container'}" id="main">
    <g:layoutBody/>
</div><!-- End container #main col -->

<!-- JS resources-->
<asset:deferredScripts />
<asset:javascript src="commonui-bs3-2019.js"/>

</body>
</html>
