import QtQuick
import QtQuick.Layouts

Rectangle {
    id: root
    required property color buttonBackgroundColor
    required property color buttonIconColor
    property bool isGenderIconMars: true
    property string healingSource
    property color healingIconColor
    property int panelHeight: 200 // sum of spacings, button size, text size; automatic value later!!

    height: panelHeight

    Text {
        id: planetText
        text: qsTr("Favourite planet:")
        font.pointSize: 12
        font.family: "Roboto Regular"
        anchors.top: parent.top
    }
    RowLayout {
        id: genderLayout
        anchors.top: planetText.bottom
        spacing: 10
        IconButton {
            id: marsButton
            iconSource: "qrc:/icons/pics/mars.svg"
            backroundColor: buttonBackgroundColor
            iconColor: buttonIconColor
            onClicked: {
                isGenderIconMars = true
            }
        }
        IconButton {
            id: venusButton
            iconSource: "qrc:/icons/pics/venus.svg"
            backroundColor: buttonBackgroundColor
            iconColor: buttonIconColor
            onClicked: {
                isGenderIconMars = false
            }
        }
    }
    Text {
        id: ageText
        text: qsTr("Age group:")
        font.pointSize: 12
        font.family: "Roboto Regular"
        anchors.top: genderLayout.bottom
        anchors.topMargin: 20
    }
    RowLayout {
        id: ageGroupLayout
        anchors.top: ageText.bottom
        spacing: 10
        IconButton {
            id: babyButton
            iconSource: "qrc:/icons/pics/baby.svg"
            backroundColor: buttonBackgroundColor
            iconColor: buttonIconColor
            onClicked: {
                healingSource = "qrc:/icons/pics/baby-carriage.svg"
                healingIconColor = "pink"
            }
        }
        IconButton {
            id: childButton
            iconSource: isGenderIconMars ? "qrc:/icons/pics/child.svg" : "qrc:/icons/pics/child-dress.svg"
            backroundColor: buttonBackgroundColor
            iconColor: buttonIconColor
            onClicked: {
                healingSource = "qrc:/icons/pics/futbol.svg"
                healingIconColor = "lightblue"
            }
        }
        IconButton {
            id: adultButton
            iconSource: isGenderIconMars ? "qrc:/icons/pics/person.svg" : "qrc:/icons/pics/person-dress.svg"
            backroundColor: buttonBackgroundColor
            iconColor: buttonIconColor
            onClicked: {
                healingSource = "qrc:/icons/pics/lungs.svg"
                healingIconColor = "gray"
            }
        }
        IconButton {
            id: oldieButton
            iconSource: "qrc:/icons/pics/person-cane.svg"
            backroundColor: buttonBackgroundColor
            iconColor: buttonIconColor
            onClicked: {
                healingSource = "qrc:/icons/pics/leaf.svg"
                healingIconColor = "orange"
            }
        }
    }
    states: [
        State {
            name: "normal"
            PropertyChanges { target: root; opacity: 100 }
            PropertyChanges { target: root; height: panelHeight }
        },
        State {
            name: "healing"
            PropertyChanges { target: root; opacity: 0 }
            PropertyChanges { target: root; height: 0 }
        }
    ]
    transitions: [
        Transition {
            from: "normal"
            to: "healing"
            PropertyAnimation { target: root; properties: "opacity"; duration: 1000 }
            PropertyAnimation { target: root; properties: "height"; duration: 1000 }
        },
        Transition {
            from: "healing"
            to: "normal"
            PropertyAnimation { target: root; properties: "opacity"; duration: 1000 }
            PropertyAnimation { target: root; properties: "height"; duration: 1000 }
        }
    ]
}
