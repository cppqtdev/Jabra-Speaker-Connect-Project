import QtQuick 2.11

// Populate the model with some sample data.
ListModel {
    ListElement {
        activated: true
        speakerName:"Jabra Speaker 210"
        label: "Not Paired"
        pressColor:"#ef4948"
        normalColor:"#4990e2"
        icon:"qrc:/Assets/Images/speaker.png"
        connectedIcon:"qrc:/Assets/Icons/icons8-cloud-cross-24.png"
        buttonStatus:"Pair"
    }
//    ListElement {
//        activated: true
//        speakerName:"Jebra Speaker"
//        label: "Not Connected"
//        pressColor:"#ef4948"
//        normalColor:"#4990e2"
//        icon:"qrc:/Assets/Images/speaker.png"
//        connectedIcon:"qrc:/Assets/Icons/icons8-cloud-cross-24.png"
//    }
}
