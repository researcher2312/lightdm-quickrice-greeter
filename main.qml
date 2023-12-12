import QtQuick 2.15
import QtQuick.Controls 2.15

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
        echoMode: TextInput.Password
        onAccepted: greeter.setPassword(password.text)
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
        onPressed: greeter.authenticate()
    }
}
