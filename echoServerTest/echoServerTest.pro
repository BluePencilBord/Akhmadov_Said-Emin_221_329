QT += testlib core network
QT -= gui

CONFIG += qt console warn_on depend_includepath testcase
CONFIG -= app_bundle

TEMPLATE = app

SOURCES +=  tst_functions.cpp \
    ../echoServer/functions.cpp \
    ../echoServer/mytcpserver-ex.cpp

HEADERS += \
    ../echoServer/functions.h \
    ../echoServer/mytcpserver-ex.h
