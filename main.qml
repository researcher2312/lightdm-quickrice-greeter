import QtQuick
import QtQuick.Controls

Rectangle {
    id: page
    width: 320; height: 480
    color: "lightgray"

    Text {
        id: helloText
        text: "Hello world!"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }
    TextField {
        id: userName
        y: 30
        color: "black"
        readOnly: true
        text: "researcher"
        anchors.horizontalCenter: page.horizontalCenter
        anchors.top: helloText.bottom
    }
    TextField {
        id: password
        y: 30
        color: "black"
        cursorVisible: true
        anchors.horizontalCenter: page.horizontalCenter
        anchors.top: userName.bottom
    }
}
