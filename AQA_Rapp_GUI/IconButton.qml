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

    Layout.preferredWidth: 72
    Layout.preferredHeight: 72

    background: Rectangle {
        id: buttonRect
        radius: 18
        color: backroundColor

        Image {
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            id: buttonIcon
            width: 40
            height: 40
            source: iconSource
        }
        ColorOverlay {
            anchors.fill: buttonIcon
            source: buttonIcon
            color: iconColor
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
}
