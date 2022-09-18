import QtQuick 2.15
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3
import "../Models"
import "../Components"
Item {
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
                text:qsTr("Settings")
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
                id:deviceLabel
                font.pixelSize: Qt.application.font.pixelSize*1.2
                text:qsTr("General Settings")
                anchors{
                    top: line.bottom
                    topMargin: 20
                }
            }
            Label {
                font.pixelSize: Qt.application.font.pixelSize*0.9
                text:qsTr("All devices related settings configuration")
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
                    font.pixelSize: Qt.application.font.pixelSize*1.2
                    text:qsTr("Allow Notification")
                }
                Label {
                    font.pixelSize: Qt.application.font.pixelSize*0.9
                    text: qsTr("Allows jabra to send notification about available\nUpdates and other relavant information")
                    color: "light grey"
                }
            }
            CCheckBox{
                checkedColor: "#228BE6"
                checked: true
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
                    font.pixelSize: Qt.application.font.pixelSize*1.2
                    text:qsTr("Enbale Jabra in Tray")
                }
                Label {
                    font.pixelSize: Qt.application.font.pixelSize*0.9
                    text: qsTr("Enable overview and notification from KENT which\nIs accessibile in the notification area")
                    color: "light grey"
                }
            }

            CCheckBox{
                checkedColor: "#228BE6"
                checked: true
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
                text:qsTr("Softphone Integration")
                anchors{
                    left: parent.left
                    leftMargin: 10
                    topMargin: 10
                }
            }

            ColumnLayout{
                id:topLayout
                anchors{
                    top: parent.top
                    topMargin: 5
                    horizontalCenter: parent.horizontalCenter
                }
                spacing: 20
                Column{
                    spacing: 5
                Label {
                    font.pixelSize: Qt.application.font.pixelSize*1.2
                    text:qsTr("Presence Synchronization")
                }
                Label {
                    font.pixelSize: Qt.application.font.pixelSize*0.9
                    text:qsTr("Syncs connected device status soft phone status")
                    color:"light grey"
                }
                }
                Column{
                    spacing: 5
                    Label {
                        font.pixelSize: Qt.application.font.pixelSize*1.2
                        text:qsTr("Preferred Softphone")
                    }
                    Label {
                        font.pixelSize: Qt.application.font.pixelSize*0.9
                        text:qsTr("Choose a preferred softphone to be used with connected device")
                        color:"light grey"
                    }
                }
            }
            ColumnLayout{
                spacing: 20
                anchors{
                    right: parent.right
                    rightMargin: 20
                    top: parent.top
                }
                CCheckBox{
                    id:checkedBox
                    checkedColor: "#228BE6"
                    checked: true
                    Layout.alignment: Qt.AlignRight
                }
                RowLayout{
                    Layout.alignment: Qt.AlignHCenter
                    spacing: 5
                    CButton{
                        id:addButton
                        color:"#444b51"
                        borderColor:"#444b51"
                        pressColor:"#444b51"
                        hoverColor:"#444b51"
                        borderRadius: 18
                        width: 45
                        height: 45
                        iconWidth: 35
                        iconHeight: 35
                        sourceIcon:"qrc:/Assets/Images/18362309891600040225-512.png"

                    }
                    CButton{
                        color:"#444b51"
                        borderColor:"#444b51"
                        pressColor:"#444b51"
                        hoverColor:"#444b51"
                        borderRadius: 18
                        width: 45
                        height: 45
                        iconWidth: 50
                        iconHeight: 50
                        sourceIcon:"qrc:/Assets/Images/Microsoft_Teams-Logo.wine.png"

                    }
                    CButton{
                        color:"#444b51"
                        borderColor:"#444b51"
                        pressColor:"#444b51"
                        hoverColor:"#444b51"
                        borderRadius: 18
                        width: 45
                        height: 45
                        sourceIcon:"qrc:/Assets/Icons/icons8-plus-48.png"

                    }
                }
            }

        }
    }
}
