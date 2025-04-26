#ifndef TESTMANAGER_H
#define TESTMANAGER_H
#include <QObject>
#include <QVariantList>
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
signals:
    void questionsChanged();
    void currentQuestionIndexChanged();
private:
    QVariantList m_questions;
    int m_currentQuestionIndex = 0;
};

#endif // TESTMANAGER_H
