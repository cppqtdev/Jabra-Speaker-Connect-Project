import QtQuick 2.15
import QtQuick.Controls 2.5
import "../"
import QtQuick.Layouts 1.3

Rectangle{
    color: homeColor
    property color layerColor: "#373e44"
    property color titleColor: "#ffffff"

    RowLayout{
        anchors.centerIn: parent
        width: parent.width*0.98
        height: parent.height*0.8
        spacing: 30
        Rectangle{
            id:speakerRec
            color: layerColor
            Layout.fillHeight: true
            Layout.fillWidth: true
            visible: true
            radius: 12
            border.width:2
            border.color : "#444b51"
            Label{
                text: qsTr("Jabra Speaker")
                color:titleColor
                font.pixelSize: 32
                font.family: "Times New Roman"
                anchors{
                    left: parent.left
                    top: parent.top
                    topMargin: 20
                    leftMargin: 20
                }

            }

            Image {
                id: speaker
                source: "qrc:/Assets/Images/speaker.png"
                anchors.centerIn: parent
                sourceSize: Qt.size(speakerRec.width*0.9,speakerRec.height*0.9)
            }
            Row{
                spacing: 10
                anchors{
                    right: parent.right
                    bottom: parent.bottom
                    bottomMargin: 15
                    rightMargin: 20
                }

                RowLayout{
                    spacing: 5
                    Image{
                        source: "qrc:/Assets/Icons/bluetoot.png"
                        sourceSize: Qt.size(20,20)
                    }
                    Label{
                        text: qsTr("Bluetooth")
                        color:titleColor
                        font.pixelSize: 12
                        font.bold: true
                        Layout.alignment: Qt.AlignVCenter
                    }
                }
                RowLayout{
                    spacing: 5
                    Image{
                        source: "qrc:/Assets/Icons/battery.png"
                        sourceSize: Qt.size(20,20)
                    }
                    Label{
                        text: qsTr("75%")
                        color:titleColor
                        font.pixelSize: 12
                        font.bold: true
                        Layout.alignment: Qt.AlignVCenter
                    }
                }
            }

        }
        Rectangle{
            color: layerColor
            Layout.fillHeight: true
            Layout.fillWidth: true
            visible: true
            radius: 12
            border.width:2
            border.color : "#444b51"
            Label{
                text: qsTr("Jabra Connect Link")
                font.family: "Times New Roman"
                color:titleColor
                font.pixelSize: 32
                anchors{
                    left: parent.left
                    top: parent.top
                    topMargin: 20
                    leftMargin: 20
                }

            }
            Image {
                id: dongle
                source: "qrc:/Assets/Images/dongle.png"
                anchors.centerIn: parent
            }
            RowLayout{
                spacing: 10
                anchors{
                    right: parent.right
                    bottom: parent.bottom
                    bottomMargin: 15
                    rightMargin: 20
                }
                RowLayout{
                    spacing: 5
                    Image{
                        source: "qrc:/Assets/Icons/usb.png"
                        sourceSize: Qt.size(20,20)
                    }
                    Label{
                        text: qsTr("USB")
                        color:titleColor
                        font.pixelSize: 12
                        font.bold: true
                        Layout.alignment: Qt.AlignVCenter
                    }
                }
            }

        }
    }
}
