import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id:myimage
        source: "https://avatars.githubusercontent.com/u/37900220?v=4"
        anchors.centerIn: parent
        width: 150
        height: 100

        Rectangle {
            color:  "red"
            width: parent.width
            height: parent.height
            opacity: 0.5
        }
    }
}
