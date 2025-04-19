import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Basic
import QtQuick.Window

Rectangle {
    color: "black"
    id: lessonsWindow
    property string lessonsUserName;
    Component.onCompleted: {
        lessonsUserName = database.getUserName();
    }
    Item {
        id: adminButton
        width: 40
        height: 40
        anchors {
            left: parent.left
            top: parent.top
            margins: 20
        }
        Rectangle {
            color: "gray"
            id: adminrect
            anchors.fill: parent
            radius: 5
            Image {
                source: "../admin.png"
                width: parent.width * 0.5
                height: parent.height * 0.5
                anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    homeWindow.hide()
                    var component = Qt.createComponent("../SignUpSignIn.qml")
                    var signInWindow = component.createObject(null)
                    signInWindow.closing.connect(function() {
                        homeWindow.show()
                        homeWindow.homeUserName = database.getUserName();
                        lessonsWindow.lessonsUserName = database.getUserName();
                    })
                    signInWindow.show();
                }
                onEntered: {
                    adminrect.color = "white";
                }
                onExited: {
                    adminrect.color = "gray";
                }
            }
        }
    }

    Text {
        id: userText
        font.family: "Verdana"
        anchors.left: adminButton.right
        anchors.verticalCenter: adminButton.verticalCenter
        anchors.margins: 20
        font.pixelSize: 18
        color: "white"
        text: lessonsUserName
        font.bold: true
    }

    Item {
        id: berserkWord
        width: parent.width * 0.5
        z: 1200
        height: 100
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        Image {
            anchors.fill: parent
            source: "../Berserk.jpg"
        }
    }

    Text {
        id: lessonText
        font.family: "Verdana"
        anchors.top: berserkWord.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 30
        font.pixelSize: 48
        color: "white"
        text: "Уроки"
        font.bold: true
    }

    Item {
        id: lessonList
        width: parent.width * 0.7
        height: 100
        anchors.top: lessonText.bottom
        anchors.topMargin: 30
        anchors.horizontalCenter: parent.horizontalCenter
        LessonRectangle {
            id: firstLesson
            lessonName: "1. Начало"
            onClicked: {
                stackViewForPages.push("../Lesson1.qml");
            }
        }
        LessonRectangle {
            id: secondLesson
            anchors.top: firstLesson.bottom
            lessonName: "2. Игровой процесс"
            onClicked: {
                stackViewForPages.push("../Lesson2.qml");
            }
        }
        LessonRectangle {
            id: thirdLesson
            anchors.top: secondLesson.bottom
            lessonName: "3. Модификаторы"
            onClicked: {
                stackViewForPages.push("../Lesson3.qml");
            }
        }
    }

    Item {
        id: menuButton
        width: 40
        height: 40

        anchors {
            right: parent.right
            top: parent.top
            margins: 20
        }
        Rectangle {
            color: "gray"
            id: menurect
            anchors.fill: parent
            radius: 5
            Image {
                source: "../menu.png"
                width: parent.width * 0.5
                height: parent.height * 0.5
                anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    if (menu.visible === false) {
                        menu.visible = true;
                    } else if (menu.visible === true) {
                        menu.visible = false;
                    }
                }
                onEntered: {
                    menurect.color = "white";
                }
                onExited: {
                    menurect.color = "gray";
                }
            }
        }
    }

    Rectangle {
        width: 100
        height: 220
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 200
        anchors.leftMargin: 25
        color: "transparent"
        Image {
            anchors.fill: parent
            source: "../guts.png"
        }
    }

    Rectangle {
        width: 100
        height: 220
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 200
        anchors.rightMargin: 25
        color: "transparent"
        Image {
            anchors.fill: parent
            source: "../guts.png"
        }
    }


    Item {
        id: menu
        visible: false
        anchors.fill: parent
        z: 100
        Canvas {
            anchors.fill: parent
            id: canvas
            onPaint: {
                const context = getContext("2d");
                context.fillStyle = "white";
                context.beginPath();
                context.moveTo(225, 700);
                context.lineTo(325, 625);
                context.lineTo(675, 625);
                context.lineTo(775, 700);
                context.closePath();
                context.fill();
                context.stroke();
            }
        }

        RowLayout {
            anchors.bottom: parent.bottom;
            anchors.horizontalCenter: parent.horizontalCenter;
            spacing: 50;
            Rectangle {
                Layout.preferredHeight: 75
                Layout.preferredWidth: 90
                color: "transparent"
                Image {
                    anchors.fill: parent;
                    source: "../home.png"
                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            if (menu.visible === false) {
                                menu.visible = true;
                            } else if (menu.visible === true) {
                                menu.visible = false;
                            }
                            stackViewForPages.pop();
                        }
                    }
                }
            }
            Rectangle {
                Layout.preferredHeight: 75
                Layout.preferredWidth: 90
                color: "transparent"
                Image{
                    anchors.fill: parent;
                    source: "../lessons.png"
                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                    }
                }
            }
            Rectangle {
                Layout.preferredHeight: 65
                Layout.preferredWidth: 90
                color: "transparent"
                Image {
                    anchors.fill: parent
                    source: "../rules1.png"
                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                        onClicked: {
                            //!!!
                        }
                    }
                }
            }
        }
    }
}
