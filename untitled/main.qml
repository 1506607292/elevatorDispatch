import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Layouts 1.0
import Working 1.0
import QtQuick.Controls 2.5

Window {
    id: window
    visible: true
    width: 580
    height: 600
    minimumWidth: 580
    title: qsTr("电梯调度模拟器")
    property var curr1: 7
    property var curr2: 1
    property var curr3: 8
    property var curr4: 20

    Row {
        anchors.fill: parent
        anchors.margins: 20
        spacing: 10
        Elevator {
            elevData: ele0
            elevatorId: 1
        }
        Elevator {
            elevData: ele1
            elevatorId: 2
        }
        Elevator {
            elevData: ele2
            elevatorId: 3
        }

        Elevator {
            elevData: ele3
            elevatorId: 4
        }
        Column {
            width: 150
            height: window.height
            anchors.top: parent.top
            anchors.topMargin: 52
            ListView {
                interactive: false
                model: 21
                spacing: 2
                height: parent.height
                width: 100
                delegate: Rectangle {
                    id: rectangle
                    property var i: 20 - index
                    width: 105
                    height: 20
                    Row {
                        anchors.fill: parent
                        spacing: 5
                        Text {
                            width: 20
                            height: 20
                            text: "F" + i
                            font.family: "Arial"
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                        }
                        ElevatorButton {
                            width: 35
                            height: 20
                            text: "🔺"
                            activated: false
                            onClicked: {
                                console.log(i + "上")
                            }
                        }
                        ElevatorButton {
                            height: 20
                            width: 35
                            text: "🔻"
                            activated: false
                            onClicked: {
                                console.log(i + "下")
                            }
                        }
                    }
                }
            }
        }
    }
}
