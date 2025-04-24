#include "testmanager.h"

QVariantList testmanager::questions() const {
    return m_questions;
}

void testmanager::setQuestionsAndAnswers(int index) {
    if (index == 1) {
        QVariantMap question1;
        question1["question"] = "Из какой страны пошла игра 'Берсерк'?";
        question1["answers"] = QStringList{"Россия", "Америка", "Япония", "Китай"};
        question1["correct"] = "Россия";
        m_questions.append(question1);
        QVariantMap question2;
        question2["question"] = "Сколько всего существует стихий в игре?";
        question2["answers"] = QStringList{"3", "4", "5", "6"};
        question2["correct"] = "5";
        m_questions.append(question2);
        QVariantMap question3;
        question3["question"] = "Сколько всего существует редкостей карт в игре?";
        question3["answers"] = QStringList{"3", "4", "5", "6"};
        question3["correct"] = "6";
        m_questions.append(question3);
    }
}
