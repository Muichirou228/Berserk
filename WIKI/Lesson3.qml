import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls.Basic
import QtQuick.Window
Rectangle {
color: "black"
    Item {
        id: backButton
        width: 40
        height: 40
        anchors {
            left: parent.left
            top: parent.top
            margins: 20
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
                    stackViewForPages.pop();
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
        id: lessontext
        anchors.top: berserkWord.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 30
        font.pixelSize: 56
        color: "white"
        font.bold: true
        text: "3. Модификаторы"
    }

    ScrollView {
        id: scrollview
        ScrollBar.vertical.policy: ScrollBar.AlwaysOn
        width: 700
        height: 500
        contentHeight: 1200
        anchors.top: lessontext.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        Text {
            id: lesson11
            anchors.top: parent.top
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "3.1 Опыт в атаке и защите"
            font.pixelSize: 32
            font.family: "Verdana"
            width: parent.width
        }
        Text {
            id: lesson11text
            anchors.top: lesson11.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "Опыт в атаке: карта получает +1 к броску кубика в сражении, если атакует (см. «+Х к броску кубика»).
Опыт в защите: карта получает +1 к броску кубика в сражении, если защищается (см. «+Х к броску кубика»).
Опыт в стрельбе: карта получает +1 к броску кубика, когда нападает выстрелом (см. «+Х к броску кубика»)."
            font.pixelSize: 20
            font.family: "Verdana"
            width: parent.width
        }

        Text {
            id: lesson12
            anchors.top: lesson11text.bottom
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            anchors.topMargin: 10
            color: "white"
            text: "3.2 Защита от магии, выстрелов и т.п"
            font.pixelSize: 32
            font.family: "Verdana"
            width: parent.width
        }
        Text {
            id: lesson12text
            anchors.top: lesson12.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: " Существует несколько защит в этой игре:
 — от выстрелов;
 — от заклинаний;
 — от метаний;
 — от разрядов;
 — от атак летающих: атаки летающих и все сопутствующие им особенности не наносят этой карте никаких эффектов (заклинания и воздействия не являются атаками);
 — от магии: включает в себя три не зависящие друг от друга особенности: «защиту от заклинаний», «защиту от магических ударов» и «защиту от разрядов»;
 — от отравления: существо не может получить отравление и не получает ран от отравления."
            font.pixelSize: 20
            font.family: "Verdana"
            width: parent.width
        }

        Text {
            id: lesson13
            anchors.top: lesson12text.bottom
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            anchors.topMargin: 10
            color: "white"
            text: "3.3 Щит"
            font.pixelSize: 32
            font.family: "Verdana"
            width: parent.width
        }
        Text {
            id: lesson13text
            anchors.top: lesson13.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "Броня Х: карта с бронёй Х не получает первые Х ран от немагических атак в течение каждого хода (и своего, и противника)."
            font.pixelSize: 20
            font.family: "Verdana"
            width: parent.width
        }

        Text {
            id: lesson14
            anchors.top: lesson13text.bottom
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            anchors.topMargin: 10
            color: "white"
            text: "3.4 Стойкость и Регенерация"
            font.pixelSize: 32
            font.family: "Verdana"
            width: parent.width
        }
        Text {
            id: lesson14text
            anchors.top: lesson14.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "Стойкость: карта со стойкостью не получает ран от воздействий противника и не может быть уничтожена воздействиями противника (например, добиванием); тем не менее она получает раны от своих воздействий (например, отравления).
Регенерация Х: В начале своего хода – это небестелесное существо излечивается на Х."
            font.pixelSize: 20
            font.family: "Verdana"
            width: parent.width
        }

        Text {
            id: lesson15
            anchors.top: lesson14text.bottom
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            anchors.topMargin: 10
            color: "white"
            text: "3.5 Баффы для первого или второго игрока"
            font.pixelSize: 32
            font.family: "Verdana"
            width: parent.width
        }
        Text {
            id: lesson15text
            anchors.top: lesson15.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "Если вы ходите первым/вторым: карта обладает особенностью, указанной после I, только если вы ходите первым. Карта обладает особенностью, указанной после II, только если вы ходите вторым."
            font.pixelSize: 20
            font.family: "Verdana"
            width: parent.width
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
}





