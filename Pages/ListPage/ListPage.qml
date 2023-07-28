import QtQuick 2.12
import QtQuick.Controls 1.4

import "../Components"

Item {
    id: listPageRoot
    property string objectName: "ListPage"

    Image {
        id: background
        anchors.fill: parent
        source: "qrc:/Assets/Background/Background.png"
    }

    Rectangle {
        id: tableBG
        color: "#147AAD"
        radius: respAvg(10)
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.topMargin: respAvg(70)
        anchors.bottomMargin: respAvg(120)
        anchors.leftMargin: respAvg(30)
        anchors.rightMargin: respAvg(30)

        TableView {
            id: tableView
            anchors.centerIn: parent
            width: parent.width - respAvg(30)
            height: parent.height - respAvg(30)
            model: listModel

            headerDelegate: Rectangle {
                height: 30
                width: textItem.implicitWidth
                color: "#CAD7DA"

                Text {
                    id: textItem
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pointSize: 10
                    anchors.leftMargin: 12
                    text: styleData.value
                    elide: Text.ElideRight
                    color: "black"
                    font.bold: true
                    renderType: Text.NativeRendering
                }

                Rectangle {
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 1
                    anchors.topMargin: 1
                    width: 1
                    color: "#babad5"
                }
            }

            itemDelegate: Rectangle{
                border.width: 1
                border.color: "#babad5"
                height: 50;
                color: "transparent"
                Text {
                    anchors.centerIn : parent
                    anchors.verticalCenter: parent.verticalCenter
                    x : 10
                    anchors.leftMargin: 5
                    text: styleData.value
                    font.pixelSize: 13
                }
            }


            rowDelegate: Rectangle {
                id: rowDel;
                height: respAvg(30)
                SystemPalette {
                    id: myPalette;
                    colorGroup: SystemPalette.Active
                }
                color: {
                    var baseColor = styleData.alternate ? myPalette.alternateBase : myPalette.base
                    return styleData.selected ? myPalette.highlight : baseColor
                }
            }

            TableViewColumn {
                role: "label1"
                title: "Label 1"
                width: (tableView.width - label4Column.width) / 3
            }

            TableViewColumn {
                role: "label2"
                title: "Label 2"
                width: (tableView.width - label4Column.width) / 3
            }

            TableViewColumn {
                role: "label3"
                title: "Label 3"
                width: (tableView.width - label4Column.width) / 3
            }

            TableViewColumn {
                id: label4Column
                role: "label4"
                title: "Label 4"
                width: tableView.width * 0.6
            }
        }
    }

    ListModel {
        id: listModel
        //ListElement { label1: "Data 1-1"; label2: "Data 1-2"; label3: "Data 1-3"; label4: "Data 1-4" }
    }

    PressableButton {
        id: backBtn
        width: respAvg(160)
        height: respAvg(50)
        anchors.top: tableBG.bottom
        anchors.left: tableBG.left
        anchors.topMargin: respAvg(10)
        anchors.horizontalCenterOffset: respAvg(90)

        iconSrc: "qrc:/Assets/Buttons/BtnB_Unpressed.png"
        iconPressedState: "qrc:/Assets/Buttons/BtnB_Pressed.png"

        property bool isOn: false

        Label {
            anchors.horizontalCenter: backBtn.horizontalCenter
            anchors.verticalCenter: backBtn.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: backBtn.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(18)
            font.family: "Inter"
            text: "Back"
        }

        onPressed: {
            backBtn.isOn = true
        }

        onReleased: {
            backBtn.isOn = false
            swipeView.currentIndex = 0
        }
    }

    PressableButton {
        id: printBtn
        width: respAvg(160)
        height: respAvg(50)
        anchors.top: tableBG.bottom
        anchors.right: tableBG.right
        anchors.topMargin: respAvg(10)
        anchors.horizontalCenterOffset: -respAvg(90)

        iconSrc: "qrc:/Assets/Buttons/BtnB_Unpressed.png"
        iconPressedState: "qrc:/Assets/Buttons/BtnB_Pressed.png"

        property bool isOn: false

        Label {
            anchors.horizontalCenter: printBtn.horizontalCenter
            anchors.verticalCenter: printBtn.verticalCenter
            anchors.verticalCenterOffset: -respAvg(5)
            color: printBtn.isOn ? "#FFFFFF" : "#1D657C"
            font.bold: true
            font.pixelSize: respAvg(18)
            font.family: "Inter"
            text: "Print"
        }

        onPressed: {
            printBtn.isOn = true
        }

        onReleased: {
            printBtn.isOn = false
            backend.executePrint()
        }
    }

    Connections{
        target: backend

        function onAddToTable(data) {
            listModel.append({"label1": data[0], "label2": data[1], "label3": data[2], "label4": data[3]})
        }
    }

    Component.onCompleted: backend.readPrintData()
}
