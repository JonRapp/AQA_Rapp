import QtQuick
import Qt5Compat.GraphicalEffects

Rectangle {
    id: root
    required property string iconSource
    property color iconColor

    width: 300
    height: 300
    Timer {
        id: timer
    }

    function startHealing(){
        scalingUp.start()
        timer.interval = 2000
        timer.repeat = true
        timer.triggered.connect(scalingDown.start)
        timer.start()

    }
    function stopHealing(){
        timer.stop()
        scalingUp.stop()
        scalingDown.start()
    }


    Image {
        id: healingImage
        anchors.fill: parent
        width: 200
        height: 200
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
        to: 1.5;
        duration: 1000
    }
    ScaleAnimator {
        id: scalingDown
        target: root;
        from: 1.5;
        to: 1;
        duration: 1000
        onStopped: {
            scalingUp.start()
        }
    }
}
