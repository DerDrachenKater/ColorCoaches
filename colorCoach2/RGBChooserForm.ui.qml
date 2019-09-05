import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    id: item1
    property alias red: sliderRed.value
    property alias green: sliderGreen.value
    property alias blue: sliderBlue.value
    property alias title: groupBox1.title
    Layout.minimumWidth: 200
    Layout.minimumHeight: 100
    Layout.preferredWidth: 400
    Layout.preferredHeight: 150


    GroupBox {
        id: groupBox1
        anchors.fill: parent
        checked: false

        GridLayout {
            id: rgbLayout
            anchors.fill: parent
            columnSpacing: 2
            rowSpacing: 8
            columns: 3

            // UI elements for red component
            Label {
                id: labelRed
                x: 0
                y: 0
                width: 75
                height: 35
                text: qsTr("Red:")
                Layout.fillHeight: false
                Layout.fillWidth: true
                Layout.minimumHeight: 35
                Layout.minimumWidth: 75
                Layout.preferredHeight: 35
                Layout.preferredWidth: 75
                font.pointSize: 14
            }

            Label {
                id: labelGreen
                x: 0
                y: 50
                width: 75
                height: 35
                text: qsTr("Green:")
                Layout.fillWidth: true
                Layout.minimumHeight: 35
                Layout.minimumWidth: 75
                Layout.preferredHeight: 35
                Layout.preferredWidth: 75
                font.pointSize: 14
            }

            Label {
                id: labelBlue
                x: 0
                y: 100
                width: 75
                height: 35
                text: qsTr("Blue:")
                Layout.fillWidth: true
                Layout.minimumHeight: 35
                Layout.minimumWidth: 75
                Layout.preferredHeight: 35
                Layout.preferredWidth: 75
                font.pointSize: 14
            }

            Slider {
                id: sliderRed
                x: 75
                y: 0
                width: 100
                height: 35
                Layout.fillHeight: true
                orientation: Qt.Vertical
                activeFocusOnPress: true
                tickmarksEnabled: false
                Layout.fillWidth: true
                Layout.minimumHeight: 35
                Layout.minimumWidth: 100
                Layout.preferredHeight: 35
                Layout.preferredWidth: 150
                stepSize: 1
                maximumValue: 255
                //value: red


                //onValueChanged: red = value
            }


            // UI elements for green component

            Slider {
                id: sliderGreen
                x: 75
                y: 50
                width: 100
                height: 35
                orientation: Qt.Vertical
                Layout.fillHeight: true
                Layout.fillWidth: true
                maximumValue: 255
                stepSize: 1
                Layout.minimumHeight: 35
                Layout.minimumWidth: 100
                Layout.preferredHeight: 35
                Layout.preferredWidth: 150
                //value: red
                //onValueChanged red = value
            }

            Slider {
                x: 75
                y: 100
                width: 100
                orientation: Qt.Vertical
                Layout.fillHeight: true
                Layout.fillWidth: true
                id: sliderBlue
                maximumValue: 255
                stepSize: 1
                Layout.minimumHeight: 35
                Layout.minimumWidth: 100
                Layout.preferredHeight: 35
                Layout.preferredWidth: 150            }


            TextField {
                id: textRed
                x: 300
                y: 0
                width: 100
                height: 35
                text: red
                Layout.fillWidth: true
                Layout.minimumHeight: 35
                Layout.preferredHeight: 35
                Layout.preferredWidth: 100
                Layout.minimumWidth: 100
                validator: IntValidator {
                    bottom: 0
                    top: 255
                }
                font.pointSize: 16


                onTextChanged: red = text
            }

            TextField {
                x: 300
                y: 50
                width: 100
                id: textGreen
                text: green
                Layout.fillWidth: true
                Layout.minimumHeight: 35
                Layout.preferredHeight: 35
                Layout.preferredWidth: 100
                Layout.minimumWidth: 100
                font.pointSize: 16
                validator: IntValidator {
                    top: 255
                    bottom: 0
                }
                onTextChanged: green = text;
            }


            // UI elements for blue component


            TextField {
                x: 300
                y: 100
                id: textBlue
                text: blue
                Layout.fillWidth: true
                Layout.minimumHeight: 35
                Layout.preferredHeight: 35
                Layout.preferredWidth: 100
                Layout.minimumWidth: 100
                font.pointSize: 16
                validator: IntValidator {
                    top: 255
                    bottom: 0
                }
            }

        }
    }
}
