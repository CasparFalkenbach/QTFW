import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    width: 640
    height: 480
    visible: true
    title: qsTr("TodoList")

    ToDoList {
           anchors.centerIn: parent
       }
}
