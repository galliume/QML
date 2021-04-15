import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Image {
        id: image
        source:  "https://avatars.githubusercontent.com/u/37900220?v=4"
        width: 100
        height: 100
        x:100
        y:100
        z:5
    }

    Rectangle{
        id:idrec
        color:"red"
        height: 200
        width: 200
        x:50
        y:50
        opacity: 0.5
        z:2
    }

    Rectangle{
        id:idrec2
        color:"blue"
        height: 200
        width: 200
        x:150
        y:150
        opacity: 0.5
        z:1
    }
}
