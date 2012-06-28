
from webapp2_extras import jinja2, json
import logging
import webapp2


logger = logging.getLogger(__name__)

#
#
class CommonHandler(webapp2.RequestHandler):
	"""
	Some common utility methods
	"""
	@webapp2.cached_property
	def jinja2(self):
		return jinja2.get_jinja2(app=self.app)

	def render_template(self, filename, **template_args):
		self.response.content_type = "text/html"
		self.response.write(self.jinja2.render_template(filename, **template_args))
		
	def render_json(self, obj):
		self.response.content_type = "application/json"
		self.response.write(json.encode(obj))
			
#
#
class Root(CommonHandler):
	def get(self):
		self.render_template("index.html")


#
#
class Page1(CommonHandler):
	def get(self):
		self.render_template("page1.html")
		
