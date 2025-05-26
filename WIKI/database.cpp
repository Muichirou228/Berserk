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

QString database::getUserName() {
    return userName;
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

void database::setUserName(QString US) {
    userName = US;
}

bool database::enterUser(const QString &login, const QString &password) {
    if (!m_db.isOpen()) {
        qDebug() << "DB is not open";
        return false;
    }

    // Для SQL Server используем COLLATE
    QSqlQuery check;
    check.prepare(
        "SELECT COUNT(*) FROM accounts "
        "WHERE login = :login COLLATE SQL_Latin1_General_CP1_CS_AS "
        "AND password = :password COLLATE SQL_Latin1_General_CP1_CS_AS"
        );
    check.bindValue(":login", login);
    check.bindValue(":password", password);

    if (!check.exec() || !check.next()) {
        qDebug() << "Check failed:" << check.lastError().text();
        return false;
    }

    if (check.value(0).toInt() == 0) {
        qDebug() << "Invalid credentials or user doesn't exist";
        return false;
    }

    // Получаем логин с учетом регистра
    QSqlQuery username;
    username.prepare(
        "SELECT login FROM accounts "
        "WHERE login = :login COLLATE SQL_Latin1_General_CP1_CS_AS"
        );
    username.bindValue(":login", login);

    if (!username.exec() || !username.next()) {
        qDebug() << "Username query failed:" << username.lastError().text();
        return false;
    }

    // Получаем прогресс тестов
    QSqlQuery testProcentage;
    testProcentage.prepare(
        "SELECT test1_progress, test2_progress, test3_progress "
        "FROM tests_info "
        "WHERE id = ("
        "    SELECT id FROM accounts "
        "    WHERE login = :login COLLATE SQL_Latin1_General_CP1_CS_AS"
        ")"
        );
    testProcentage.bindValue(":login", login);

    if (!testProcentage.exec() || !testProcentage.next()) {
        qDebug() << "Test percentage query failed:" << testProcentage.lastError().text();
        return false;
    }

    this->test1 = testProcentage.value(0).toString();
    this->test2 = testProcentage.value(1).toString();
    this->test3 = testProcentage.value(2).toString();
    this->userName = username.value(0).toString();
    return true;
}

bool database::updateTestProcentage(int testIndex, int value, const QString &login) {
    QSqlQuery updateTest;
    if (testIndex == 1) {
        updateTest.prepare("UPDATE tests_info SET tests_info.test1_progress = :value WHERE tests_info.id = (SELECT id FROM accounts WHERE login = :login)");
    } else if (testIndex == 2) {
        updateTest.prepare("UPDATE tests_info SET tests_info.test2_progress = :value WHERE tests_info.id = (SELECT id FROM accounts WHERE login = :login)");
    } else if (testIndex == 3) {
        updateTest.prepare("UPDATE tests_info SET tests_info.test3_progress = :value WHERE tests_info.id = (SELECT id FROM accounts WHERE login = :login)");
    }
    updateTest.bindValue(":login", login);
    updateTest.bindValue(":value", value);
    if (!updateTest.exec()) {
        qDebug() << "updateTest query failed:" << updateTest.lastError().text();
        return false;
    }

    if (updateTest.numRowsAffected() <= 0) {
        qDebug() << "No rows were affected, login might not exist";
        return false;
    }
    return true;
}

void database::setFirstTestProcent(const QString &value) {
    test1 = value;
}

void database::setSecondTestProcent(const QString &value) {
    test2 = value;
}

void database::setThirdTestProcent(const QString &value) {
    test3 = value;
}

QString database::getFirstTestProcent() {
    return test1;
}

QString database::getSecondTestProcent() {
    return test2;
}

QString database::getThirdTestProcent() {
    return test3;
}

