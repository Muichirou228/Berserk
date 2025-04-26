import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Basic
import QtQuick.Window
import QtQuick.Controls.Universal 2.15
Page {
    property string questionprop: ""
    property var answers: []
    id: root
    anchors.fill: parent
    background: Rectangle { color: "black" }

    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 30
        spacing: 40
        width: parent.width * 0.9
        Text {
            id: questionText
            width: parent.width
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.WordWrap
            font {
                family: "Verdana"
                pixelSize: 26
                bold: true
            }
            color: "white"
            text: TM.getCurrentQuestionIndex() + ". " + questionprop
        }
        ButtonGroup {
            id: radioGroup
            buttons: answersColumn.children
        }

        Column {
            id: answersColumn
            spacing: 10
            width: parent.width

            Repeater {
                model: answers
                delegate: RadioButton {
                    id: radioDelegate
                    width: answersColumn.width
                    height: 40
                    topPadding: 0
                    bottomPadding: 0
                    indicator: Rectangle {
                        y: (radioDelegate.height - height) / 2
                        implicitWidth: 20
                        implicitHeight: 20
                        radius: 10
                        border.color: "white"
                        color: "transparent"

                        Rectangle {
                            anchors.centerIn: parent
                            width: 14
                            height: 14
                            radius: 7
                            color: parent.parent.checked ? "white" : "transparent"
                        }
                    }
                    contentItem: Text {
                        text: modelData
                        color: "white"
                        font.family: "Verdana"
                        font.pixelSize: 20
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: radioDelegate.indicator.width + radioDelegate.spacing
                        y: (radioDelegate.height - height) / 2
                    }

                    background: Rectangle {
                        color: "transparent"
                    }
                    onClicked: TM.checkIfCorrect(modelData);
                }
            }
        }
    }

    Item {
        id: backButton
        width: 60
        height: 60
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 60
        anchors.leftMargin: 20
        visible: TM.checkIfFirst()
        Rectangle {
            color: "gray"
            id: backrect
            anchors.fill: parent
            radius: 5
            Image {
                source: "../backtest.png"
                width: parent.width * 0.9
                height: parent.height * 0.9
                anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    TM.minusIndex();
                }
                onEntered: {
                    backrect.color = "white";
                }
                onExited: {
                    backrect.color = "gray";
                }
            }
        }
    }

    Item {
        id: nextButton
        width: 60
        height: 60
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 60
        anchors.rightMargin: 20
        visible: TM.checkIfLast()
        Rectangle {
            color: "gray"
            id: nextrect
            anchors.fill: parent
            radius: 5
            Image {
                source: "../nexttest.png"
                width: parent.width * 0.9
                height: parent.height * 0.9
                anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    TM.plusIndex();
                }
                onEntered: {
                    nextrect.color = "white";
                }
                onExited: {
                    nextrect.color = "gray";
                }
            }
        }
    }
}

