import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        id : element
        text: qsTr("hello wolrd")
        anchors.centerIn: parent
        font.bold: true
        font.pixelSize: 25
    }
}
