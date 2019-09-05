import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {

    property alias colorHexString_comp: textFieldHexCode_comp.text
    property alias title_comp: groupBox_comp.title

    Layout.minimumWidth: 200
    Layout.minimumHeight: 100

    GroupBox {
        id: groupBox_comp
        anchors.fill: parent

        ColumnLayout {
            id: columnLayout1_comp
            anchors.fill: parent

            Rectangle {
                id: rectangleColorView_comp
                x: 0
                y: 0
                width: 130
                height: 80
                color: colorHexString_comp
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumWidth: 100
                Layout.minimumHeight: 80
                Layout.preferredWidth: 150
                Layout.preferredHeight: 80
            }

            Label {
                id: labelHexCode_comp
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
                id: textFieldHexCode_comp
                width: 150
                height: 35
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.minimumHeight: 35
                Layout.preferredHeight: 35
                Layout.preferredWidth: 150
                Layout.minimumWidth: 150

            }


        }
    }
}
