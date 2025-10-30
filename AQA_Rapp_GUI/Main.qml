import QtQuick
import QtQuick.Layouts

Window {
    id: root
    width: 1024
    height: 768
    visible: true
    title: qsTr("Health GUI")

    property color mainBackgroundColor: "#FFFFFF"
    property color mainIconColor: "#696969"
    property bool isDarkMode: false // rather with state?

    color: mainBackgroundColor

    // Layout for control buttons which are constantly visible
    RowLayout {
        id: controlLayout
        spacing: 10
        anchors.top: parent.top
        anchors.topMargin: 20

        IconButton {
            id: powerButton
            iconSource: "qrc:/icons/pics/power-off.svg"
            backroundColor: mainBackgroundColor
            iconColor: mainIconColor
        }
        IconButton {
            id: darkModeButton
            iconSource: "qrc:/icons/pics/circle-half-stroke.svg"
            backroundColor: mainBackgroundColor
            iconColor: mainIconColor
            onClicked: {
                root.isDarkMode = root.isDarkMode ? false : true
                mainBackgroundColor = isDarkMode ? "#696969" : "#FFFFFF"
                mainIconColor = isDarkMode ? "#FFFFFF" : "#696969"
            }
        }
    }
    // Layout for patient selection which disappears during healing
    PatientLayout {
        id: patientLayout
        anchors.top: controlLayout.bottom
        buttonBackgroundColor: mainBackgroundColor
        buttonIconColor: mainIconColor
    }
}


