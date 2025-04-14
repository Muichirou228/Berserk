#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QSqlDatabase>
#include <QQmlContext>
#include <QtSql>
#include <QtDebug>
#include <QSqlError>
#include "database.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    database db;
    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/WIKI/Home.qml"));
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [url](QObject *obj, const QUrl &objUrl) {
            if (!obj && url == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection);
    engine.rootContext()->setContextProperty("database", &db);
    engine.load(url);

    return app.exec();
}
