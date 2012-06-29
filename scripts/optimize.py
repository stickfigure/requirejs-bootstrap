#!/usr/bin/python

import os
import logging
logger = logging.getLogger(__name__)

rootdir = "js/app"

for path, dirnames, filenames in os.walk(rootdir):
	for filename in filenames:
		print os.path.join(path, filename)
		name = os.path.join(path, filename)
		out = os.path.join("out", name)
		cmd = "r.js -o name={0} out={1} baseUrl=js".format(name, out)
		print cmd
		os.system(cmd)
