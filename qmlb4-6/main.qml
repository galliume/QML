import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property var middle: (height / 2) - 50
    Test {
        id: button1
        x: 100
        y: middle
        color: "red"
        colorClicked: "orange"
        title: "button 1"
    }

    Test {
        id: button2
        x: (parent.width / 2) - (width / 2)
        y: middle
        color: "blue"
        colorClicked: "orange"
        title: "button 2"
    }

    Test {
        id: button3
        x: parent.width - 200
        y: middle
        color: "green"
        colorClicked: "orange"
        title: "button 3 <br> testing"
    }

    Test {
        id: button4
        x: (parent.width / 2) - (width / 2)
        y: middle + 120
        width: 500
        height: 35
        color: "green"
        colorClicked: "orange"
        title: "<b>Super</b> <i>long</i> <u>button</u>"
    }
}
