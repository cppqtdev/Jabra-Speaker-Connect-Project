//Import the declarative plugins
import QtQuick 2.0
import QtQuick.Layouts 1.3
//Implementation of the Button control.
Item {
    id: button
    width: 30
    height: 30
    property alias buttonText: innerText.text;
    property alias innerTextLabel: innerText
    property color color: "white"
    property color hoverColor: "#aaaaaa"
    property color pressColor: "slategray"
    property color borderColor: "white"
    property string sourceIcon: ""
    property int fontSize: 10
    property int borderWidth: 1
    property int borderRadius: 2
    property int iconWidth: 10
    property int iconHeight: 10
    scale: state === "Pressed" ? 1.1 : 1.0
    onEnabledChanged: state = ""
    signal clicked

    //define a scale animation
    Behavior on scale {
        NumberAnimation {
            duration: 100
            easing.type: Easing.InOutQuad
        }
    }

    //Rectangle to draw the button
    Rectangle {
        id: rectangleButton
        anchors.fill: parent
        radius: borderRadius
        color: button.enabled ? button.color : "grey"
        border.width: borderWidth
        border.color:borderColor
        ColumnLayout{
            anchors.centerIn: parent
            spacing: 5
            Image{
                source:sourceIcon
                sourceSize: Qt.size(iconWidth,iconHeight)
                Layout.alignment: Qt.AlignHCenter
            }

            Text {
                id: innerText
                font.pointSize: fontSize
                Layout.alignment: Qt.AlignHCenter
            }
        }
    }

    //change the color of the button in differen button states
    states: [
        State {
            name: "Hovering"
            PropertyChanges {
                target: rectangleButton
                color: hoverColor
                border.color:hoverColor
            }
        },
        State {
            name: "Pressed"
            PropertyChanges {
                target: rectangleButton
                color: pressColor
                border.color: pressColor
            }
        }
    ]

    //define transmission for the states
    transitions: [
        Transition {
            from: ""; to: "Hovering"
            ColorAnimation { duration: 200 }
        },
        Transition {
            from: "*"; to: "Pressed"
            ColorAnimation { duration: 10 }
        }
    ]

    //Mouse area to react on click events
    MouseArea {
        hoverEnabled: true
        anchors.fill: button
        onEntered: { button.state='Hovering'}
        onExited: { button.state=''}
        onClicked: { button.clicked();}
        onPressed: { button.state="Pressed" }
        onReleased: {
            if (containsMouse)
                button.state="Hovering";
            else
                button.state="";
        }
    }
}
