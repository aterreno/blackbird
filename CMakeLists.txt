cmake_minimum_required(VERSION 3.6)
project(blackbird)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
    src/exchange/bitfinex.cpp
    src/exchange/bitfinex.h
    src/exchange/bitstamp.cpp
    src/exchange/bitstamp.h
    src/exchange/btce.cpp
    src/exchange/btce.h
    src/exchange/gemini.cpp
    src/exchange/gemini.h
    src/exchange/itbit.cpp
    src/exchange/itbit.h
    src/exchange/kraken.cpp
    src/exchange/kraken.h
    src/exchange/okcoin.cpp
    src/exchange/okcoin.h
    src/exchange/poloniex.cpp
    src/exchange/poloniex.h
    src/utils/base64.cpp
    src/utils/base64.h
    src/utils/send_email.cpp
    src/utils/send_email.h
    src/bitcoin.cpp
    src/bitcoin.h
    src/check_entry_exit.cpp
    src/check_entry_exit.h
    src/curl_fun.cpp
    src/curl_fun.h
    src/db_fun.cpp
    src/db_fun.h
    src/main.cpp
    src/parameters.cpp
    src/parameters.h
    src/result.cpp
    src/result.h
    src/time_fun.cpp
    src/time_fun.h)

add_executable(blackbird ${SOURCE_FILES})