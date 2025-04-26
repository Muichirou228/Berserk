#include "testmanager.h"

QVariantList testmanager::questions() const {
    return m_questions;
}

void testmanager::setCurrentQuestionIndex(int index) {
    m_currentQuestionIndex = index;
    emit currentQuestionIndexChanged();
}

int testmanager::currentQuestionIndex() const {
    return m_currentQuestionIndex;
}

QString testmanager::getCurrentQuestionIndex() {
    QString str = QString::number(m_currentQuestionIndex + 1);
    return str;
}

void testmanager::clearEverything() {
    m_questions.clear();
    m_currentQuestionIndex = 0;
    correctAnswersCount = 0;
}

void testmanager::plusIndex() {
    if(m_currentQuestionIndex < m_questions.size() - 1) {
        m_currentQuestionIndex++;
        emit currentQuestionIndexChanged();
    }
}

void testmanager::minusIndex() {
    if(m_currentQuestionIndex > 0) {
        m_currentQuestionIndex--;
        emit currentQuestionIndexChanged(); // Важно испускать сигнал
    }
}

bool testmanager::checkIfFirst() {
    if (m_currentQuestionIndex == 0) {
        return false;
    } else {
        return true;
    }
}

bool testmanager::checkIfLast() {
    if (m_currentQuestionIndex == m_questions.size() - 1) {
        return false;
    } else {
        return true;
    }
}

void testmanager::checkIfCorrect(QString answer) {
    QVariantMap question = getCurrentQuestion();
    if (question.value("correct", "").toString() == answer) {
        correctAnswersCount++;
    }
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

QVariantMap testmanager::getCurrentQuestion() {
    if(m_currentQuestionIndex >= 0 && m_currentQuestionIndex < m_questions.size()) {
        return m_questions[m_currentQuestionIndex].toMap();
    } return QVariantMap();
}
