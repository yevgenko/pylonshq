# -*- coding: utf-8 -*- 
<!doctype html>  

<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"> <!--<![endif]-->
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<!--[if IE]><meta http-equiv="imagetoolbar" content="no" /><![endif]-->
	
	<title>Pylons Project : ${self.pagename()}</title>
	<meta name="description" content="">
	<meta name="author" content="The Pylons Project and contributors">

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="${request.static_url('pylonshq:static/favicon.ico')}">
	<link rel="apple-touch-icon" href="${request.static_url('pylonshq:static/apple-touch-icon.png')}">

	<link rel="stylesheet" href="https://static.pylonsproject.org/fonts/nobile/stylesheet.css" media="screen">
	<link rel="stylesheet" href="https://static.pylonsproject.org/fonts/neuton/stylesheet.css" media="screen">
	<link rel="stylesheet" href="${request.static_url('pylonshq:static/css/screen.css')}?v=${rid}" media="screen, projection">
	<link rel="stylesheet" href="${request.static_url('pylonshq:static/css/print.css')}?v=${rid}" media="print">
	<!--[if IE]><link rel="stylesheet" href="${request.static_url('pylonshq:static/css/ie.css')}?v=${rid}" media="screen, projection"><![endif]-->
	<link rel="stylesheet" href="${request.static_url('pylonshq:static/css/app.css')}?v=${rid}" media="screen, projection">
	<link rel="stylesheet" href="${request.static_url('pylonshq:static/css/pygments.css')}?v=${rid}" media="screen, projection">
	${self.stylesheets()}
	<script src="${request.static_url('pylonshq:static/js/libs/modernizr-1.7pre.js')}"></script>

</head>

<body class="bp">

	<header>
		<div class="header">
			<div id="header">
				${nav.header_nav(c.active_header_nav)}
			</div>
		</div>
    </header>
	
	${next.body()}
    
	<footer>
		<div class="footer">
			<div id="footer">
				${nav.footer_nav(c.active_footer_nav)}
			</div>
		</div>
    </footer>


	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js"></script>
	<script>!window.jQuery && document.write(unescape('%3Cscript src="${request.static_url('pylonshq:static/js/libs/jquery-1.4.4.min.js')}"%3E%3C/script%3E'))</script>
	
	<script src="${request.static_url('pylonshq:static/js/libs/jquery.cycle.min.js')}"></script>
	
	<!-- scripts concatenated and minified via ant build script-->
	<script src="${request.static_url('pylonshq:static/js/plugins.js')}?v=${rid}"></script>
	<script src="${request.static_url('pylonshq:static/js/script.js')}?v=${rid}"></script>
	<!-- end concatenated and minified scripts-->
  
	<!--[if lt IE 7 ]>
	<script src="${request.static_url('pylonshq:static/js/libs/dd_belatedpng.js')}"></script>
	<script> DD_belatedPNG.fix('img, .png_bg'); </script>
	<![endif]-->

	<!-- yui profiler and profileviewer - remove for production -->
	##<script src="${request.static_url('pylonshq:static/js/profiling/yahoo-profiling.min.js')}"></script>
	##<script src="${request.static_url('pylonshq:static/js/profiling/config.js')}"></script>
	<!-- end profiling code -->

	${self.javascripts()}
	
	<!-- mathiasbynens.be/notes/async-analytics-snippet Change UA-XXXXX-X to be your site's ID -->
	<script>
     var _gaq = _gaq || [];
     _gaq.push(['_setAccount', 'UA-21146943-1']);
     _gaq.push(['_trackPageview']);
     (function() {
      var ga = document.createElement('script');
      ga.type = 'text/javascript';
      ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0];
      s.parentNode.insertBefore(ga, s);
     })();
    </script>  
</body>
</html>
<%namespace name="nav" file="/nav.mako"/>
<%namespace name="funcs" file="/funcs.mako"/>
<%def name="pagename()">${c.pagename}</%def>
<%def name="stylesheets()"></%def>
<%def name="javascripts()"></%def>
<%!
    from time import time
    rid = int(time())
%>
