local view = {
	title = "Open Source Hello or Goodbye",
	msg = storage.msg,
	entries = {{
		link = 'http://www.bombaytasty.com/wp-content/uploads/2014/10/Chapati.jpg',
		title = 'Roti'}, {
		link = 'http://yummyindiankitchen.com/wp-content/uploads/2016/11/masur-ki-dal-massor-daal.jpg',
		title = 'Daal'}, {
		link = 'www.yahoo.com',
		title = 'YAHOO'
	}}
}

local template = [[
<!doctype html>
<html>
<head>
	<title>{{title}}</title>

	<!--Bootstrap-->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

	<!-- Mobile Display Optimization-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

</head>

<body>
{{msg}}
</body>
</html>
]]

return template, view