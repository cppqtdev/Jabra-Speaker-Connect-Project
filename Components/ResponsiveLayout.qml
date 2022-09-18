import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
Item {
    anchors.fill: parent
    RowLayout{
        spacing: 0
        anchors.fill: parent
        Rectangle{
            Layout.preferredWidth: parent.width / 9
            Layout.fillHeight: true
            color: homeColor
            SideBarButtons{
                id:sideBar
                width: parent.width*0.7
                height: parent.height*0.7
                radius: 6
                anchors.centerIn: parent
            }
        }
        CStackView{
            id:mainStackView
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }

}
