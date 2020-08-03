import QtQuick 2.15
import QtQuick.Window 2.15
import QtGraphicalEffects 1.15


Window {
    id:main_root
    visible: true

    signal finished()

    onFinished:{
        header.visible = true
        header_anim.start()
    }

    function getRandomInt(max) {
        return Math.floor(Math.random() * Math.floor(max));
    }


    Timer{
        interval: 500;running: true;repeat: true
        onTriggered: {
            for(var i=0;i<50;i++){
                var newObject = Qt.createQmlObject('import QtQuick 2.0;
              RotateRect{size: 3}',main_root,"dynamicRects"+i);
                newObject.destroy(getRandomInt(3000));
            }
        }
    }

    DyStringRotationAnim{
        text: "REMNUM"
         start_pos:0
         end_pos:650
         y_pos:560
         size:100
    }

    DyStringDropAnim{
        text: "ELECTRONICS"
         start_pos:0
         end_pos:660
         x_pos:660
         size:50

    }

    Image {
        id: logo
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.bottom:  parent.bottom
        anchors.bottomMargin: 140
        source: "images/logo.svg"
        sourceSize.width:130
        sourceSize.height:200

        NumberAnimation on opacity {
            from : 0.0
            to : 1.0
            duration: 4000
            running: true
            loops: 1
        }
    }


    Text {
        id: header
        visible:false
        text: qsTr("How To Create C++ \nQML Components Plugin")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 200
        color: "gray"
        font.pixelSize: 60
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        NumberAnimation on opacity {
            id:header_anim
            from:0.0
            to:1.0
            duration: 2000
            running: false
        }
    }


    Text {
        id: intro
        text: qsTr("Intro Animation\nDesigned By QML")
        anchors.left : parent.left
        anchors.bottom: parent.bottom
        anchors.margins: 20
        color: "green"
        font.pixelSize: 20
    }

    Component.onCompleted:{
        showFullScreen()
    }
}
