README.md:
	touch README.md
	echo "#PROJECT TITLE: Guessing Game project# - ## by: Luis Solano ##" > README.md
	echo "##Make file execution date: ##" >> README.md
	date +'%Y-%m-%d %T'>> README.md
	echo "##Number of lines in guessinggame.sh file: ##" >> README.md
	wc -l < guessinggame.sh >> README.md
