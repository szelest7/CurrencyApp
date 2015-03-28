import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2

ApplicationWindow {
    title: qsTr("Live Currency Checker")
    width: 640
    height: 480
    visible: true

//    menuBar: MenuBar {
//        Menu {
//            title: qsTr("&File")
//            MenuItem {
//                text: qsTr("&Open")
//                onTriggered: messageDialog.show(qsTr("Open action triggered"));
//            }
//            MenuItem {
//                text: qsTr("E&xit")
//                onTriggered: Qt.quit();
//            }
//        }
//        }

    MainForm {
        antialiasing: true
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }
}
