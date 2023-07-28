import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    id:root
    width: parent.width
    height: respHeight(70)

    Image {
        id: bottomBarBG
        anchors.fill: parent
        source: "qrc:/Assets/Background/BottomStatusBarBG.png"
    }

    Label {
        id: label11
        anchors.left: parent.left
        anchors.leftMargin: respWidth(100)
        anchors.verticalCenter: parent.verticalCenter
        color: "#1D657C"
        font.pixelSize: respAvg(24)
        font.family: "Inter"
        text: "Label 11"
    }

    Label {
        id: statusTxt
        anchors.left: label11.right
        anchors.leftMargin: respWidth(120)
        anchors.verticalCenter: parent.verticalCenter
        color: "#1D657C"
        font.pixelSize: respAvg(24)
        font.family: "Inter"
        text: "Status: " + ""
    }
}
