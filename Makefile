# Blackbird Bitcoin Arbitrage Makefile

override INC_DIR += -I ./src `mysql_config --cflags` -I /usr/local/Cellar/jansson/2.7/include -I /usr/local/Cellar/openssl/1.0.2h_1/include
override LIB_DIR += -L /usr/local/Cellar/openssl/1.0.2h_1/lib -L /usr/local/Cellar/jansson/2.7/lib `mysql_config --libs`
CXXFLAGS := -g -Wall -pedantic -std=c++11 -O2 $(INC_DIR)
LDFLAGS  := -g $(LIB_DIR)
LDLIBS   := -lcrypto -ljansson -lcurl -lmysqlclient

EXEC = blackbird
SOURCES = $(wildcard src/*.cpp) $(wildcard src/*/*.cpp)
OBJECTS = $(SOURCES:.cpp=.o)

ifndef VERBOSE
  CC := @$(CC)
  CXX := @$(CXX)
endif

all: $(EXEC)

$(EXEC): $(OBJECTS)
	@echo Linking $@:
	$(CXX) $(LDFLAGS) $^ -o $@ $(LDLIBS)

%.o: %.cpp
	@echo Compiling $@:
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -rf core $(OBJECTS)
