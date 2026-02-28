CXX = g++
SANITIZER = -fsanitize=address -fno-omit-frame-pointer
OPT = -O3

CXXFLAGS = -std=c++20 -pedantic-errors -g -Wall -Wextra \
           -Wconversion -Wsign-compare -Wnon-virtual-dtor \
           -Wold-style-cast -Woverloaded-virtual

SRCS = main.cpp student_code_7.cpp

all: main memtest

main: $(SRCS)
	$(CXX) $(OPT) $(CXXFLAGS) $(SRCS) -o $@

memtest: $(SRCS)
	$(CXX) $(CXXFLAGS) $(SANITIZER) $(SRCS) -o $@

main-debug: $(SRCS)
	$(CXX) $(CXXFLAGS) $(SRCS) -o $@

clean:
	rm -f main main-debug memtest

.PHONY: all clean