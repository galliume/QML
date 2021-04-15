import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 1024
    height: 800
    visible: true
    title: qsTr("Hello World")

    property var midX: width / 2
    property var midY: height / 2

//    MyShape {
//        color: "red"
//        x: midX - (width / 2)
//        y: midY - (height / 2) - 30
//    }

//    MyShape {
//        color: "green"
//        x: midX - (width / 2) - 55
//        y: midY - (height / 2) - 30
//    }

//    MyShape {
//        color: "blue"
//        x: midX - (width / 2) + 55
//        y: midY - (height / 2) + 30
//    }

    Column {
        anchors.centerIn: parent
        spacing: 2
        MyShape { color: "yellow" }
        MyShape { color: "pink" }
        MyShape { color: "brown" }
    }

    Row {
        spacing: 2
        MyShape { color: "yellow" }
        MyShape { color: "pink" }
        MyShape { color: "brown" }
    }

    Grid {
        x: 50
        y: 50
        spacing: 3
        rows: 5
        columns: 2
        MyShape { color: "yellow" }
        MyShape { color: "pink" }
        MyShape { color: "brown" }
        MyShape { color: "blue" }
        MyShape { color: "gray" }
        MyShape { color: "black" }
    }

    Rectangle {
        color: "pink"
        anchors.centerIn: parent
        width: 300
        height: 400
        clip: true

        Flow {
            flow: Flow.TopToBottom
            spacing: 5
            anchors.centerIn: parent
            MyShape { color: "yellow" }
            MyShape { color: "pink" }
            MyShape { color: "brown" }
            MyShape { color: "blue" }
            MyShape { color: "gray" }
            MyShape { color: "black" }
        }
    }

}
