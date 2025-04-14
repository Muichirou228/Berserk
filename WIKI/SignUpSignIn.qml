import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Basic
Window {
id: regWindow
minimumHeight: 500
minimumWidth: 800
maximumHeight: 500
maximumWidth: 800
visible: true
color: "black"
    Rectangle {
        color: "black"
        anchors.fill: parent
    }

    Item {
        id: berserkWord
        width: parent.width * 0.5
        height: 100
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        Image {
            anchors.fill: parent
            source: "../Berserk.jpg"
        }
    }

    Item {
        id: backButton
        width: 50
        height: 50
        anchors {
            left: parent.left
            top: parent.top
            margins: 30
        }
        Rectangle {
            color: "gray"
            id: backrect
            anchors.fill: parent
            radius: 5
            Image {
                source: "../back.png"
                width: parent.width * 0.5
                height: parent.height * 0.5
                anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    regWindow.close();
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
        id: enterButton
        width: 50
        height: 50
        anchors {
            right: parent.right
            top: parent.top
            margins: 30
        }
        Rectangle {
            color: "gray"
            id: enterrect
            anchors.fill: parent
            radius: 5
            Image {
                source: "../enter.png"
                width: parent.width * 0.5
                height: parent.height * 0.5
                anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    regWindow.hide();
                    // Создаём окно входа динамически
                    var component = Qt.createComponent("../Enter.qml")
                    var enterWindow = component.createObject(null)
                    enterWindow.closing.connect(function() {
                        homeWindow.show();
                        homeWindow.homeUserName = database.getUserName();
                        lessonsWindow.lessonsUserName = database.getUserName();

                    })
                    enterWindow.show();
                }
                onEntered: {
                    enterrect.color = "white";
                }
                onExited: {
                    enterrect.color = "gray";
                }
            }
        }
    }

    Text {
        id: regtext
        anchors.top: berserkWord.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 35
        font.family: "Verdana"
        font.pixelSize: 32
        color: "white"
        text: "Регистрация"
        font.bold: true
    }

    TextField {
                id: inputLogin
                anchors.top: regtext.bottom
                anchors.left: parent.left
                anchors.topMargin: 35
                anchors.leftMargin: 200
                width: 400
                placeholderText: "Введите логин"
                font.family: "Verdana"
                font.pixelSize: 16
                color: "black"
                maximumLength: 15
    }

    TextField {
                id: inputPassword
                anchors.top: inputLogin.bottom
                anchors.left: parent.left
                anchors.topMargin: 35
                anchors.leftMargin: 200
                width: 400
                placeholderText: "Введите пароль"
                font.family: "Verdana"
                font.pixelSize: 16
                color: "black"
                maximumLength: 15
                echoMode: TextInput.Password
    }

    Item {
        id: regConfirm
        width: 75
        height: 75
        anchors.horizontalCenter: parent.horizontalCenter
        anchors {
            top: inputPassword.bottom
            topMargin: 30
        }
        Rectangle {
            color: "gray"
            id: regConfirmrect
            anchors.fill: parent
            radius: 5
            Image {
                source: "../tick.png"
                width: parent.width * 0.5
                height: parent.height * 0.5
                anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    var success = database.registerUser(inputLogin.text, inputPassword.text);
                    if (success) {
                        console.log("Registration successful!");
                    } else {
                        console.log("Registration failed!");
                    }
                }
                onEntered: {
                    regConfirmrect.color = "white";
                }
                onExited: {
                    regConfirmrect.color = "gray";
                }
            }
        }
    }
}

