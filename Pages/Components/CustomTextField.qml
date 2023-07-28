import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

TextField {
    id: textField

    // Custom Properties
    property color colorDefault: "#ffffff"
    property color colorOnFocus: "#e6e8f2"
    property color colorMouseOver: "#e6e8f2"
    property color borderColor: "#33334c"
    property int borderWidth: 3

    QtObject{
        id: internal

        property var dynamicColor: if(textField.focus){
                                        textField.focus ? colorOnFocus : colorDefault
                                   }else{
                                       textField.hovered ? colorMouseOver : colorDefault
                                   }
    }

    implicitWidth: 300
    implicitHeight: 40
    placeholderText: qsTr("Type something")
    color: "#000000"
    background: Rectangle {
        color: internal.dynamicColor
        radius: 10
        border.color: borderColor
        border.width: borderWidth
    }

    selectByMouse: true
    selectedTextColor: "#000000"
    selectionColor: "#cad6e3"
    placeholderTextColor: "#000000"
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:40;width:640}
}
##^##*/
