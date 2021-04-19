import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rectangle1
        x: 371
        y: 80
        width: rectangle.width
        height: 200
        color: "#f93131"

        MouseArea {
            id: mouseArea
            anchors.fill: parent

            Connections {
                target: mouseArea
                onClicked: console.log("clicked")
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 64
        y: 80
        width: 129
        height: 117
        color: "#231414"
        border.color: "#a21515"

        MouseArea {
            id: mouseArea1
            anchors.fill: parent

            Connections {
                target: mouseArea1
                onClicked: text1.text = rectangle2.title
            }
        }

    }

    Rectangle {
        id: rectangle2
        x: 101
        y: 260
        width: 200
        height: 200
        color: "#b19696"
        property string title: "Property"

        Text {
            id: text1
            text: qsTr("Text")
            anchors.fill: parent
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            transformOrigin: Item.Center
        }
    }
}
