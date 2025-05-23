import QtQuick
import QtQuick.Controls
import QtQuick.Window
import RinUI


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World 2")

    Row {
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.margins: 16
        spacing: 4
        Button {
            highlighted: true
            text: qsTr("Click me!")
            onClicked: dialog.open()

            Dialog {
                id: dialog
                modal: true
                title: qsTr("Are you sure to toggle theme?")
                Text {
                    text: qsTr("This is a dialog.")
                }
                onAccepted: {
                    Theme.toggleMode()
                }
                standardButtons: Dialog.Ok | Dialog.Cancel
            }
        }
        Button {
            text: qsTr("Button")
        }
    }
}