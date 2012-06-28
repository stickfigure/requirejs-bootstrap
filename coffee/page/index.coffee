require.config
	baseUrl: 'js/app'
	paths:
		jquery: 'https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min'
		jqueryui: 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.19/jquery-ui.min'
		facebook: 'https://connect.facebook.net/en_US/all'
		browserid: 'https://browserid.org/include'
	priority: ['jquery', 'jqueryui', 'facebook', 'browserid']


define(['require', 'jquery', 'jqueryui', 'module/test'], (require, $) ->
	debugger
	console.log("index loaded")
)

