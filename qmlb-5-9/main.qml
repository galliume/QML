import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    id: root

    property color bgcolor: "#5A6263"
    property color buttonColor: "green"
    property color hoverColor: "limegreen"
    property color clickColor: "yellow"
    property var size: 100

    Rectangle {
        id: background
        color: root.buttonColor
        width: 100
        height: parent.height

        Column {
            anchors.fill: parent

            HoverButton {
                width: 100
                height: 50
                title.text: "Cat"
                color: root.buttonColor
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                area.onPressed: image.source = "qrc:/images/cat"
            }

            HoverButton {
                width: 100
                height: 50
                title.text: "Dog"
                color: root.buttonColor
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                area.onPressed: image.source = "qrc:/images/dog"
            }

            HoverButton {
                width: 100
                height: 50
                title.text: "Bunny"
                color: root.buttonColor
                hoverColor: root.hoverColor
                clickColor: root.clickColor
                area.onPressed: image.source = "qrc:/images/bunny"
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 100
        y: 0
        color: root.bgcolor
        width: parent.width - x
        height: parent.height

        Image {
            id: image
            anchors.margins: 25
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: ""
        }
    }
}
