build   :
	g++ -c -std=c++0x -g -Wall -O1 -pipe -fPIC -Dnullptr=0 -I./ -o markup.o markup.cpp
	g++ -shared -o libcmarkup.so markup.o

clean   :
	rm libcmarkup.so markup.o

rebuild : clean build