import QtQuick 2.0

Item {
    id:root
    property string text_str:""
    property int start_pos:0
    property int end_pos:0
    property int y_pos: 0
    property int size: 0
    property int index :0

    width: size
    height: size
    y:y_pos

    Text {
        id: text
        anchors.centerIn: parent
        text: text_str
        font.pixelSize: size
        font.bold: true
        color: "green"
        antialiasing: true
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    ParallelAnimation{
        id:p_aimn
        running: true
        NumberAnimation{
            target: root
            properties: "rotation"
            from:0
            to:360
            duration: 150
            loops: 10
        }
        NumberAnimation{
            target: root
            properties: "x"
            from: start_pos
            to:end_pos + index *size
            duration: 1500
            loops: 1
        }
    }
}
