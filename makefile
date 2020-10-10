README.md: guessinggame.sh
	touch README.md
	echo "Project: make a *guessing game* using Unix. Part of the Unix workbench course on Coursera." >> README.md
	date
	echo ""
	echo "This makefile command was run on..." >> README.md
	date >> README.md
	echo ""
	echo "the number of lines of code that the script guessinggame.sh has is..." >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean: 
	rm README.md
