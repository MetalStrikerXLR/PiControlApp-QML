import QtQuick 2.12
import QtQuick.Controls 2.12

Image {
    id: background
    width: respAvg(550)
    height: respAvg(150)
    source: "qrc:/Assets/Background/InnerFrame1.png"

    Label {
        id: label1
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: respAvg(20)
        anchors.leftMargin: respAvg(45)
        color: "#FFFFFF"
        font.pixelSize: respAvg(20)
        font.family: "Inter"
        text: "Label 1"
    }

    Label {
        id: label2
        anchors.top: label1.bottom
        anchors.horizontalCenter: label1.horizontalCenter
        anchors.topMargin: respAvg(15)
        color: "#FFFFFF"
        font.pixelSize: respAvg(20)
        font.family: "Inter"
        text: "Label 2"
    }

    Label {
        id: label3
        anchors.top: label2.bottom
        anchors.horizontalCenter: label1.horizontalCenter
        anchors.topMargin: respAvg(20)
        color: "#FFFFFF"
        font.pixelSize: respAvg(12)
        font.family: "Inter"
        text: "Label 3"
    }

    Rectangle {
        id: txtBox1
        width: respAvg(300)
        height: respAvg(30)
        anchors.left: label1.right
        anchors.verticalCenter: label1.verticalCenter
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
        id: txtBox2
        width: respAvg(300)
        height: respAvg(30)
        anchors.left: label2.right
        anchors.verticalCenter: label2.verticalCenter
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
}
