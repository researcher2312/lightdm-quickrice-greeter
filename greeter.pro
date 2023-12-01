QT_MAJOR_VERSION = 5
QT += quick core
CONFIG += c++17 link_pkgconfig

PKGCONFIG += liblightdm-qt5-3

DEFINES += QT_DEPRECATED_WARNINGS

HEADERS += inc/greeter.h

SOURCES += src/main.cpp src/greeter.cpp

RESOURCES += main.qml

INCLUDEPATH += /usr/include/lightdm-qt5-3/ ./inc

TARGET = bin/greeter

MOC_DIR = temp/
OBJECTS_DIR = temp/
RCC_DIR = temp/
