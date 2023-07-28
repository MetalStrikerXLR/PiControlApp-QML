import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    PressableButton {
        id: gpio24
        width: respAvg(160) + respAvg(glowPixel * 2)
        height: respAvg(40) + respAvg(glowPixel * 2)
        anchors.top: parent.top
        anchors.left: parent.left

        iconSrc: "qrc:/Assets/Buttons/BtnB_Unpressed.png"
        iconPressedState: "qrc:/Assets/Buttons/BtnB_Pressed.png"

        property bool isOn: false

        Label {
            anchors.horizontalCenter: gpio24.horizontalCenter
            anchors.verticalCenter: gpio24.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio24.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(18)
            font.family: "Inter"
            text: "Button 24"
        }

        onPressed: {
            gpio24.isOn = true
        }

        onReleased: {
            gpio24.isOn = false
        }
    }

    PressableButton {
        id: gpio25
        width: respAvg(160) + respAvg(glowPixel * 2)
        height: respAvg(40) + respAvg(glowPixel * 2)
        anchors.top: gpio24.top
        anchors.left: gpio24.right
        anchors.leftMargin: respAvg(220)

        iconSrc: "qrc:/Assets/Buttons/BtnB_Unpressed.png"
        iconPressedState: "qrc:/Assets/Buttons/BtnB_Pressed.png"

        property bool isOn: false

        Label {
            anchors.horizontalCenter: gpio25.horizontalCenter
            anchors.verticalCenter: gpio25.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio25.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(18)
            font.family: "Inter"
            text: "Button 25"
        }

        onPressed: {
            gpio25.isOn = true
        }

        onReleased: {
            gpio25.isOn = false
        }
    }

    PressableButton {
        id: gpio26
        width: respAvg(160) + respAvg(glowPixel * 2)
        height: respAvg(40) + respAvg(glowPixel * 2)
        anchors.top: gpio28.bottom
        anchors.left: gpio24.left

        iconSrc: "qrc:/Assets/Buttons/BtnB_Unpressed.png"
        iconPressedState: "qrc:/Assets/Buttons/BtnB_Pressed.png"

        property bool isOn: false

        Label {
            anchors.horizontalCenter: gpio26.horizontalCenter
            anchors.verticalCenter: gpio26.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio26.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(18)
            font.family: "Inter"
            text: "Button 26"
        }

        onPressed: {
            gpio26.isOn = true
        }

        onReleased: {
            gpio26.isOn = false
        }
    }

    PressableButton {
        id: gpio27
        width: respAvg(160) + respAvg(glowPixel * 2)
        height: respAvg(40) + respAvg(glowPixel * 2)
        anchors.top: gpio28.bottom
        anchors.left: gpio25.left

        iconSrc: "qrc:/Assets/Buttons/BtnB_Unpressed.png"
        iconPressedState: "qrc:/Assets/Buttons/BtnB_Pressed.png"

        property bool isOn: false

        Label {
            anchors.horizontalCenter: gpio27.horizontalCenter
            anchors.verticalCenter: gpio27.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio27.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(18)
            font.family: "Inter"
            text: "Button 27"
        }

        onPressed: {
            gpio27.isOn = true
        }

        onReleased: {
            gpio27.isOn = false
        }
    }

    PressableButton {
        id: gpio28
        width: respAvg(160) + respAvg(glowPixel * 2)
        height: respAvg(40) + respAvg(glowPixel * 2)
        anchors.top: gpio24.bottom
        anchors.left: gpio24.left
        anchors.topMargin: respAvg(0)
        anchors.leftMargin: respAvg(200)

        iconSrc: "qrc:/Assets/Buttons/BtnB_Unpressed.png"
        iconPressedState: "qrc:/Assets/Buttons/BtnB_Pressed.png"

        property bool isOn: false

        Label {
            anchors.horizontalCenter: gpio28.horizontalCenter
            anchors.verticalCenter: gpio28.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio28.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(18)
            font.family: "Inter"
            text: "Button 28"
        }

        onPressed: {
            gpio28.isOn = true
        }

        onReleased: {
            gpio28.isOn = false
        }
    }
}
