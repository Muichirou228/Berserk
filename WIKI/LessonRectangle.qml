import QtQuick

Rectangle {
    id: root
    property string lessonName;
    property string previousLesson;
    color: "gray"
    width: parent.width
    radius: 10
    height: 70
    anchors.topMargin: 30
    Text {
        color: "white"
        text: root.lessonName
        font.family: "Verdana"
        font.pixelSize: 32
        anchors.leftMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.margins: 5
    }
    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        cursorShape: Qt.PointingHandCursor
        onEntered: {
            root.color = "#708090";
        }
        onExited: {
            root.color = "gray";
        }
    }
}
