QT += quick core
CONFIG += c++17

DEFINES += QT_DEPRECATED_WARNINGS

SOURCES += src/main.cpp

HEADERS += 

RESOURCES += main.qml

INCLUDEPATH += /usr/include/lightdm-gobject-1 /usr/include/glib-2.0/ /usr/lib/glib-2.0/include

TARGET = bin/greeter
