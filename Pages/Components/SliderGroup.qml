import QtQuick 2.12
import QtQuick.Controls 2.12

Item {

    Label {
        id: label4
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.leftMargin: respAvg(15)
        color: "#FFFFFF"
        font.pixelSize: respAvg(20)
        font.family: "Inter"
        text: "Label 4"
    }

    Slider {
        id: pwmSlider
        width: parent.width
        anchors.top: label4.bottom
        anchors.topMargin: respAvg(5)
        anchors.horizontalCenter: parent.horizontalCenter

        onValueChanged: {
            backend.setPWM(pwmSlider.value)
        }
    }

    Label {
        id: label10
        anchors.top: pwmSlider.bottom
        anchors.right: pwmSlider.right
        anchors.topMargin: respAvg(0)
        anchors.rightMargin:  respAvg(60)
        color: "#FFFFFF"
        font.pixelSize: respAvg(20)
        font.family: "Inter"
        text: "Label 10"
    }
}
