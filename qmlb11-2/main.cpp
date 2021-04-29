#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QQmlContext>
#include <QDebug>
#include "test.h"

int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;


    //add to the route context
    //Test test;
    //engine.rootContext()->setContextProperty("testing", &test);

    //register c++ class
    qmlRegisterType<Test>("com.company.test", 1, 0, "Test");

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
