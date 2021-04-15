import QtQuick 2.0

Rectangle {
    color: "gray"
    width: 40
    height: 40

    MouseArea {
        anchors.fill: parent
        drag.target: parent
        onClicked: parent.z++
    }
}
