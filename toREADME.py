import os
import re

readme = open("README.md","w")
scheme = open("SchemeNote.scm","r")

for line in scheme.readlines():
	readme.write(line)

readme.close()
scheme.close()
