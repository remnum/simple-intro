import QtQuick 2.0

Item {
    property string text_str:""
    property int start_pos:0
    property int end_pos:0
    property int x_pos: 0
    property int size: 0
    property int index :0

    signal finished(var index)

    width: size
    height: size
    x:x_pos + index *size

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
    NumberAnimation on y{
        easing.type: Easing.OutBounce
        from: start_pos
        to:end_pos
        duration: 1000
        loops: 1
        running: true
        onStopped:
            finished(index)
    }
}
