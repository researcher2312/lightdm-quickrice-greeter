#include <lightdm.h>

#include <QGuiApplication>
#include <QQuickView>
#include <QQmlContext>

#include "greeter.h"

int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);
    QQuickView view;

    GreeterProxy greeter;

    view.rootContext()->setContextProperty("greeter", &greeter);
    view.setSource(QUrl::fromLocalFile("main.qml"));
    view.show();

    return app.exec();
}
