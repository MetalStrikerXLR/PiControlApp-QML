import QtQuick 2.12
import QtQuick.Controls 2.12

import "../Components"

Item {
    id: homePageRoot
    property string objectName: "HomePage"

    property int glowPixel: 4

    Image {
        id: background
        anchors.fill: parent
        source: "qrc:/Assets/Background/Background.png"
    }

    ItemGroupA {
        id: itemGroupA
        width: respAvg(480)
        height: respAvg(130)
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: respAvg(80)
        anchors.leftMargin: respAvg(30)
    }

    ButtonGridGPIO {
        id: gpioGroup
        anchors.top: itemGroupA.bottom
        anchors.horizontalCenter: itemGroupA.horizontalCenter
        anchors.topMargin: respAvg(20)
        anchors.horizontalCenterOffset: respAvg(0)
    }

    PressableButton {
        id: gpio21
        width: respAvg(160) + respAvg(glowPixel * 2)
        height: respAvg(40) + respAvg(glowPixel * 2)
        anchors.top: gpioGroup.bottom
        anchors.horizontalCenter: gpioGroup.horizontalCenter
        anchors.topMargin: respAvg(10)
        anchors.horizontalCenterOffset: -respAvg(90)

        iconSrc: "qrc:/Assets/Buttons/BtnB_Unpressed.png"
        iconPressedState: "qrc:/Assets/Buttons/BtnB_Pressed.png"

        property bool isOn: false

        Label {
            anchors.horizontalCenter: gpio21.horizontalCenter
            anchors.verticalCenter: gpio21.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio21.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(18)
            font.family: "Inter"
            text: "Button 21"
        }

        onPressed: {
            gpio21.isOn = true
        }

        onReleased: {
            gpio21.isOn = false
        }
    }

    PressableButton {
        id: gpio22
        width: respAvg(160) + respAvg(glowPixel * 2)
        height: respAvg(40) + respAvg(glowPixel * 2)
        anchors.top: gpioGroup.bottom
        anchors.horizontalCenter: gpioGroup.horizontalCenter
        anchors.topMargin: respAvg(10)
        anchors.horizontalCenterOffset: respAvg(90)

        iconSrc: "qrc:/Assets/Buttons/BtnB_Unpressed.png"
        iconPressedState: "qrc:/Assets/Buttons/BtnB_Pressed.png"

        property bool isOn: false

        Label {
            anchors.horizontalCenter: gpio22.horizontalCenter
            anchors.verticalCenter: gpio22.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio22.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(18)
            font.family: "Inter"
            text: "Button 22"
        }

        onPressed: {
            gpio22.isOn = true
        }

        onReleased: {
            gpio22.isOn = false
        }
    }

    SliderGroup {
        id: sliderGroup
        width: respAvg(500)
        height: respAvg(100)
        anchors.top: gpioGroup.bottom
        anchors.left: itemGroupA.left
        anchors.topMargin: respAvg(70)
    }

    ButtonGroup {
        width: respAvg(670)
        height: respAvg(400)
        anchors.top: itemGroupA.top
        anchors.right: parent.right

    }

    ItemGroupB {
        id: itemGroupB
        width: respAvg(630)
        height: respAvg(300)
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.topMargin: respAvg(310)
        anchors.rightMargin: respAvg(75)
    }

    PressableButton {
        id: gpio30
        width: respAvg(160) + respAvg(glowPixel * 2)
        height: respAvg(50) + respAvg(glowPixel * 2)
        anchors.top: itemGroupB.bottom
        anchors.right: itemGroupB.right
        anchors.topMargin: respAvg(10)
        anchors.rightMargin: respAvg(30)

        iconSrc: "qrc:/Assets/Buttons/BtnB_Unpressed.png"
        iconPressedState: "qrc:/Assets/Buttons/BtnB_Pressed.png"

        property bool isOn: false

        Label {
            anchors.horizontalCenter: gpio30.horizontalCenter
            anchors.verticalCenter: gpio30.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: gpio30.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(18)
            font.family: "Inter"
            text: "Button 30"
        }

        onPressed: {
            gpio30.isOn = true
        }

        onReleased: {
            gpio30.isOn = false
            swipeView.currentIndex = 1
        }
    }

    Connections {
        //        target: backendController

        //        function onResetComplete() {
        //            frontLockBtn.isOn = false
        //        }
    }
}
