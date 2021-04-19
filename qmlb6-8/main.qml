import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Item {
        id: root
        rotation: 0
        anchors.centerIn: parent

        Rectangle {
            id: yellowRect
            width: 300
            height: 300
            color: "yellow"
            radius: width
            opacity: 0.5
            border.width: 2
            border.color: "black"
            anchors.centerIn: parent
            transform: Translate { y: -100 }
        }

        Rectangle {
            id: blueRect
            width: 300
            height: 300
            color: "blue"
            radius: width
            opacity: 0.5
            border.width: 2
            border.color: "black"
            anchors.centerIn: parent
            transform: Translate { y: 100; x: -100 }
        }


        Rectangle {
            id: redRect
            width: 300
            height: 300
            color: "red"
            radius: width
            opacity: 0.5
            border.width: 2
            border.color: "black"
            anchors.centerIn: parent
            transform: Translate { y: 100; x: 100 }
        }

        Rectangle {
            id: centerArea
            width: 50
            height: 50
            color: "white"
            radius: width
            opacity: 1
            border.width: 2
            border.color: "black"
            anchors.centerIn: parent

            Rectangle {
                id: centerCircle
                width: 5
                height: 5
                color: "grey"
                radius: width
                opacity: 1
                border.width: 2
                border.color: "black"
                anchors.centerIn: parent
            }
        }

        RotationAnimator {
            target: root
            from: 360
            to: 0
            duration: 5000
            direction: RotationAnimator.Counterclockwise
            loops: Animation.Infinite
            running: true
        }
    }

}
