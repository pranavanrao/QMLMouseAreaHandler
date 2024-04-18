import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        id: rect
        width: 300
        height: 300
        color: "red"
        anchors.centerIn: parent

        MouseArea {
            id: mouseAreRect
            anchors.fill: parent

            acceptedButtons: Qt.LeftButton | Qt.RightButton
            hoverEnabled: true

            onClicked: {
                console.log("Clicked : " + mouse.button)
                if (mouse.button === Qt.LeftButton) rect.color = "green"
                if (mouse.button === Qt.RightButton) rect.color = "blue"
            }

            onDoubleClicked: console.log("Double clicked : " + mouse.button)

            onPositionChanged: console.log("Position: X: " + mouseX + " Y: " + mouseY)

            onEntered: rect.color = "orange"
            onExited: rect.color = "red"
        }
    }
}
