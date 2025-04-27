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
    property int index
    function createQuestionPage() {
        return Qt.createComponent("QuestionPage.qml").createObject(stackViewForQuestions, {
            questionprop: TM.getCurrentQuestion().question,
            answers: TM.getCurrentQuestion().answers,
            testIndex: TM.getTestIndex()
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
                stackViewForQuestions.replace(
                    Qt.resolvedUrl("QuestionPage.qml"),
                    {
                        questionprop: TM.getCurrentQuestion().question,
                        answers: TM.getCurrentQuestion().answers,
                        testIndex: TM.getTestIndex()
                    }
                );
            }
    }
}



