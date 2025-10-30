import QtQuick
import Qt5Compat.GraphicalEffects

Rectangle {
    id: root
    required property string iconSource
    required property color backgroundColor
    required property color iconColor

    color: backgroundColor
    width: 100
    height: 150
    Timer {
        id: timer
    }

    function startHealing(){
        scalingUp.start()
    }
    function stopHealing(){
        scalingDown.start()
    }


    Image {
        id: healingImage
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        width: 100
        height: 150
        source: iconSource
    }
    ColorOverlay {
        anchors.fill: healingImage
        source: healingImage
        color: iconColor
    }
    ScaleAnimator {
        id: scalingUp
        target: root;
        from: 1;
        to: 2;
        duration: 1000
    }
    ScaleAnimator {
        id: scalingDown
        target: root;
        from: 2;
        to: 1;
        duration: 1000
    }
}
