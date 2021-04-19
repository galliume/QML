import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Column {
        id:column
        width: 200
        height: 400
        anchors.centerIn: parent

        Label {
            id: label
            text: qStr("Selected here")
            font.pointSize: 25
        }

        ListView {
            width: 200
            height: 200
            model: ["a", "b", "c"]
            delegate:CheckDelegate {
                text: modelData
                onCheckStateChanged: label.text = index + " - " + modelData + " = " + checked
            }
        }
    }
}
