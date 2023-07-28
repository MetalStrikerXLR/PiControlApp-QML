import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import QtQml 2.12
import "./Pages/HomePage"
import "./Pages/ListPage"
import "./Pages/Components"

Window {
    id: appRoot
    width: 1920
    height: 1080
    visible: false
    title: qsTr("Raspberry Pi Control Utility")

    property int baseWidth: 1920
    property int baseHeight: 1080
    property real baseAvg: Math.hypot(baseWidth, baseHeight)

    function respWidth(w) {
        return appRoot.width * (w/baseWidth);
    }

    function respHeight(h) {
        return appRoot.height * (h/baseHeight);
    }

    function respAvg(a) {
        var assetAvg = Math.hypot(a, a);
        return Math.round(Math.hypot(appRoot.height,appRoot.width) * (assetAvg / baseAvg));
    }

    SwipeView {
        id: swipeView
        interactive: false
        currentIndex: 0
        anchors.fill: parent

        HomePage {
            id: homePage
            visible: true
        }

        ListPage {
            id: listPage
            visible: true
        }

    }

    TopStatusBar {
        id: topBar
        anchors.top: parent.top
    }

    BottomStatusBar {
        id: bottomBar
        anchors.bottom: parent.bottom
    }

    onClosing: {
        console.log("Closing")
        backend.closeApp()
    }

    Connections {
        target: backend

        function onLoginSuccessState(boolValue){
            if(boolValue) {
                appRoot.visible = true
            }
        }
    }
}
