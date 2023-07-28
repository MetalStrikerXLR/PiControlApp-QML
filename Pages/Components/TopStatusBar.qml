import QtQuick 2.12
import QtQuick.Controls 2.12

Item {
    id:root
    width: parent.width
    height: respHeight(80)

    function getCurrentDate() {
        const months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
        var currentDateTime = new Date()

        let date = currentDateTime.getDate()
        let month = months[currentDateTime.getMonth()]
        let year = currentDateTime.getFullYear()

        var currentDate = date + " " + month + " " + year
        return currentDate;
    }

    Image {
        id: topBarBG
        anchors.fill: parent
        source: "qrc:/Assets/Background/TopStatusBarBG.png"
    }

    Label {
        id: appTitle
        anchors.left: parent.left
        anchors.leftMargin: respWidth(100)
        anchors.verticalCenter: parent.verticalCenter
        color: "#1D657C"
        font.bold: true
        font.pixelSize: respAvg(26)
        font.family: "Inter"
        text: appRoot.title
    }

    Label {
        id: loggedInUser
        anchors.left: parent.left
        anchors.leftMargin: respWidth(1260)
        anchors.verticalCenter: parent.verticalCenter
        color: "#1D657C"
        font.pixelSize: respAvg(24)
        font.family: "Inter"
        text: "Logged In: " + backend.loggedInUser
    }

    Label {
        id: dateTxt
        anchors.left: loggedInUser.right
        anchors.leftMargin: respWidth(70)
        anchors.verticalCenter: parent.verticalCenter
        color: "#1D657C"
        font.pixelSize: respAvg(24)
        font.family: "Inter"
        text: getCurrentDate()
    }
}
