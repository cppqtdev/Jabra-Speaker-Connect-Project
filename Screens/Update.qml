import QtQuick 2.15
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3
import "../Models"
import "../Components"
Page {
    Rectangle{
        anchors.fill: parent
        color: homeColor
    }
    ColumnLayout{
        anchors.fill: parent
        anchors.rightMargin: 10
        spacing: 0
        Rectangle{
            Layout.fillWidth: true
            Layout.preferredHeight: 150
            color: homeColor
            Label {
                id: label
                font.pixelSize: Qt.application.font.pixelSize * 3
                text:qsTr("Update")
                y:20
                anchors{
                    topMargin: 50
                    left: parent.left
                }
            }
            CButton{
                id:checkUpdate
                y:25
                color:"transparent"
                borderColor:"#228BE6"
                pressColor:"transparent"
                hoverColor:"transparent"
                borderRadius: 18
                width: 200
                height: 30
                innerText.color:"#228BE6"
                buttonText:qsTr("Check For Update")
                anchors{
                    right: parent.right
                    rightMargin: 20
                }
                onClicked: {

                }
            }
            Rectangle{
                id:line
                width: parent.width*0.99
                height: 2
                color: "#444b51"
                anchors{
                    top:label.bottom
                    topMargin: 10
                }

            }

            Label {
                id:deviceLabel
                font.pixelSize: Qt.application.font.pixelSize*1.2
                text:qsTr("Devices")
                anchors{
                    top: line.bottom
                    topMargin: 20
                }
            }
            Label {
                font.pixelSize: Qt.application.font.pixelSize*0.9
                text:qsTr("All devices are up to date ")
                color: "light grey"
                font.family: "Times New Roman"
                anchors{
                    top: deviceLabel.bottom
                    topMargin: 5
                }
            }
        }

        Rectangle{
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: homeColor
            ColumnLayout{
                anchors{
                    top: parent.top
                    topMargin: 5
                    horizontalCenter: parent.horizontalCenter
                }
                spacing: 5

                Label {
                    font.pixelSize: Qt.application.font.pixelSize*1.3
                    text:qsTr("Jabra Speaker")
                }
                Label {
                    font.pixelSize: Qt.application.font.pixelSize*0.9
                    text:infoButton2.updateAvailable ? qsTr("Current : 2.10.0") : qsTr("Update available : 2.11.0")
                    color:infoButton2.updateAvailable ?  "light grey" :"#FAB005"
                    font.family: "Times New Roman"
                }
                IconButton{
                    id:infoButton2
                    property bool updateAvailable: updateButton2.updateAvailable
                    color: "transparent"
                    borderColor:"transparent"
                    pressColor:"transparent"
                    hoverColor:"transparent"
                    borderRadius: 18
                    width: 100
                    height: 20
                    innerText.color: "#FAB005"
                    fontSize: 10
                    iconWidth: 15
                    iconHeight: 15
                    sourceIcon:"qrc:/Assets/Icons/icons8-info-50.png"
                    buttonText: qsTr("Release notes")
                    Layout.alignment: Qt.AlignLeft
                }
            }

            IconButton{
                id:updateButton2
                property bool updateAvailable: true
                color:updateAvailable ? "transparent" : "#444b51"
                borderColor:updateAvailable ? "transparent" :"#444b51"
                pressColor:updateAvailable ? "transparent" : "#444b51"
                hoverColor:updateAvailable ? "transparent" : "#444b51"
                borderRadius: 18
                width: 100
                height: 30
                innerText.color:updateAvailable ?  "White" :"#FAB005"
                fontSize: 10
                iconWidth: 20
                iconHeight: 20
                sourceIcon:updateAvailable ? "qrc:/Assets/Icons/icons8-ok-30.png" : "qrc:/Assets/Icons/icons8-info-50.png"
                buttonText:updateAvailable ? qsTr("Up to date") : qsTr("Update")
                anchors{
                    right: parent.right
                    rightMargin: 20
                }
            }

        }
        Rectangle{
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: homeColor
            ColumnLayout{
                anchors{
                    top: parent.top
                    topMargin: 5
                    horizontalCenter: parent.horizontalCenter
                }
                spacing: 5

                Label {
                    font.pixelSize: Qt.application.font.pixelSize*1.3
                    text:qsTr("Jabra Connect Link")
                }
                Label {
                    font.pixelSize: Qt.application.font.pixelSize*0.9
                    text:infoButton3.updateAvailable ? qsTr("Current : 5.10.2") : qsTr("Update available : 5.11.5")
                    color:infoButton3.updateAvailable ?  "light grey" :"#FAB005"
                    font.family: "Times New Roman"
                }
                IconButton{
                    id:infoButton3
                    property bool updateAvailable: updateButton3.updateAvailable
                    color: "transparent"
                    borderColor:"transparent"
                    pressColor:"transparent"
                    hoverColor:"transparent"
                    borderRadius: 18
                    width: 100
                    height: 20
                    innerText.color: "#FAB005"
                    fontSize: 10
                    iconWidth: 15
                    iconHeight: 15
                    sourceIcon:"qrc:/Assets/Icons/icons8-info-50.png"
                    buttonText: qsTr("Release notes")
                    Layout.alignment: Qt.AlignLeft
                }
            }

            IconButton{
                id:updateButton3
                property bool updateAvailable: true
                color:updateAvailable ? "transparent" : "#444b51"
                borderColor:updateAvailable ? "transparent" :"#444b51"
                pressColor:updateAvailable ? "transparent" : "#444b51"
                hoverColor:updateAvailable ? "transparent" : "#444b51"
                borderRadius: 18
                width: 100
                height: 30
                innerText.color:updateAvailable ?  "White" :"#FAB005"
                fontSize: 10
                iconWidth: 20
                iconHeight: 20
                sourceIcon:updateAvailable ? "qrc:/Assets/Icons/icons8-ok-30.png" : "qrc:/Assets/Icons/icons8-info-50.png"
                buttonText:updateAvailable ? qsTr("Up to date") : qsTr("Update")
                anchors{
                    right: parent.right
                    rightMargin: 20
                }
            }

        }
        Rectangle{
            Layout.fillWidth: true
            Layout.preferredHeight: 20
            color: homeColor
            Rectangle{
                id:line2
                width: parent.width*0.99
                height: 2
                color: "#444b51"
                anchors{
                    topMargin: 20
                }
            }

        }

        Rectangle{
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: homeColor

            Label {
                id:otherLabel
                font.pixelSize: Qt.application.font.pixelSize*1.2
                text:qsTr("Software")
                anchors{
                    left: parent.left
                    leftMargin: 10
                    topMargin: 10
                }
            }

            ColumnLayout{
                anchors{
                    top: parent.top
                    topMargin: 5
                    horizontalCenter: parent.horizontalCenter
                }
                spacing: 5

                Label {
                    font.pixelSize: Qt.application.font.pixelSize*1.3
                    text:qsTr("Jabra Speaker 210")
                }
                Label {
                    font.pixelSize: Qt.application.font.pixelSize*0.9
                    text:infoButton.updateAvailable ? qsTr("Current : 5.10.2") : qsTr("Update available : 5.11.5")
                    color:infoButton.updateAvailable ?  "light grey" :"#FAB005"
                    font.family: "Times New Roman"
                }
                IconButton{
                    id:infoButton
                    property bool updateAvailable: updateButton.updateAvailable
                    color: "transparent"
                    borderColor:"transparent"
                    pressColor:"transparent"
                    hoverColor:"transparent"
                    borderRadius: 18
                    width: 100
                    height: 20
                    innerText.color: "#FAB005"
                    fontSize: 10
                    iconWidth: 15
                    iconHeight: 15
                    sourceIcon:"qrc:/Assets/Icons/icons8-info-50.png"
                    buttonText: qsTr("Release notes")
                    Layout.alignment: Qt.AlignLeft
                }
            }

            IconButton{
                id:updateButton
                property bool updateAvailable: false
                color:updateAvailable ? "transparent" : "#444b51"
                borderColor:updateAvailable ? "transparent" :"#444b51"
                pressColor:updateAvailable ? "transparent" : "#444b51"
                hoverColor:updateAvailable ? "transparent" : "#444b51"
                borderRadius: 18
                width: 100
                height: 30
                innerText.color:updateAvailable ?  "White" :"#FAB005"
                fontSize: 10
                iconWidth: 20
                iconHeight: 20
                sourceIcon:updateAvailable ? "qrc:/Assets/Icons/icons8-ok-30.png" : "qrc:/Assets/Icons/icons8-info-50.png"
                buttonText:updateAvailable ? qsTr("Up to date") : qsTr("Update")
                anchors{
                    verticalCenter: otherLabel.verticalCenter
                    right: parent.right
                    rightMargin: 20
                }
                onClicked: {

                }
            }

        }
    }
}
