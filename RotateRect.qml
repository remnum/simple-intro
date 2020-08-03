import QtQuick 2.0

Item {
    id:root
    property int start_pos:0
    property int end_pos:0
    property int size: 0

    width: size
    height: size
    x:getRandomInt(1200)

    function getRandomInt(max) {
        return Math.floor(Math.random() * Math.floor(max));
    }

    Rectangle{
        anchors.fill: parent
        color: Qt.rgba(getRandomInt(128)/128,getRandomInt(128)/128,getRandomInt(128)/128,1)
    }
    ParallelAnimation{
        id:p_aimn
        running: true
        NumberAnimation{
            target: root
            properties: "rotation"
            from:0
            to:360
            duration: 500
            loops: Animation.Infinite
        }
        NumberAnimation{
            target: root
            properties: "y"
            from: getRandomInt(900)
            to:getRandomInt(500)
            duration: 3000
            loops: Animation.Infinite
        }
    }
}
