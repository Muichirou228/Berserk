import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Basic
import QtQuick.Window

Rectangle {
    color: "black"
    id: testsWindow
    property string testsUserName;
    Component.onCompleted: {
        testsUserName = database.getUserName();
        firstTest.procentDoneProp = database.getFirstTestProcent();
        secondTest.procentDoneProp = database.getSecondTestProcent();
        thirdTest.procentDoneProp = database.getThirdTestProcent();
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
                        stackViewForPages.pop(null);
                        homeWindow.homeUserName = database.getUserName();
                        homeWindow.show();
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
        text: testsUserName
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
        id: testText
        font.family: "Verdana"
        anchors.top: berserkWord.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 30
        font.pixelSize: 48
        color: "white"
        text: "Тесты"
        font.bold: true
    }

    Item {
        id: testsList
        anchors.top: testText.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 30
        width: parent.width * 0.7
        TestRectangle {
            id: firstTest
            questionsCountProp: "10"
            testNameProp: "Тест <Начало>"
            onClicked: {
                homeWindow.hide()
                TM.setQuestionsAndAnswers(1);
                var component = Qt.createComponent("../TestInProcess.qml")
                var TestInProcessWindow = component.createObject(null, {testName : "Начало"})
                TestInProcessWindow.closing.connect(function() {
                    stackViewForPages.pop();
                    stackViewForPages.pop();
                    homeWindow.show();
                })
                TestInProcessWindow.show();
            }
        }

        TestRectangle {
            id: secondTest
            anchors.top: firstTest.bottom
            questionsCountProp: "10"
            testNameProp: "Тест <Игровой процесс>"
        }

        TestRectangle {
            id: thirdTest
            anchors.top: secondTest.bottom
            questionsCountProp: "5"
            testNameProp: "Тест <Модификаторы>"
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
                        onClicked: {
                            stackViewForPages.pop();
                        }
                    }
                }
            }
            Rectangle {
                Layout.preferredHeight: 65
                Layout.preferredWidth: 90
                color: "transparent"
                Image {
                    anchors.fill: parent
                    source: "../test.png"
                    MouseArea {
                        anchors.fill: parent
                        cursorShape: Qt.PointingHandCursor
                    }
                }
            }
        }
    }
}
