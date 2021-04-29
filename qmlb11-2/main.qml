import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.3

//import custom c++ class cf main
import com.company.test 1.0

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    //use custom c++ class
    Test {
        id: test
        onStatus: lblStatus.text = data;
    }

    Connections {
        target: test
        onNotice: {
            console.log("Slot called from C++")
            lblStatus.text = data
        }
    }

    Column {
        id: column
        width: 228
        height: 159
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 25

        Label {
            id: lblTitle
            text: "Connecting to Signals"
            font.pointSize: 10
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Label {
            id: lblStatus
            text: "Status"
            font.pointSize: 25
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Row {
            id: row
            width: 200
            height: 400
            spacing: 25

            Button {
                id: btnStart
                text: qsTr("Start")
                onClicked: test.start()
            }

            Button {
                id: btnStop
                text: qsTr("Stop")
                onClicked: test.stop()
            }

            Button {
                id: btnClickMe
                text: qsTr("Clik me")
                onClicked: {
                    var num = Math.round(Math.random() * 100)
                    test.work(num)
                }
            }
        }
    }
}
