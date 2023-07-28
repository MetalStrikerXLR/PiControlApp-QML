import QtQuick 2.12
import QtQuick.Controls 2.12

Image {
    id: background
    width: respAvg(550)
    height: respAvg(150)
    source: "qrc:/Assets/Background/InnerFrame2.png"

    Label {
        id: label5
        anchors.bottom: parent.top
        anchors.left: parent.left
        anchors.topMargin: respAvg(20)
        anchors.leftMargin: respAvg(25)
        color: "#FFFFFF"
        font.bold: true
        font.pixelSize: respAvg(32)
        font.family: "Inter"
        text: "Label 5"
    }

    Label {
        id: label6
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: respAvg(20)
        anchors.leftMargin: respAvg(45)
        color: "#FFFFFF"
        font.pixelSize: respAvg(20)
        font.family: "Inter"
        text: "Label 6"
    }

    Label {
        id: label7
        anchors.top: label6.bottom
        anchors.horizontalCenter: label6.horizontalCenter
        anchors.topMargin: respAvg(15)
        color: "#FFFFFF"
        font.pixelSize: respAvg(20)
        font.family: "Inter"
        text: "Label 7"
    }

    Label {
        id: label8
        anchors.top: label7.bottom
        anchors.horizontalCenter: label7.horizontalCenter
        anchors.topMargin: respAvg(15)
        color: "#FFFFFF"
        font.pixelSize: respAvg(20)
        font.family: "Inter"
        text: "Label 8"
    }

    Rectangle {
        id: txtBox3
        width: respAvg(450)
        height: respAvg(30)
        anchors.left: label7.right
        anchors.verticalCenter: label7.verticalCenter
        anchors.leftMargin: respAvg(50)
        radius: height / 2
        color: "white"
        border.width: 1
        border.color: "white"

        TextInput {
            anchors.fill: parent
            leftPadding: height / 2
            rightPadding: height / 2
            verticalAlignment: TextInput.AlignVCenter
            font.pixelSize: respAvg(16)
            text: ""
        }
    }

    Rectangle {
        id: txtArea1
        width: respAvg(450)
        height: respAvg(150)
        anchors.left: label8.right
        anchors.top: label8.top
        anchors.leftMargin: respAvg(50)
        radius: respAvg(20)
        color: "white"
        border.width: 1
        border.color: "white"

        ScrollView {
            id: view
            anchors.fill: parent
//            ScrollBar.vertical.policy: ScrollBar.AlwaysOn
            TextArea {
                font.pixelSize: respAvg(16)
                text: ""
            }
        }
    }

    PressableButton {
        id: gpio29
        width: respAvg(110) + respAvg(glowPixel * 2)
        height: respAvg(30) + respAvg(glowPixel * 2)
        anchors.top: txtArea1.bottom
        anchors.right: txtArea1.right
        anchors.topMargin: respAvg(10)
        anchors.rightMargin: respAvg(30)

        iconSrc: "qrc:/Assets/Buttons/BtnB_Unpressed.png"
        iconPressedState: "qrc:/Assets/Buttons/BtnB_Pressed.png"

        property bool isOn: false

        Label {
            anchors.horizontalCenter: gpio29.horizontalCenter
            anchors.verticalCenter: gpio29.verticalCenter
            anchors.verticalCenterOffset: -respAvg(3)
            color: gpio29.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(14)
            font.family: "Inter"
            text: "Button 29"
        }

        onPressed: {
            gpio29.isOn = true
        }

        onReleased: {
            gpio29.isOn = false
        }
    }
}
