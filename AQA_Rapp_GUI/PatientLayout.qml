import QtQuick
import QtQuick.Layouts

Rectangle {
    id: root
    required property color buttonBackgroundColor
    required property color buttonIconColor
    property bool isGenderIconMars: true
    property string healingSource
    property color healingIconColor

    Text {
        id: planetText
        text: qsTr("Favourite planet:")
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
}
