define ['jquery.cookie'], ->
	logit: ->
		foo = $.cookie.get('foo')
		console.log "foo is #{foo}"
		foo = if foo then (foo + '+') else '-'
		$.cookie.set('foo', foo)
