#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QSqlDatabase>
#include <QtSql>
#include <QtDebug>
#include <QSqlError>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

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
    engine.load(url);

    QSqlDatabase db = QSqlDatabase::addDatabase("QODBC");
    db.setConnectOptions();
    QString dsn = QString("DRIVER={SQL SERVER};Server=DESKTOP-8L07U6E;Database=WIKI;Trusted_Connection=True;");
    db.setDatabaseName(dsn);
    bool ok = db.open();

    if (ok) {
        qDebug() << "open";
        QSqlQuery query;
        if (query.exec("SELECT * FROM [WIKI].[dbo].[accounts]")) {
            while (query.next()) {
                qDebug() << query.value(1).toString();
            }
        }
    } else {
        qDebug() << "EERROR";
    }

    return app.exec();
}
