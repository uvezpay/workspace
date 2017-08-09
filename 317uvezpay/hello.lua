local template =
[[
<!doctype html>
<html>
<head>
	<title>blimey</title>
</head>
<body>
 bloody cricket
</body>
</html>
]]
 

local lustache = require 'lustache'
return lustache:render(template),
	{['Content-Type']='text/html; charset=utf-8'}