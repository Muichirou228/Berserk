#ifndef DATABASE_H
#define DATABASE_H
#include <QObject>
#include <QSqlDatabase>
#include <QSqlQuery>
#include <QSqlError>

class database: public QObject
{
    Q_OBJECT
public:
    explicit database(QObject* parent = nullptr);

    Q_INVOKABLE bool registerUser (const QString &login, const QString &password);

private:
    QSqlDatabase m_db;
};

#endif // DATABASE_H
