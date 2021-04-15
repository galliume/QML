import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var middle: height / 2

    Image {
        id:local
        source:"images/rebelle"
        width: 300
        fillMode: Image.PreserveAspectFit

        x: 300
        y: middle - 100
    }

    Image {
        id:remote
        source: "https://avatars.githubusercontent.com/u/37900220?v=4"
        width: 20
        fillMode: Image.PreserveAspectFit

        x: 10
        y: middle - 100

        onProgressChanged: console.log(remote.progress)
        onStatusChanged: if (remote.status == Image.Ready) console.log("Remote image was loaded")
    }
}
