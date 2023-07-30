import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "../Components"

Window {
    id: splashScreen
    width: 380
    height: 300
    visible: true
    color: "#00000000"

    flags: Qt.SplashScreen

    QtObject{
        id: internal
    }

    Rectangle {
        id: bg
        x: 78
        y: 131
        width: 360
        height: 300
        color: "#43B6E3"
        radius: 15
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        z: 1

        Label {
            id: label
            x: 100
            y: 50
            opacity: 1
            color: "#ffffff"
            text: qsTr("Welcome!")
            font.family: "Segoe UI"
            font.pointSize: 24
            anchors.horizontalCenter: parent.horizontalCenter
        }

        CustomButton {
            id: btnClose
            x: 20
            width: 30
            height: 30
            opacity: 1
            text: "X"
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 15
            anchors.rightMargin: 15
            colorPressed: "#27273a"
            font.family: "Segoe UI"
            colorMouseOver: "#535359"
            colorDefault: "#737491"
            font.pointSize: 10
            onClicked: splashScreen.close()
        }

        CustomTextField {
            id: textUsername
            x: 30
            y: 365
            opacity: 1
            anchors.bottom: textPassword.top
            anchors.bottomMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            placeholderText: "Username"
        }

        CustomTextField {
            id: textPassword
            x: 30
            y: 418
            opacity: 1
            anchors.bottom: btnLogin.top
            anchors.bottomMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            placeholderText: "Password"
            echoMode: TextInput.Password
        }

        CustomButton {
            id: btnLogin
            x: 30
            y: 469
            width: 300
            height: 40
            opacity: 1
            text: "Sign in"
            anchors.bottom: parent.bottom
            font.pointSize: 10
            font.family: "Segoe UI"
            colorPressed: "#27273a"
            colorMouseOver: "#535359"
            colorDefault: "#147AAD"
            anchors.bottomMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked:{
                backend.checkLogin(textUsername.text, textPassword.text)
            }
        }

        Text {
            id: incorrectLoginText
            x: 82
            y: 260
            opacity: 1
            color: "#FF0000"
            text: qsTr("Username/Password is Incorrect")
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.bold: false
            visible: false
        }
    }

    DropShadow{
        anchors.fill: bg
        source: bg
        verticalOffset: 0
        horizontalOffset: 0
        radius: 10
        color: "#40000000"
        z: 0
    }

    Connections {
        target: backend

        function onLoginSuccessState(boolValue){
            if(boolValue) {
                splashScreen.close()
                visible = false
            }
            else {
                incorrectLoginText.visible = true
                textUsername.text = ""
                textPassword.text = ""
            }
        }
    }
}
