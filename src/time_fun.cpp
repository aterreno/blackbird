#include <iostream>
#include "time_fun.h"

std::string printDateTime(time_t t) {
    struct tm timeinfo;
    char buff[20];
    strftime(buff, 20, "%m/%d/%Y %H:%M:%S", localtime_r(&t, &timeinfo));
    std::string str(buff);
    return str;
}

std::string printDateTime() {
    time_t now = time(NULL);
    struct tm timeinfo;
    char buff[20];
    strftime(buff, 20, "%m/%d/%Y %H:%M:%S", localtime_r(&now, &timeinfo));
    std::string str(buff);
    return str;
}

std::string printDateTimeCsv(time_t t) {
    struct tm timeinfo;
    char buff[20];
    strftime(buff, 20, "%Y-%m-%d_%H:%M:%S", localtime_r(&t, &timeinfo));
    std::string str(buff);
    return str;
}

std::string printDateTimeDb(time_t t) {
    struct tm timeinfo;
    char buff[20];
    strftime(buff, 20, "%Y-%m-%d %H:%M:%S", localtime_r(&t, &timeinfo));
    std::string str(buff);
    return str;
}

std::string printDateTimeFileName() {
    time_t now = time(NULL);
    struct tm timeinfo;
    char buff[20];
    strftime(buff, 20, "%Y%m%d_%H%M%S", localtime_r(&now, &timeinfo));
    std::string str(buff);
    return str;
}

