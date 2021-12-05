import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    width: 600
    height: 400

    header: Label {
        text: qsTr("This is a UI")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        text: qsTr("You are on Page 1.")
        anchors.verticalCenterOffset: -126
        anchors.horizontalCenterOffset: 125
        anchors.centerIn: parent
    }

    Row {
        id: row
        width: 200
        height: parent.height

        Button {
            id: layoutButton1
            text: qsTr("LayoutButton")
        }
        Button {
            id: layoutButton2
            text: qsTr("LayoutButton")
        }
    }

    Button {
        id: xyButton1
        x: 158
        y: 60
        text: qsTr("XYButton")
    }
}
