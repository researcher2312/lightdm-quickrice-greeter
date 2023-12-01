import QtQuick
import QtQuick.Controls

Rectangle {
    id: page
    width: 320; height: 480
    color: "lightgray"

    Text {
        id: helloText
        text: "Login Manager"
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
        KeyNavigation.tab: loginButton
        anchors.horizontalCenter: page.horizontalCenter
        anchors.top: userName.bottom
    }
    Button {
        id: loginButton
        text: "Log In"
        anchors.horizontalCenter: page.horizontalCenter
        anchors.top: password.bottom
        KeyNavigation.backtab: password
    }
}
