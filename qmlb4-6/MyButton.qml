import QtQuick 2.0

Item {
    id: root
    width: 100
    height: 100
    property color color: "#C0C0C0"
    property color colorClicked: "#12D3A3"
    property string title: "Click me"


    Rectangle {
        id: myrec
        anchors.fill: parent
        color: root.color

        Text {
            id: display
            text: root.title
            anchors.centerIn: parent
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onPressed: parent.color = root.colorClicked
            onReleased: parent.color = root.color
        }
    }
}
