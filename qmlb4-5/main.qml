import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: area
        color:"blue"
        width: 100
        height: 100
        anchors.centerIn: parent

        MouseArea {
            id: mouse
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            hoverEnabled: true

            onClicked: {
                console.log("clicked " + mouse.button)
                if (mouse.button === Qt.LeftButton) parent.color = "green"
                if (mouse.button === Qt.RightButton) parent.color = "red"
            }

            onDoubleClicked: console.log("Double clicked " + mouse.button)

            onPositionChanged: console.log("Position X " + mouseX + " Y " + mouseY)

            onEntered: parent.color = "orange"
            onExited: parent.color = "blue"
        }
    }
}
