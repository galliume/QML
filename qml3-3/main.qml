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
    }

    TextInput {
        id:myinput
        text: "hello world"
        anchors.centerIn: parent
        font.pixelSize: 25
    }

    Text {
        id:mytext
        text:myinput.text
        font.pixelSize: 25
    }
}
