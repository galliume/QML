import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: myitem
        anchors.centerIn: parent
        color: "red"
        width: 200
        height: 200
        visible: true
        border.color: "#124531"
        border.width: 5
        radius: width
        gradient: Gradient {
            GradientStop { position : 0.0; color: "red" }
            GradientStop { position : 1.0; color: "blue" }
        }
    }
}
