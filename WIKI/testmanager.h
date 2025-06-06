#ifndef TESTMANAGER_H
#define TESTMANAGER_H
#include <QObject>
#include <QVariantList>
#include <QSqlDatabase>
#include <QSqlQuery>
#include <QSqlError>
class testmanager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QVariantList questions READ questions NOTIFY questionsChanged)
    Q_PROPERTY(int currentQuestionIndex READ currentQuestionIndex WRITE setCurrentQuestionIndex NOTIFY currentQuestionIndexChanged)
public:
    QVariantList questions() const;
    int currentQuestionIndex() const;
    void setCurrentQuestionIndex(int index);
    Q_INVOKABLE void setQuestionsAndAnswers(int index);
    Q_INVOKABLE QVariantMap getCurrentQuestion();
    Q_INVOKABLE QString getCurrentQuestionIndex();
    Q_INVOKABLE void saveAnswer(QString answer);
    Q_INVOKABLE QString getSavedAnswer();
    Q_INVOKABLE bool checkIfFirst();
    Q_INVOKABLE bool checkIfLast();
    Q_INVOKABLE void plusIndex();
    Q_INVOKABLE void minusIndex();
    Q_INVOKABLE void clearEverything();
    Q_INVOKABLE bool checkIfAllAnswersAreSelected();
    Q_INVOKABLE int correctVsIncorrect();
    Q_INVOKABLE int getTestIndex();
signals:
    void questionsChanged();
    void currentQuestionIndexChanged();
private:
    QVariantList m_questions;
    int m_currentQuestionIndex = 0;
    int correctAnswersCount = 0;
    QMap <int, QString> m_answers;
    int testIndex = 0;
};

#endif // TESTMANAGER_H
