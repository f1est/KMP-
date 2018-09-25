CFLAGS 		=--std=c++11
CXX 		=g++
LIBS 		=-lstdc++

SOURCES     =find_substr.cpp

FINDER	    =finder

all:  $(FINDER) 

finder:
$(FINDER):
	$(CXX) $(CFLAGS) -o $@ $(SOURCES) 


.PHONY: clean

clean: 
	rm -f *.o
	rm finder
