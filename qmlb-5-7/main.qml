import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        width: 300
        height: 300
        color: "pink"
        anchors.centerIn: parent

        Rectangle {
            width: 50
            height: 50
            color: "blue"

            anchors.margins: 50
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 15
        }
    }

    MyShape {
        id: shareCentral
        anchors.centerIn: parent
        text: "Hello"

        Rectangle {
            width: 25
            height: 25
            color: "pink"
            //anchors.centerIn: parent
            //anchors.fill: parent
            anchors.right: parent.right
            anchors.bottom: parent.bottom
        }
    }

    MyShape {
        id: shapetop
        text: "top"
        color: "green"
        anchors.bottom: shareCentral.top
        anchors.left: shareCentral.left
    }

    MyShape {
        id: shapebottom
        text: "bottom"
        color: "green"
        anchors.top: shareCentral.bottom
        anchors.left: shareCentral.left
    }

    MyShape {
        id: shapeleft
        text: "left"
        color: "red"
        anchors.top: shareCentral.top
        anchors.right: shareCentral.left
    }

    MyShape {
        id: shaperight
        text: "right"
        color: "purple"
        anchors.top: shareCentral.top
        anchors.left: shareCentral.right
    }
}
