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
        x:100
        y:100
        z:3

        Rectangle{
            color:"red"
            x:-25
            y:-25
            width: 50
            height: 50
            opacity: 0.5
            z:1
        }

        Rectangle{
            color:"blue"
            x:parent.width - width
            y:parent.height - height
            width: 50
            height: 50
            opacity: 0.5
            z:0
        }
    }
}
