#ifndef TESTMANAGER_H
#define TESTMANAGER_H
#include <QObject>
#include <QVariantList>
class testmanager : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QVariantList questions READ questions) // NOTIFY questionsChanged)
public:
    QVariantList questions() const;
    Q_INVOKABLE void setQuestionsAndAnswers(int index);
private:
    QVariantList m_questions;
};

#endif // TESTMANAGER_H
