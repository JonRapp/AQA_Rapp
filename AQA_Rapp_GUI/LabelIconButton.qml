import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import QtQuick.Controls.Material
import Qt5Compat.GraphicalEffects

Button {
    id:root
    required property string iconSource
    required property color backroundColor //maybe rather with state, but let's see
    required property color iconColor
    required property string labelText

    height: 72
    width: 236

    background: Rectangle {
        id: buttonRect
        radius: 18
        color: backroundColor
        border.color: iconColor

        RowLayout {
            anchors.fill: parent
            Text { text: labelText; font.pointSize: 24; font.family: "Roboto Regular" }
            Image {
                Layout.preferredWidth: 40
                Layout.preferredHeight: 40
                id: buttonIcon
                width: 30
                height: 30
                source: iconSource
            }
            ColorOverlay {
                //anchors.fill: buttonIcon
                source: buttonIcon
                color: iconColor
            }
        }
    }
    DropShadow {
        id: rectShadow
        anchors.fill: source
        source: buttonRect
        horizontalOffset: 1
        verticalOffset: 4
        samples: 25
        color: iconColor
        radius: 0
    }
    states: [
        State {
            name: "normal"
            PropertyChanges { target: root; labelText: "Start healing" }
            PropertyChanges { target: root; iconSource: "qrc:/icons/pics/play.svg" }
        },
        State {
            name: "healing"
            PropertyChanges { target: root; labelText: "Stop" }
            PropertyChanges { target: root; iconSource: "qrc:/icons/pics/hand.svg" }
        }
    ]
    transitions: [
        Transition {
            from: "normal"
            to: "healing"
            PropertyAnimation { target: root; properties: "labelText"; duration: 1000 }
            PropertyAnimation { target: root; properties: "iconSource"; duration: 1000 }
        },
        Transition {
            from: "healing"
            to: "normal"
            PropertyAnimation { target: root; properties: "labelText"; duration: 1000 }
            PropertyAnimation { target: root; properties: "iconSource"; duration: 1000 }
        }
    ]
}
