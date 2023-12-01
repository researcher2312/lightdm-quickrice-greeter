QT += quick core
CONFIG += c++17

DEFINES += QT_DEPRECATED_WARNINGS

HEADERS += inc/greeter.h

SOURCES += src/main.cpp

RESOURCES += main.qml

INCLUDEPATH += /usr/include/lightdm-gobject-1 /usr/include/glib-2.0/ /usr/lib/glib-2.0/include ./inc

TARGET = bin/greeter
