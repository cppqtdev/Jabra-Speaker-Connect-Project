import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.4
import "./Components"
ApplicationWindow {
    id: window
    width: 1200
    height: 700
    visible: true
    title: qsTr("Jabra Connect")
    property color homeColor: "#313a41"
    //color: homeColor
    Loader{
        anchors.fill: parent
        sourceComponent: resLayout
    }
    Component{
        id:resLayout
        ResponsiveLayout{
        }
    }

}
