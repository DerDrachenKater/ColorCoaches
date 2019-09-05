import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    id: item1

    property alias colorHexViewSelectedColor: colorHexViewSelectedColor
    property alias rgbChooser: rgbChooser
    property alias colorHexViewSelectedColor_comp: colorHexViewSelectedColor_comp
    property alias rgbChooser_comp: rgbChooser_comp


    Label {
        id: labelTitle
        width: 400
        text: qsTr("HRW ColorCoach")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 0
        Layout.minimumHeight: 35
        Layout.minimumWidth: 400
        Layout.preferredHeight: 35
        Layout.preferredWidth: 400
        transformOrigin: Item.Center
        clip: false
        Layout.fillWidth: true
        font.bold: true
        font.pointSize: 22
    }

    GridLayout {
        id: gridLayout1
        height: 560
        anchors.rightMargin: 5
        anchors.bottomMargin: 5
        anchors.leftMargin: 5
        anchors.topMargin: 41
        anchors.fill: parent
        rows: 2
        columns: 2

        ColorHexView {
            id: colorHexViewSelectedColor
            width: 400
            height: 200
            Layout.fillHeight: true
            Layout.fillWidth: true
            transformOrigin: Item.Center
            clip: false
            title: "Selected Color"
            Layout.minimumHeight: 200
            Layout.minimumWidth: 400
            Layout.preferredHeight: 200
            Layout.preferredWidth: 400
        }

        ColorHexView_comp {
            id: colorHexViewSelectedColor_comp
            transformOrigin: Item.Center
            title: "Complementary Color"
        }

        RGBChooser {
            id: rgbChooser
            width: 400
            Layout.fillHeight: true
            Layout.fillWidth: true
            transformOrigin: Item.Center
            clip: false
            title: "Choose your Color"
            Layout.minimumHeight: 200
            Layout.minimumWidth: 300
            Layout.preferredHeight: 200
            Layout.preferredWidth: 400
        }

        RGBChooserForm_comp {
            id: rgbChooser_comp
            x: 400
            y: 206
            Layout.fillHeight: true
            Layout.minimumHeight: 200
            Layout.minimumWidth: 300
            Layout.fillWidth: true
            Layout.preferredHeight: 200
            Layout.preferredWidth: 400
            transformOrigin: Item.Center
            title: "Choose the complementary Color"
        }
    }

}




