import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
Rectangle{
    property color buttonColor: "#373e44"
    property color textColor: "#EBEBEB"
    property color hightLighted: "#4990e2"
    property color home: hightLighted
    property color bluetooth:buttonColor
    property color updateColor: buttonColor
    property color settings: buttonColor
    color: buttonColor
    radius: 10
    ColumnLayout{
        anchors.fill: parent
        spacing: 0
        IconWithTitle{
            Layout.fillHeight: true
            Layout.fillWidth: true
            buttonText: qsTr("Home")
            color: home
            hoverColor: home
            borderColor: home
            pressColor: home
            innerTextLabel.color: textColor
            fontSize: 12
            sourceIcon: "qrc:/Assets/Icons/backhome.png"
            iconWidth: 30
            iconHeight: 30
            borderRadius: 10
            onClicked: {
                mainStackView.replace("qrc:/Screens/Home.qml")
                home=hightLighted
                bluetooth=buttonColor
                updateColor=buttonColor
                settings=buttonColor
            }
        }
        IconWithTitle{
            Layout.fillHeight: true
            Layout.fillWidth: true
            buttonText: qsTr("Bluetooth")
            color: bluetooth
            hoverColor: bluetooth
            borderColor: bluetooth
            pressColor: bluetooth
            innerTextLabel.color: textColor
            fontSize: 12
            sourceIcon: "qrc:/Assets/Icons/bluetoot.png"
            iconWidth: 30
            iconHeight: 30
            onClicked: {
                mainStackView.replace("qrc:/Screens/Blutooth.qml")
                home=buttonColor
                bluetooth=hightLighted
                updateColor=buttonColor
                settings=buttonColor
            }
        }
        IconWithTitle{
            Layout.fillHeight: true
            Layout.fillWidth: true
            buttonText: qsTr("Update")
            color: updateColor
            hoverColor: updateColor
            borderColor: updateColor
            pressColor: updateColor
            innerTextLabel.color: textColor
            fontSize: 12
            sourceIcon: "qrc:/Assets/Icons/download.png"
            iconWidth: 30
            iconHeight: 30
            onClicked: {
                mainStackView.replace("qrc:/Screens/Update.qml")
                home=buttonColor
                bluetooth=buttonColor
                updateColor=hightLighted
                settings=buttonColor
            }

        }
        IconWithTitle{
            Layout.fillHeight: true
            Layout.fillWidth: true
            buttonText: qsTr("Settings")
            color: settings
            hoverColor: settings
            borderColor: settings
            pressColor: settings
            innerTextLabel.color: textColor
            fontSize: 12
            sourceIcon: "qrc:/Assets/Icons/sett.png"
            iconWidth: 30
            iconHeight: 30
            borderRadius: 10
            onClicked: {
                mainStackView.replace("qrc:/Screens/Settings.qml")
                home=buttonColor
                bluetooth=buttonColor
                updateColor=buttonColor
                settings=hightLighted
            }
        }
    }
}
