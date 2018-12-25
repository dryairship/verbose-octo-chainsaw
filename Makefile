verbose-octo-chainsaw: code.c code.java
	gcc -o verbose-octo-chainsaw code.c
	javac code.java
	echo "Main-Class: code" > Manifest.txt
	jar cfm code.jar Manifest.txt code.class
	rm -f code.class
	rm -f Manifest.txt
	
.PHONY: clean

clean:
	rm -f verbose-octo-chainsaw
	rm -f code.jar
