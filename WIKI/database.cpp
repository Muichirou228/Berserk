#include "database.h"

database::database(QObject *parent) : QObject(parent) {
    m_db = QSqlDatabase::addDatabase("QODBC");
    m_db.setConnectOptions();
    QString dsn = QString("DRIVER={SQL SERVER};Server=DESKTOP-8L07U6E;Database=WIKI;Trusted_Connection=True;");
    m_db.setDatabaseName(dsn);
    bool ok = m_db.open();

    if (ok) {
        qDebug() << "SUCCESS";
    } else {
        qDebug() << "NO SUCCESS";
    }
}


bool database::registerUser(const QString &login, const QString &password) {
    if (!m_db.isOpen()) {
        qDebug() << "DB is not open";
        return false;
    }

    QSqlQuery checkQuery;
    checkQuery.prepare("SELECT COUNT(*) FROM accounts WHERE login = :login");
    checkQuery.bindValue(":login", login);
    if (!checkQuery.exec() || !checkQuery.next()) {
        qDebug() << "Check failed:" << checkQuery.lastError().text();
        return false;
    }

    if (checkQuery.value(0).toInt() > 0) {
        qDebug() << "User already exists";
        return false;
    }
    QSqlQuery registerQuery;
    registerQuery.prepare("INSERT INTO accounts (id, login, password) "
                          "SELECT ISNULL(MAX(id), 0) + 1, :login, :password FROM accounts");
    registerQuery.bindValue(":login", login);
    registerQuery.bindValue(":password", password);

    if (!registerQuery.exec()) {
        qDebug() << "Registration failed: " << registerQuery.lastError().text();
        return false;
    }

    return true;
}

bool database::enterUser (const QString &login, const QString &password) {
    if (!m_db.isOpen()){
        qDebug() << "DB is not open";
        return false;
    }
    QSqlQuery check;
    check.prepare("SELECT COUNT(*) FROM accounts WHERE login = :login AND password = :password");
    check.bindValue(":login", login);
    check.bindValue(":password", password);
    if (!check.exec() || !check.next()) {
        qDebug() << "Check failed:" << check.lastError().text();
        return false;
    }
    if (check.value(0).toInt() == 0) {
        qDebug() << "This user does not exist";
        return false;
    } else {
        return true;
    }
}

