
define ['jquery', 'module/test'], ($, test) ->
	console.log("index loaded")
	test.logit()
	$('#box').html("<p>It worked</p>")
