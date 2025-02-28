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
    <style>
        #main { padding:0; }
        html { font-size: 12px; }
        .nav-menu-desktop { font-size: 1.2em; }
        .customify-container { max-width: none; }
        #top-logo {
            height: 50px;
            padding: 7px 0;
        }
        #auth-header-buttons {
            margin-bottom: 0;
        }
        #auth-header-buttons a {
            font-size: 1.17rem;
        }
        #auth-header-buttons a:hover {
            background-color: var(--primary-sbdi-lightblue) !important;
        }
        .nav-menu-desktop .menu > li > a {
            padding: 19px 13px;
        }
    </style>
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

<div id="wrapper-navbar" itemscope="" itemtype="http://schema.org/WebSite">
  <div class="header-bottom header--row layout-full-contained hide-on-mobile hide-on-tablet" id="cb-row--header-bottom"
    data-row-id="bottom" data-show-on="desktop mobile">
    <div class="header--row-inner header-bottom-inner">
      <div class="customify-container">
        <div class="customify-grid cb-row--desktop hide-on-mobile hide-on-tablet customify-grid-middle">

          <div>
            <a href="${config.ala.baseURL}">
              <asset:image id="top-logo" src="SBDI-utan-text-vit.svg" title="Swedish Biodiversity Data Infrastructure" />
            </a>
          </div>
          <div style="color: white; padding-left: 20px; font-size: 1.4rem; align-self: flex-end;">
            Swedish Biodiversity Data Infrastructure
          </div>

          <div class="builder-item builder-first--primary-menu" data-push-left="" style="margin-left: auto;">
            <div class="item--inner builder-item--primary-menu has_menu" data-section="header_menu_primary"
              data-item-id="primary-menu">
              <nav id="site-navigation-bottom-desktop"
                class="site-navigation primary-menu primary-menu-bottom nav-menu-desktop primary-menu-desktop style-plain">
                <ul id="menu-nested-pages-main-menu" class="primary-menu-ul menu nav-menu">
                  <li id="menu-item--bottom-desktop-1923"
                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1923">
                    <a href="https://species.biodiversitydata.se/"><span class="link-before">Search and Explore<span
                          class="nav-icon-angle">&nbsp;</span></span></a>
                    <ul class="sub-menu sub-lv-0">
                      <li id="menu-item--bottom-desktop-1920"
                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1920"><a
                          href="https://species.biodiversitydata.se/"><span class="link-before">Search
                            species</span></a></li>
                      <li id="menu-item--bottom-desktop-1927"
                        class="menu-item-bottom-divider menu-item menu-item-type-custom menu-item-object-custom menu-item-1927">
                        <a href="https://records.biodiversitydata.se/#tab_simpleSearch"><span class="link-before">Search
                            records</span></a>
                      </li>
                      <li role="separator" class="divider"></li>
                      <li id="menu-item--bottom-desktop-1939"
                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1939"><a
                          href="https://records.biodiversitydata.se/explore/your-area"><span class="link-before">Explore
                            records in your area</span></a></li>
                      <li id="menu-item--bottom-desktop-1941"
                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1941"><a
                          href="https://regions.biodiversitydata.se/"><span class="link-before">Explore records in
                            predefined region</span></a></li>
                      <li id="menu-item--bottom-desktop-1943"
                        class="menu-item-bottom-divider menu-item menu-item-type-custom menu-item-object-custom menu-item-1943">
                        <a href="https://records.biodiversitydata.se/search#tab_spatialSearch"><span
                            class="link-before">Explore records by spatial search</span></a>
                      </li>
                      <li role="separator" class="divider"></li>
                      <li id="menu-item--bottom-desktop-1929"
                        class="menu-item-bottom-divider menu-item menu-item-type-custom menu-item-object-custom menu-item-1929">
                        <a href="https://collections.biodiversitydata.se/datasets"><span class="link-before">Search
                            datasets and checklists</span></a>
                      </li>
                      <li role="separator" class="divider"></li>
                      <li id="menu-item--bottom-desktop-1931"
                        class="menu-item-bottom-divider menu-item menu-item-type-custom menu-item-object-custom menu-item-1931">
                        <a href="https://asv-portal.biodiversitydata.se/"><span class="link-before">Search the Swedish
                            ASV database</span></a>
                      </li>
                      <li role="separator" class="divider"></li>
                      <li id="menu-item--bottom-desktop-1936"
                      class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1935"><a
                        href="https://biologging.biodiversitydata.se/"><span class="link-before">Search the Swedish
                         Biologging Portal</span></a></li>
                      <li role="separator" class="divider"></li>
                      <li id="menu-item--bottom-desktop-1933"
                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1933"><a
                          href="https://collections.biodiversitydata.se/"><span class="link-before">Explore data
                            partners</span></a></li>
                      <li id="menu-item--bottom-desktop-1935"
                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1935"><a
                          href="https://lists.biodiversitydata.se/"><span class="link-before">Explore species
                            lists</span></a></li>
                    </ul>
                  </li>
                  <li id="menu-item--bottom-desktop-1946"
                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1946">
                    <a href="https://biodiversitydata.se/explore-analyze/data-and-tools/sbdi-tools/"><span
                        class="link-before">SBDI Tools<span class="nav-icon-angle">&nbsp;</span></span></a>
                    <ul class="sub-menu sub-lv-0">
                      <li id="menu-item--bottom-desktop-1948"
                        class="menu-item-bottom-divider menu-item menu-item-type-custom menu-item-object-custom menu-item-1948">
                        <a href="https://biodiversitydata.se/explore-analyze/data-and-tools/sbdi-tools/"><span
                            class="link-before">About SBDI tools</span></a>
                      </li>
                      <li role="separator" class="divider"></li>
                      <li id="menu-item--bottom-desktop-2117"
                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2117"><a
                          href="https://records.biodiversitydata.se/"><span class="link-before">Bioatlas Core</span></a>
                      </li>
                      <li id="menu-item--bottom-desktop-1950"
                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1950"><a
                          href="https://spatial.biodiversitydata.se/"><span class="link-before">Spatial
                            Portal</span></a></li>
                      <li id="menu-item--bottom-desktop-1952"
                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1952"><a
                          href="https://biocollect.biodiversitydata.se/"><span class="link-before">BioCollect</span></a>
                      </li>
                      <li id="menu-item--bottom-desktop-1953"
                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1952"><a
                          href="https://biologging.biodiversitydata.se/"><span class="link-before">Biologging Portal</span></a>
                      </li>
                      <li id="menu-item--bottom-desktop-2100"
                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2100"><a
                          href="https://images.biodiversitydata.se"><span class="link-before">Images Service</span></a>
                      </li>
                      <li id="menu-item--bottom-desktop-1954"
                        class="menu-item-bottom-divider menu-item menu-item-type-custom menu-item-object-custom menu-item-1954">
                        <a href="https://ctzn.biodiversitydata.se"><span class="link-before">Bioatlas
                            Crowdsourcing</span></a>
                      </li>
                      <li role="separator" class="divider"></li>
                      <li id="menu-item--bottom-desktop-2018"
                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-2018"><a
                          href="https://api.biodiversitydata.se"><span class="link-before">Our API:s</span></a></li>
                      <li id="menu-item--bottom-desktop-2019"
                        class="menu-item-bottom-divider menu-item menu-item-type-custom menu-item-object-custom menu-item-2019">
                        <a href="https://tools.biodiversitydata.se/mirroreum/"><span
                            class="link-before">Mirroreum</span></a>
                      </li>
                      <li role="separator" class="divider"></li>
                      <li id="menu-item--bottom-desktop-1956"
                        class="menu-item-external-link menu-item menu-item-type-custom menu-item-object-custom menu-item-1956">
                        <a target="_blank" href="http://nordicmicroalgae.org/sv"><span class="link-before">Nordic
                            Microalgae</span></a>
                      </li>
                      <li id="menu-item--bottom-desktop-1958"
                        class="menu-item-external-link menu-item menu-item-type-custom menu-item-object-custom menu-item-1958">
                        <a target="_blank" href="http://nordicmicroalgae.org/tools"><span class="link-before">Plankton
                            Toolbox</span></a>
                      </li>
                      <li id="menu-item--bottom-desktop-1960"
                        class="menu-item-external-link menu-item menu-item-type-custom menu-item-object-custom menu-item-1960">
                        <a target="_blank" href="https://sharkweb.smhi.se/"><span
                            class="link-before">SHARKweb</span></a>
                      </li>
                      <li id="menu-item--bottom-desktop-1962"
                        class="menu-item-external-link menu-item menu-item-type-custom menu-item-object-custom menu-item-1962">
                        <a target="_blank" href="https://www.slu.se/wram/"><span class="link-before">WRAM</span></a>
                      </li>
                      <li id="menu-item--bottom-desktop-1964"
                        class="menu-item-external-link menu-item menu-item-type-custom menu-item-object-custom menu-item-1964">
                        <a target="_blank" href="https://www.sead.se/"><span class="link-before">SEAD</span></a>
                      </li>
                      <li id="menu-item--bottom-desktop-2095"
                        class="menu-item-external-link menu-item menu-item-type-custom menu-item-object-custom menu-item-2095">
                        <a target="_blank" href="https://barm.scilifelab.se/"><span
                            class="link-before">BalticMicrobeDB</span></a>
                      </li>
                      <li id="menu-item--bottom-desktop-2093"
                        class="menu-item-external-link menu-item menu-item-type-custom menu-item-object-custom menu-item-2093">
                        <a target="_blank" href="https://nf-co.re/ampliseq"><span
                            class="link-before">Ampliseq</span></a>
                      </li>
                      <li id="menu-item--bottom-desktop-2094"
                      class="menu-item-external-link menu-item menu-item-type-custom menu-item-object-custom menu-item-2129">
                      <a target="_blank" href="https://www.subsim.se/"><span
                          class="link-before">SUBSIM</span></a>
                      </li>
                    </ul>
                  </li>
                  <li id="menu-item--bottom-desktop-1966"
                    class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-1966">
                    <a href="https://docs.biodiversitydata.se/"><span class="link-before">Help<span
                          class="nav-icon-angle">&nbsp;</span></span></a>
                    <ul class="sub-menu sub-lv-0">
                      <li id="menu-item--bottom-desktop-1968"
                        class="menu-item-bottom-divider menu-item menu-item-type-custom menu-item-object-custom menu-item-1968">
                        <a href="https://docs.biodiversitydata.se"><span class="link-before">Browse our help
                            pages</span></a>
                      </li>
                      <li id="menu-item--bottom-desktop-1970"
                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1970"><a
                          href="https://docs.biodiversitydata.se/sbdi-data/citation-guide/"><span
                            class="link-before">How to cite SBDI and data used</span></a></li>
                      <li id="menu-item--bottom-desktop-1972"
                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1972"><a
                          href="https://docs.biodiversitydata.se/publish-and-share-data/"><span
                            class="link-before">Share your data</span></a></li>
                      <li id="menu-item--bottom-desktop-1974"
                        class="menu-item-bottom-divider menu-item menu-item-type-custom menu-item-object-custom menu-item-1974">
                        <a href="https://docs.biodiversitydata.se/courses-and-training/"><span
                            class="link-before">Courses and training</span></a>
                      </li>
                      <li id="menu-item--bottom-desktop-1976"
                        class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1976"><a
                          href="https://docs.biodiversitydata.se/support"><span class="link-before">Contact us /
                            Support</span></a></li>
                    </ul>
                  </li>
                </ul>
              </nav>
            </div>
          </div>

          <div id="auth-header-buttons"
            class="item--inner builder-item--button hide-on-mobile hide-on-tablet"
            data-section="header_button" data-item-id="button">
              <g:if test="${request.userPrincipal}">
                <a data-i18n="nav.myprofile" style="margin-left:0.2rem;" class=" myProfileBtn item--button
                  customify-btn customify-builder-btn is-icon-before" rel="noopener"
                  href="${config.userdetails.web.url}myprofile/">My profile</a>
                <a data-i18n="nav.logout" style="margin-left:0.2rem;" class=" logoutBtn item--button customify-btn
                  customify-builder-btn is-icon-before" rel="noopener" href="/logout?">Logout</a>
              </g:if>
              <g:else>
                <a data-i18n="nav.login" style="margin-left:0.2rem;" class=" loginBtn item--button customify-btn
                  customify-builder-btn is-icon-before" rel="noopener" href="/login?path=${request.getRequestURL()}">Login</a>
                <a data-i18n="nav.create-account" style="margin-left:0.2rem;" class=" signUpBtn item--button
                  customify-btn customify-builder-btn is-icon-before" rel="noopener"
                  href="${config.userdetails.web.url}registration/createAccount">Sign up</a>
              </g:else>
          </div>

        </div>
      </div>
    </div>
  </div>
</div>


<ala:systemMessage/>
<!-- Container -->
<div class="${fluidLayout ? 'container-fluid' : 'container'}" id="main">
    <g:layoutBody/>
</div><!-- End container #main col -->

<!-- JS resources -->
<asset:deferredScripts />
<asset:javascript src="commonui-bs3-2019.js"/>
</body>
</html>
