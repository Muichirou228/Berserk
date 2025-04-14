import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Basic
Window {
id: enterWindow
minimumHeight: 500
minimumWidth: 800
maximumHeight: 500
maximumWidth: 800
visible: true
color: "black"
    Page {
        anchors.fill: parent
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
                        enterWindow.close();
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



        Text {
            id: entertext
            anchors.top: berserkWord.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 35
            font.family: "Verdana"
            font.pixelSize: 32
            color: "white"
            text: "Вход в аккаунт"
            font.bold: true
        }

        TextField {
                    id: inputLogin
                    anchors.top: entertext.bottom
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
            id: enterConfirm
            width: 75
            height: 75
            anchors.horizontalCenter: parent.horizontalCenter
            anchors {
                top: inputPassword.bottom
                topMargin: 30
            }
            Rectangle {
                color: "gray"
                id: enterConfirmrect
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
                        var success = database.enterUser(inputLogin.text, inputPassword.text);
                        if (success) {
                            console.log("Successfuly entered");
                            enterWindow.close();
                        }
                         else {
                            console.log("Error");
                        }
                    }
                    onEntered: {
                        enterConfirmrect.color = "white";
                    }
                    onExited: {
                        enterConfirmrect.color = "gray";
                    }
                }
            }
        }
    }
}
