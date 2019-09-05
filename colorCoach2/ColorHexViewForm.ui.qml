import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {

    property alias colorHexString: textFieldHexCode.text
    property alias title: groupBox.title

    Layout.fillWidth: true
    Layout.fillHeight: true
    Layout.minimumWidth: 200
    Layout.minimumHeight: 100

    GroupBox {
        id: groupBox
        anchors.fill: parent

        ColumnLayout {
            id: columnLayout1
            anchors.fill: parent

            Rectangle {
                id: rectangleColorView
                x: 0
                y: 0
                width: 130
                height: 80
                color: colorHexString
                Layout.minimumWidth: 100
                Layout.minimumHeight: 80
                Layout.preferredWidth: 150
                Layout.preferredHeight: 80
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Label {
                id: labelHexCode
                width: 70
                text: "HexCode"
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.columnSpan: 0
                Layout.minimumHeight: 35
                Layout.minimumWidth: 70
                Layout.preferredHeight: 35
                Layout.preferredWidth: 70
            }

            TextField {
                id: textFieldHexCode
                width: 150
                height: 35
                Layout.fillHeight: true
                Layout.minimumHeight: 35
                Layout.preferredHeight: 35
                Layout.preferredWidth: 150
                Layout.fillWidth: true
                Layout.minimumWidth: 150

            }


        }
    }
}
