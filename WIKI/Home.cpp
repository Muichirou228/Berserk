#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QSqlDatabase>
#include <QQmlContext>
#include <QtSql>
#include <QtDebug>
#include <QSqlError>
#include "database.h"
#include "testmanager.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    database db;
    db.setUserName("123");
    testmanager TM;
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
    engine.rootContext()->setContextProperty("TM", &TM);
    engine.load(url);

    return app.exec();
}
