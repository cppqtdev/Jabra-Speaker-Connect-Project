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
                text:qsTr("Bluetooth")
                y:20
                anchors{
                    topMargin: 50
                    left: parent.left
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
                font.pixelSize: Qt.application.font.pixelSize*1.2
                text:qsTr("Connected")
                anchors{
                    top: line.bottom
                    topMargin: 20
                }
            }
        }

        ListView {
            spacing:20
            clip: true
            Layout.fillHeight: true
            Layout.fillWidth: true
            model: ConnectModel {}
            delegate: ConnectDelegate {}
            flickableDirection: Flickable.VerticalFlick
            boundsBehavior: Flickable.StopAtBounds
            ScrollBar.vertical: ScrollBar {
                visible: false
            }
        }
        Rectangle{
            Layout.fillWidth: true
            Layout.preferredHeight: 80
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
            Label {
                id:otherLabel
                font.pixelSize: Qt.application.font.pixelSize*1.2
                text:qsTr("Other Devices Available")
                anchors{
                    top: line2.bottom
                    topMargin: 20
                }
            }
            IconButton{
                color:"#444b51"
                borderColor:"#444b51"
                pressColor: "#444b51"
                hoverColor: "#444b51"
                borderRadius: 18
                width: 120
                height: 30
                innerText.color: "White"
                fontSize: 10
                iconWidth: 20
                iconHeight: 20
                sourceIcon: "qrc:/Assets/Icons/icons8-refresh-30.png"
                buttonText: qsTr("Refresh")
                anchors{
                    verticalCenter: otherLabel.verticalCenter
                    right: parent.right
                    rightMargin: 20
                }
            }
        }

        ListView {
            spacing:20
            clip: true
            Layout.fillHeight: true
            Layout.fillWidth: true
            model: NotConnectedModel {}
            delegate: ConnectDelegate {}
            flickableDirection: Flickable.VerticalFlick
            boundsBehavior: Flickable.StopAtBounds
            ScrollBar.vertical: ScrollBar {
                visible: false
            }
        }
    }
}
