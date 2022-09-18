import QtQuick 2.11
import QtQuick.Controls 2.4
import QtQuick.Controls.Material 2.4
import QtQuick.Layouts 1.11
import QtQuick.Window 2.11
import "../Components"
ItemDelegate {
    id: root
    width: parent.width
    height: 100
    checkable: true
    hoverEnabled: false

    onClicked: ListView.view.currentIndex = index
    Rectangle{
        radius: 8
        color: "#373e44"
        anchors.fill: parent
        border.width:1
        border.color : "#444b51"
        ColumnLayout {
            anchors.fill: parent
            RowLayout {
                RowLayout{
                    id: dateColumn
                    Image{
                        id:speakerLogo
                        source:model.icon
                        sourceSize: Qt.size(100,100)
                    }

                    ColumnLayout {
                        Label {
                            id: timeLabel
                            font.pixelSize: Qt.application.font.pixelSize * 1.5
                            text:model.speakerName
                        }
                        RowLayout {
                            Image{
                                source: model.connectedIcon
                                sourceSize: Qt.size(20,20)
                                Layout.alignment: Qt.AlignVCenter
                            }

                            Label {
                                id: alarmAbout
                                font.pixelSize: 12
                                font.bold: true
                                text: model.label
                            }
                        }
                    }
                }
                Item {
                    Layout.fillWidth: true
                }
                CButton{
                    id:connectButton
                    property string connectColor: model.normalColor
                    color:connectColor
                    borderColor:connectColor
                    pressColor: connectColor
                    hoverColor: connectColor
                    borderRadius: 18
                    width: 150
                    height: 40
                    innerText.color: "White"
                    fontSize: 14
                    buttonText:model.buttonStatus
                    Layout.alignment: Qt.AlignVCenter
                    Layout.rightMargin: 10
                    onClicked: {
                        connectColor = model.pressColor
                        buttonText = "Disconnect"
                    }
                }
            }
        }
    }
}
