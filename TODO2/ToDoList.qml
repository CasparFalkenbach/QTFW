import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.3

Frame{
    ListView{
        implicitWidth: 250
        implicitHeight: 250
        clip: true

        model: ListModel{
            id: modelList
            ListElement{
                done: true
                description: "do the dishes"
            }
            ListElement{
                done: false
                description: "do homework"
            }
        }
        delegate: RowLayout{
            width:  parent.width
            CheckBox{checked: model.done
                onClicked: model.done = checked
            }
            TextField{
                text: model.description
                onEditingFinished: model.description = text
                Layout.fillWidth: true
            }
        }
    }
}
