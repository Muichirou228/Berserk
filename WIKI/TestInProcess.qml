import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Basic

Window {
    id: testWindow
    minimumHeight: 500
    minimumWidth: 400
    maximumHeight: 500
    maximumWidth: 400
    visible: true
    color: "black"
    property string testName

    function createQuestionPage() {
        return Qt.createComponent("QuestionPage.qml").createObject(stackViewForQuestions, {
            questionprop: TM.getCurrentQuestion().question,
            answers: TM.getCurrentQuestion().answers
        });
    }

    Rectangle {
        anchors.fill: parent
        color: "black"
        StackView {
            id: stackViewForQuestions
            pushEnter: Transition {enabled : false}
            pushExit: Transition {enabled : false}
            popEnter: Transition {enabled : false}
            popExit: Transition {enabled : false}
            replaceEnter: Transition {enabled : false}
            replaceExit: Transition {enabled : false}
            anchors.fill: parent
            anchors.topMargin: 10
            initialItem: createQuestionPage()
        }
    }

    Connections {
        target: TM
        onCurrentQuestionIndexChanged: {
            stackViewForQuestions.replace(createQuestionPage());
        }
    }
}



