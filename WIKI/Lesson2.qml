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
        text: "2. Игровой процесс"
    }

    ScrollView {
        id: scrollview
        ScrollBar.vertical.policy: ScrollBar.AlwaysOn
        width: 700
        height: 500
        contentHeight: 4000
        anchors.top: lessontext.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20


        Text {
            id: lesson11
            anchors.top: parent.top
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "2.1 Набор колоды"
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
            text: "Игроки определяют очерёдность хода броском кубика. Тот, у кого выпало большее значение, выбирает, будет ли он ходить первым («Первый игрок») или вторым («Второй игрок»).
В начале боя для формирования отряда Первый игрок  получает 24 золотых и 22 серебряных кристалла, а Второй — на 1 и 1 больше (25 и 23).
Ведите учёт кристаллов любым удобным для вас способом, например в уме или на листке бумаги.
Игроки перемешивают свои колоды и берут себе по 15 карт, которые называются раздачей. Если раздача не нравится игроку, он может  замешать все карты обратно в колоду и снова взять 15 карт. Каждая пересдача стоит 1 золото. Из карт раздачи игроки могут набирать существ для своего отряда. Чтобы взять карту в отряд, нужно оплатить её стоимость кристаллами. При наборе отряда игрок не может тратить суммарно больше 15 кристаллов на летающих существ.
Если у игрока в отряде присутствуют карты двух и более стихий (у нейтральных карт нет стихии), за каждую дополнительную стихию (не карту) игрок получает штраф в 1 золото."
            font.pixelSize: 20
            font.family: "Verdana"
            width: parent.width
        }


        Text {
            id: lesson21
            anchors.top: lesson11text.bottom
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "2.2 Расстановка карт"
            font.pixelSize: 32
            font.family: "Verdana"
            width: parent.width
        }
        Text {
            id: lesson21text
            anchors.top: lesson21.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "В начале парти игроки расставляют карты своего отряда на поле боя — условном пространстве из 6 рядов по 5 клеток в каждом. Ближние к вам три ряда — это ваша половина поля боя. Оставшиеся три ряда — половина поля боя противника. Отряды игроков располагаются друг напротив друга — каждый на своей половине поля боя. Карты выкладываются на поле боя скрытыми (рубашкой вверх).
Для первоначальной расстановки карт Первый игрок может использовать только центральную зону своей половины поля боя размером 3×3 клетки (см. рисунок ниже). Только после того, как все эти клетки окажутся занятыми, он сможет выкладывать карты на пустые клетки второго и третьего рядов; свободные клетки первого ряда занимаются в последнюю очередь."
            font.pixelSize: 20
            font.family: "Verdana"
            width: parent.width
        }
        Image {
            id: cardontableimage
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: lesson21text.bottom
            anchors.topMargin: 10
            source: "../cardsontable.png"
            width: 504
            height: 364
        }
        Text {
            id: lesson21textnew
            anchors.top: cardontableimage.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "Второй игрок при расстановке может использовать все пять клеток своего первого ряда и центральные клетки второго и третьего ряда. Если игрок заполнил все эти клетки (см. рисунок выше), он может использовать оставшиеся пустые клетки своего второго и третьего рядов. Для летающих существ предусмотрена дополнительная зона, но при расстановке карт они тоже выкладываются на отдельные клетки поля боя, а при вскрытии «взлетают» и перемещаются в дополнительную зону.
Другие игровые зоны располагайте в любом удобном месте рядом с полем боя.
Дополнительная зона: сюда переносятся летающие существа с поля боя после вскрытия карт (см. ниже).
Колода: состоит из тех карт, которые не пришли игроку во время раздачи, и тех, которые игрок не взял в отряд.
Кладбище: сюда помещаются погибшие в бою карты.
Зона изгнания: в эту особую зону попадают карты в результате изгнания."
            font.pixelSize: 20
            font.family: "Verdana"
            width: parent.width
        }


        Text {
            id: lesson31
            anchors.top: lesson21textnew.bottom
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "2.3 Начало игры"
            font.pixelSize: 32
            font.family: "Verdana"
            width: parent.width
        }
        Text {
            id: lesson31text
            anchors.top: lesson31.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "Во время своего хода игрок может двигаться и/или действовать своими картами. Делать это можно в любом порядке: сначала передвинуться некоторыми картами, и только потом начать действовать, или же двигаться и действовать картами по очереди. Вы не обязаны двигаться и действовать всеми картами.
Движение
Каждое открытое существо может двигаться, пока не потратило все свои единицы движения. Двигаться можно вперёд, назад, вправо или влево, но только
на свободную клетку. Двигаться по диагонали или меняться местами с другими картами нельзя. При движении на одну клетку тратится одна единица движения. Все единицы движения восстанавливаются в начале своего хода или при открытии карты. На рисунке показан один из основных вариантов движения в первый ход: существа из первого ряда расступаются в стороны, освобождая место для продвижения существ из задних рядов."
            font.pixelSize: 20
            font.family: "Verdana"
            width: parent.width
        }
        Image {
            id: cardmoves
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: lesson31text.bottom
            anchors.topMargin: 10
            source: "../movecard.png"
            width: 537
            height: 453
        }
        Text {
            id: lesson31textnew
            anchors.top: cardmoves.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "Действие
Каждое открытое существо может совершить одно из действий:
- атаковать простым ударом;
- выступить защитником от простого удара (только в ход противника);
- использовать отдельные особенности за жетоны;
- получить фишку (при наличии особенности с жетоном).
После любого совершённого действия карта лишается способности двигаться и закрывается (поворачивается горизонтально, см. рисунок ниже)."
            font.pixelSize: 20
            font.family: "Verdana"
            width: parent.width
        }
        Image {
            id: cardopen
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: lesson31textnew.bottom
            anchors.topMargin: 10
            source: "../opennotopencard.png"
            width: 566
            height: 242
        }

        Text {
            id: lesson41
            anchors.top: cardopen.bottom
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "2.4 Прицнип игры"
            font.pixelSize: 32
            font.family: "Verdana"
            width: parent.width
        }
        Text {
            id: lesson41text
            anchors.top: lesson41.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "Когда Первый игрок закончил двигаться и действовать всеми картами, какими хотел, он передаёт ход Второму игроку. Тот начинает свой ход со вскрытия всех карт своего третьего ряда.
После этого Второй игрок открывает все свои закрытые карты и может двигаться и действовать ими. Игра продолжается по тому же принципу, противники ходят по очереди, и в начале своего хода каждый из них открывает все свои закрытые карты.
УСЛОВИЯ ПОБЕДЫ
Побеждает игрок, который уничтожит всех существ противника."
            font.pixelSize: 20
            font.family: "Verdana"
            width: parent.width
        }

        Text {
            id: lesson51
            anchors.top: lesson41text.bottom
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "2.5 Важные дополнения"
            font.pixelSize: 32
            font.family: "Verdana"
            width: parent.width
        }
        Text {
            id: lesson51text
            anchors.top: lesson51.bottom
            anchors.topMargin: 5
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "1) Необязательно действовать всеми картами, можно оставить некоторые из них открытыми, чтобы они могли стать защитниками или использовали внезапные действия в ход противника. Всё зависит от стратегических решений каждого игрока.
2) Эффект одноимённых способностей (например, отравления или регенерации) не суммируется. Используется только бòльшая по величине особенность: если существо получило «отравление 2» и «отравление 1», используется только «отравление 2». Все остальные особенности суммируются, например «−2 от выстрелов» и «−1 от выстрелов» дадут в итоге «−3 от выстрелов».
3) Когда вы бросаете кубик, сначала к нему применяются ваши модификаторы, потом модификаторы противника.
4) Для расчёта величин сначала применяются модификаторы из отряда атакующего, затем — цели.
5) Модификаторы, сводящие бросок кубика и величину атаки к определённому значению, всегда применяются в последнюю очередь.
6) Если особенности игроков должны быть заявлены одновременно на какое-то игровое событие (при ударе, при гибели, в начале хода), то сначала заявляются особенности активного игрока, затем — его противника. Выполняются они в обратном порядке."
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
