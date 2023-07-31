import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    id: gpioButtonGrid
    width: respAvg(380)
    height: respAvg(310)

    property var activeGPIO: null

    ToggleableButton {
        id: gpio1
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: respAvg(0)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio1.horizontalCenter
            anchors.verticalCenter: gpio1.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio1.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "1"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio1
                backend.turnOnGPIO(0)
            }
            else {
                backend.turnOffGPIO(0)
            }
        }
    }

    ToggleableButton {
        id: gpio2
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio1.top
        anchors.left: gpio1.right
        anchors.topMargin: respAvg(0)
        anchors.leftMargin: respAvg(16)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio2.horizontalCenter
            anchors.verticalCenter: gpio2.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio2.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "2"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio2
                backend.turnOnGPIO(2)
            }
            else {
                backend.turnOffGPIO(2)
            }
        }
    }

    ToggleableButton {
        id: gpio3
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio2.top
        anchors.left: gpio2.right
        anchors.topMargin: respAvg(0)
        anchors.leftMargin: respAvg(16)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio3.horizontalCenter
            anchors.verticalCenter: gpio3.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio3.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "3"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio3
                backend.turnOnGPIO(3)
            }
            else {
                backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio4
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio3.top
        anchors.left: gpio3.right
        anchors.topMargin: respAvg(0)
        anchors.leftMargin: respAvg(16)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio4.horizontalCenter
            anchors.verticalCenter: gpio4.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio4.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "4"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio4
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio5
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio4.top
        anchors.left: gpio4.right
        anchors.topMargin: respAvg(0)
        anchors.leftMargin: respAvg(16)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio5.horizontalCenter
            anchors.verticalCenter: gpio5.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio5.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "5"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio5
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio6
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio1.bottom
        anchors.left: gpio1.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio6.horizontalCenter
            anchors.verticalCenter: gpio6.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio6.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "6"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio6
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio7
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio2.bottom
        anchors.left: gpio2.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio7.horizontalCenter
            anchors.verticalCenter: gpio7.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio7.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "7"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio7
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio8
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio3.bottom
        anchors.left: gpio3.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio8.horizontalCenter
            anchors.verticalCenter: gpio8.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio8.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "8"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio8
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio9
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio4.bottom
        anchors.left: gpio4.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio9.horizontalCenter
            anchors.verticalCenter: gpio9.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio9.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "9"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio9
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio10
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio5.bottom
        anchors.left: gpio5.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio10.horizontalCenter
            anchors.verticalCenter: gpio10.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio10.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "10"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio10
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio11
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio6.bottom
        anchors.left: gpio6.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio11.horizontalCenter
            anchors.verticalCenter: gpio11.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio11.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "11"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio11
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio12
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio7.bottom
        anchors.left: gpio7.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio12.horizontalCenter
            anchors.verticalCenter: gpio12.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio12.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "12"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio12
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio13
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio8.bottom
        anchors.left: gpio8.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio13.horizontalCenter
            anchors.verticalCenter: gpio13.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio13.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "13"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio13
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio14
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio9.bottom
        anchors.left: gpio9.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio14.horizontalCenter
            anchors.verticalCenter: gpio14.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio14.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "14"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio14
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio15
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio10.bottom
        anchors.left: gpio10.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio15.horizontalCenter
            anchors.verticalCenter: gpio15.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio15.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "15"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio15
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio16
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio11.bottom
        anchors.left: gpio11.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio16.horizontalCenter
            anchors.verticalCenter: gpio16.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio16.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "16"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio16
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio17
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio12.bottom
        anchors.left: gpio12.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio17.horizontalCenter
            anchors.verticalCenter: gpio17.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio17.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "17"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio17
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio18
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio13.bottom
        anchors.left: gpio13.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio18.horizontalCenter
            anchors.verticalCenter: gpio18.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio18.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "18"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio18
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio19
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio14.bottom
        anchors.left: gpio14.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio19.horizontalCenter
            anchors.verticalCenter: gpio19.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio19.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "19"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio19
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }

    ToggleableButton {
        id: gpio20
        width: respAvg(60) + respHeight(glowPixel)
        height: respAvg(60) + respHeight(glowPixel)
        anchors.top: gpio15.bottom
        anchors.left: gpio15.left
        anchors.topMargin: respAvg(16)
        anchors.leftMargin: respAvg(0)

        iconOffState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOffPressedState: "qrc:/Assets/Buttons/BtnA_Unpressed.png"
        iconOnState: "qrc:/Assets/Buttons/BtnA_Pressed.png"
        iconOnPressedState: "qrc:/Assets/Buttons/BtnA_Pressed.png"

        Label {
            anchors.horizontalCenter: gpio20.horizontalCenter
            anchors.verticalCenter: gpio20.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio20.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(22)
            font.family: "Inter"
            text: "20"
        }

        onClicked: {
            isOn = !isOn
            if (isOn == true) {
                if (activeGPIO != null) {
                    activeGPIO.isOn = !activeGPIO.isOn
                    backend.restAllGPIO()
                }
                activeGPIO = gpio20
                //backend.turnOnGPIO(3)
            }
            else {
                //backend.turnOffGPIO(3)
            }
        }
    }
}
