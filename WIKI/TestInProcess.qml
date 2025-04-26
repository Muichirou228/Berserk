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
    Rectangle {
        anchors.fill: parent
        color: "black" 
        StackView {
            id: stackViewForQuestions
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            width: 350
            height: 400
            anchors.topMargin: 10
            initialItem: QuestionPage {
                questionprop: TM.getCurrentQuestion().question;
                answers: TM.getCurrentQuestion().answers;
            }
        }
    }
}



