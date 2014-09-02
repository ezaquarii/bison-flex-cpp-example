all:
	flex -o scanner.cpp scanner.l
	bison -o parser.cpp parser.y
	g++ -g main.cpp scanner.cpp parser.cpp interpreter.cpp command.cpp -o a.out

clean:
	rm -rf scanner.cpp
	rm -rf parser.cpp parser.hpp location.hh position.hh stack.hh
	rm -rf a.out
