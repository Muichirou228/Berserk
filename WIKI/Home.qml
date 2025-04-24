import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Basic
import QtQuick.Window
Window {
    id: homeWindow
    minimumHeight: 700
    minimumWidth: 1000
    maximumHeight: 700
    maximumWidth: 1000
    visible: true
    color: "black"
    property string homeUserName;
    StackView {
        id:stackViewForPages
        anchors.fill: parent
        initialItem: homePage
    }
    Component {
        id: homePage
        Rectangle {
            color: "black"
            anchors.fill: parent
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
                                homeWindow.show();
                                homeWindow.homeUserName = database.getUserName();
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
                text: homeUserName
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

            Item {
                id: page
                z: 1
                width: 700;
                height: 530;
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                Rectangle {
                    anchors.fill: parent
                    color: "transparent"
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

                ScrollView {
                    width: 700
                    height: 580
                    contentHeight: 700
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    ScrollBar.vertical.policy: ScrollBar.AlwaysOn
                        Text {
                            anchors {
                                top: parent.top
                                left: parent.left
                                leftMargin: 25
                                topMargin: 50
                            }
                            font.underline: true
                            color: "white"
                            text: "18 января 2025г."
                            font.pixelSize: 26
                            font.family: "Monotype Corsiva"
                        }

                        Item {
                                id: pictures1
                                anchors.horizontalCenter: parent.horizontalCenter
                                anchors.top: parent.top
                                anchors.topMargin: 115
                                anchors.fill: parent

                                Image {
                                    source:  "../Dahor.png"
                                    width: 200
                                    height: 300
                                    anchors.left: parent.left
                                    anchors.leftMargin: 110
                                }

                                Image {
                                    source:  "../Tekur.png"
                                    width: 200
                                    height: 300
                                    anchors.right: parent.right
                                    anchors.rightMargin: 110
                                }
                        }
                        Item {
                            id: writingtext
                            anchors {
                                left: parent.left
                                top: parent.top
                                leftMargin: 25
                                topMargin: 450
                            }
                            width: parent.width - 50
                            Text {
                                anchors.fill: parent
                                wrapMode: Text.WordWrap
                                color: "white"
                                text: "        Представляем вам захватывающую новую коллекцию карточной игры Берсерк - Ложные Боги. Эта коллекция знаменует собой следующий этап развития игры, вводя новые модификации карт, которые значительно расширяют стратегические возможности.
        Коллекция Глубина и Поверхность впервые представляет модификации карт На Глубине и На Поверхности. Эти модификации влияют на характеристики карт особым образом в зависимости от определенных факторов."
                                font.pixelSize: 26
                                font.family: "Monotype Corsiva"
                            }
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
                                cursorShape: Qt.PointingHandCursor
                                anchors.fill: parent
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
                                    if (menu.visible === false) {
                                        menu.visible = true;
                                    } else if (menu.visible === true) {
                                        menu.visible = false;
                                    }
                                    stackViewForPages.push("../Lessons.qml");
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
                                cursorShape: Qt.PointingHandCursor
                                anchors.fill: parent
                                onClicked: {
                                    if (database.getUserName() !== "") {
                                        stackViewForPages.push("../Lessons.qml");
                                        stackViewForPages.push("../Tests.qml");
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
