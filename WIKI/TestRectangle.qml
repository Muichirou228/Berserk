import QtQuick

Rectangle {
    id: root
    property string procentDoneProp;
    property string testNameProp;
    property string questionsCountProp;
    signal clicked()
    color: "gray"
    width: parent.width
    radius: 10
    height: 120
    anchors.topMargin: 30
    Text {
        id: testName
        color: "white"
        text: root.testNameProp
        font.family: "Verdana"
        font.pixelSize: 32
        anchors.top: parent.top
        anchors.topMargin: 25
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.margins: 5
    }

    Text {
        id: questionsCount
        color: "white"
        text: "Количество вопросов: " + root.questionsCountProp
        font.family: "Verdana"
        font.pixelSize: 20
        anchors.top: testName.bottom
        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.margins: 5
    }

    Text {
        id: procentDone
        color: "white"
        text: root.procentDoneProp + "%"
        font.family: "Verdana"
        font.pixelSize: 40
        anchors.rightMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.margins: 5
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onClicked: {
            root.clicked();
        }
        onEntered: {
            root.color = "#708090";
        }
        onExited: {
            root.color = "gray";
        }
    }
}
