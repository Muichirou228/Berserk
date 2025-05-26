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
    m_answers.clear();
    testIndex = 0;
}

void testmanager::plusIndex() {
    if(m_currentQuestionIndex < m_questions.size() - 1) {
        m_currentQuestionIndex++;
        emit currentQuestionIndexChanged();
    }
}

bool testmanager::checkIfAllAnswersAreSelected() {
    if (m_answers.size() == m_questions.size()) {
        return true;
    } else return false;
}

void testmanager::minusIndex() {
    if(m_currentQuestionIndex > 0) {
        m_currentQuestionIndex--;
        emit currentQuestionIndexChanged();
    }
}

bool testmanager::checkIfFirst() {
    if (m_currentQuestionIndex == 0) {
        return false;
    } else {
        return true;
    }
}

int testmanager::correctVsIncorrect() {
    int score = 0;
    for (int i = 0; i < m_questions.size(); ++i) {
        const QVariantMap& question = m_questions.at(i).toMap();
        QString correctAnswer = question["correct"].toString();
        QString userAnswer = m_answers.value(i, "");

        if (correctAnswer == userAnswer) {
            score++;
        }
    }
    qDebug() << "score = " << (score/m_questions.size()) * 100;
    return (score*100)/m_questions.size();
}

bool testmanager::checkIfLast() {
    if (m_currentQuestionIndex == m_questions.size() - 1) {
        return false;
    } else {
        return true;
    }
}

void testmanager::saveAnswer(QString answer) {
    m_answers[m_currentQuestionIndex] = answer;
}

QString testmanager::getSavedAnswer() {
    return m_answers.value(m_currentQuestionIndex, "");
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
        testIndex = 1;
    } else if (index == 2) {
        QVariantMap question1;
        question1["question"] = "ПЕННИСПЕНИС";
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
        testIndex = 2;
    } else if (index == 3) {
        QVariantMap question1;
        question1["question"] = "ЖОПАЖОПА?";
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
        testIndex = 3;
    }
}

int testmanager::getTestIndex() {
    return testIndex;
}

QVariantMap testmanager::getCurrentQuestion() {
    if(m_currentQuestionIndex >= 0 && m_currentQuestionIndex < m_questions.size()) {
        return m_questions[m_currentQuestionIndex].toMap();
    } return QVariantMap();
}
