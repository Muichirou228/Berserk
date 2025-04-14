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
        text: "1. Начало"
    }

    ScrollView {
        id: scrollview
        ScrollBar.vertical.policy: ScrollBar.AlwaysOn
        width: 700
        height: 500
        contentHeight: 2550
        anchors.top: lessontext.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 20
        Text {
            id: lesson11
            anchors.top: parent.top
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            color: "white"
            text: "1.1 Что за игра такая - Берсерк?"
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
            text: "«Берсерк» — российская коллекционная карточная игра, «Мир Хобби» с 2003 года. В октябре 2015 года классическая версия была заморожена, однако 6 ноября 2015 года вышло ответвление «Берсерк. Герои». В 2023 году классическая версия была перезапущена с новым дизайном карт[1]. Авторы Берсерка — Иван Попов и Максим Истомин.
Название игры созвучно скандинавскому слову берсеркер, обозначающему бесстрашного воина, готового ринуться в бой в любой момент, забыв про страх и боль. Берсерк — одна из первых российских коллекционных карточных игр"
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
            text: "1.2 Стихии"
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
            text: "Все игровые карты разделены на 5 стихий. Кроме того, существуют нейтральные карты, которые могут находиться в любом отряде. Каждая стихия обладает своими уникальными особенностями. Перечислим все шесть групп: Лес, Горы, Степи, Болота, Тьма, Нейтралы.
Стихия карт важна при компоновке отряда, во главе которого ставится карта-герой. Герой может набирать в отряд только карты своей стихии, либо нейтральные.
Некоторые существа различных стихий, находясь одновременно на поле боя (например, когда с вашей стороны в бою участвуют два или три отряда разных стихий), способны усиливать друг друга. Кроме того, стихии имеют непримиримых врагов – существ другой стихии, которых они атакуют с дополнительным уроном."
            font.pixelSize: 20
            font.family: "Verdana"
            width: parent.width
        }
        Image {
            id: cardtypeimage
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: lesson12text.bottom
            anchors.topMargin: 10
            source: "../cardstypes.png"
            width: 330
            height: 225
        }

        Text {
            id: lesson13
            anchors.top: cardtypeimage.bottom
            anchors.left: parent.left
            wrapMode: Text.WordWrap
            anchors.topMargin: 10
            color: "white"
            text: "1.3 Редкости"
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
            text: "Каждая карта в игре имеет определенную редкость, определяющую вероятность ее получения. Чем выше редкость карты, тем лучшими боевыми параметрами и особенностями она обладает, но и тем сложнее ее получить. Редкость показывается цветом кристалла в левом верхнем углу карты.
Всего существует шесть редкостей карт: Многочисленные, Частые, Редкие, Суперредкие, Ультраредкие, Промо-карты, Легендарные."
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
            text: "1.4 Золото И Серебро"
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
            text: "Каждая карта игре имеет свою ценность. Ценность различается стоимостью и типом. Тип ценности бывает двух видов - серебро и золото. Золото выше серебра по приоритету, но в начале игры количество серебра значительно превышает количество золота. Данная механика позволяет тщательно раздумывать над составлением колоды, а также над экономикой своего серебра и золота, так как при небольшом остатке золота после набора карт, золото можно конвертировать в серебро, тем самым сэкономив ресурсы."
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
            text: "1.5 Показатели"
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
            text: "1. Стоимость карты, которая показывает, сколько кристаллов определённого вида требуется, чтобы взять её в отряд. Если над верхней гранью кристалла изображена корона — в отряде не может быть более одной карты с таким названием.
2. Название карты, под которым в специальном поле может быть указан её класс.
3. Стихия, к которой принадлежит карта.
4. Некоторые особенности для удобства представлены в виде символов
5. Количество жизней
существа.
6. Количество единиц движения существа или символ полёта.
7. Слабый–средний–сильный простой удар существа. Цифрами указана величина удара.
8. Текстовое поле, где перечислены особенности карты.
9. Каждый выпуск «Берсерка» обозначен уникальным символом. Цвет символа указывает на редкость карты."
            font.pixelSize: 20
            font.family: "Verdana"
            width: parent.width
        }
        Image {
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: lesson15text.bottom
            anchors.topMargin: 10
            source: "../cardexample.png"
            width: 351
            height: 621
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





