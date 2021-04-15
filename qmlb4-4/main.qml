import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Text {
        id:mytext
        text: qsTr("<html><a href='www.google.fr'>google</a><b><font color='green'><i>test</i></font></b></html>")
        anchors.centerIn: parent
        font.pointSize: 25
        //font.bold: true
        font.italic: false //overwritten by <i>
        color:  "red"
        linkColor: "blue"

        onLinkHovered: {
            console.log("Hover: " + link)
            if (link) {
                mytext.font.bold = true
            } else {
                mytext.fond.bold = false
            }
        }
    }
}
