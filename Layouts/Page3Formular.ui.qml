import QtQuick 2.15
import QtQuick.Controls 2.15

Page {
    width: 600
    height: 400
    property alias dial: dial
    property alias progressBar: progressBar
    property alias label1: label1
    property alias button: button
    property alias comboBox: comboBox
    property alias textField: textField
    property alias label: label

    header: Label {
        text: qsTr("Page 3")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Row {
        id: row
        anchors.fill: parent
        spacing: 25

        Column {
            id: column
            width: 200
            height: row.height
            spacing: 10

            Label {
                id: label
                text: qsTr("Enter a name")
            }

            TextField {
                id: textField
                text: " "
                placeholderText: qsTr("")
            }



            ComboBox {
                id: comboBox
            }

            Button {
                id: button
                text: qsTr("Order")
            }
        }

        Column {
            id: column1
            width: 200
            height: row.height
            spacing: 9



            Label {
                id: label1
                text: qsTr("1 YearOld")
            }
            ProgressBar {
                id: progressBar
                to: 20
                from: 1
                value: 0.5
            }

            Dial {
                id: dial
                to: 20
                from: 1
            }
        }
    }
}
