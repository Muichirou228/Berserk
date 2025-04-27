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

    Q_INVOKABLE bool enterUser (const QString &login, const QString &password);

    Q_INVOKABLE QString getUserName ();

    Q_INVOKABLE QString getFirstTestProcent();

    Q_INVOKABLE QString getSecondTestProcent();

    Q_INVOKABLE QString getThirdTestProcent();

    Q_INVOKABLE bool updateTestProcentage(int testIndex, int value, const QString &login);

    void setUserName(QString US);

    Q_INVOKABLE void setFirstTestProcent(const QString &value);
    Q_INVOKABLE void setSecondTestProcent(const QString &value);
    Q_INVOKABLE void setThirdTestProcent(const QString &value);

private:
    QSqlDatabase m_db;
    QString userName;
    QString test1;
    QString test2;
    QString test3;
};

#endif // DATABASE_H
