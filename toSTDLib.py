import os
import re
#print(os.getcwd())

stdFile = open('Stdlib.scm','w')
rule = re.compile('[^S].*[.]scm')

functionList = []

for filename in os.listdir():
	if rule.match(filename) :	
		stdFile.write('\n\n;--------'+filename+'--------\n')
		file = open(filename,'r')

		for line in file.readlines():
			stdFile.write(line)
		file.close()
		
stdFile.close()
