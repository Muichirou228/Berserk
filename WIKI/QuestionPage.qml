import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Basic
import QtQuick.Window
import QtQuick.Controls.Universal 2.15
Page {
    property string questionprop: ""
    property var answers: []
    signal nextChosen
    signal prevChosen
    signal answerSelected(string answerCorrectOrNotCorrect)

    id: root
    anchors.fill: parent
    background: Rectangle { color: "black" }

    Column {
        anchors.centerIn: parent
        spacing: 20
        width: parent.width * 0.9

        // Вопрос
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
            text: questionprop
        }

        // Варианты ответов
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
                    height: 50

                    // Выравнивание содержимого по вертикали
                    topPadding: 0
                    bottomPadding: 0

                    // Горизонтальное расположение индикатора и текста
                    indicator: Rectangle {
                        y: (radioDelegate.height - height) / 2  // Выравнивание по вертикали
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

                    // Текст ответа
                    contentItem: Text {
                        text: modelData
                        color: "white"
                        //font: radioDelegate.font
                        font.family: "Verdana"
                        font.pixelSize: 20
                        verticalAlignment: Text.AlignVCenter
                        leftPadding: radioDelegate.indicator.width + radioDelegate.spacing
                        // Выравнивание по базовой линии
                        y: (radioDelegate.height - height) / 2
                    }

                    background: Rectangle {
                        color: "transparent"
                    }

                    onClicked: answerSelected(index)
                }
            }
        }
    }
}
