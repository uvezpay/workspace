local template =
[[
<!doctype html>
<html>
<head>
	<title>{{feed.title}}</title>
</head>
<body>
	<h1><a href="{{{feed.link}}}">{{feed.title}}</a></h1>
	<ul>
	{{#entries}}
		<li><a href="{{{link}}}">{{title}}</a></li>
	{{/entries}}
	</ul>
</body>
</html>
]]
 
local feedparser = require 'feedparser'
local response = http.request { url =
	request.query.feed or 'http://blog.webscript.io/rss.xml'
}
local parsed = feedparser.parse(response.content)
 
local lustache = require 'lustache'
return lustache:render(template, parsed),
	{['Content-Type']='text/html; charset=utf-8'}