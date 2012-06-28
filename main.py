#!/usr/bin/env python
#
import webapp2
import logging

import handler

logging.getLogger().setLevel(logging.DEBUG)

app = webapp2.WSGIApplication([
							('/', handler.Root),
							('/page1', handler.Page1)
							], debug=True)
