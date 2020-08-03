import QtQuick 2.0

Item {
    property string text:""
    property int start_pos:0
    property int end_pos:0
    property int x_pos:0
    property int size:0

    Timer{
        property int current_index : 0
        interval: 200; running: true; repeat: true
          onTriggered: {
            var newObject = Qt.createQmlObject('import QtQuick 2.0;
            CharDrop{index:'+current_index+';text_str :"'+text[current_index]+'";start_pos: '+start_pos+';
             end_pos:'+end_pos+';x_pos:'+x_pos+';size: '+size+';onFinished:{if(index == '+(text.length-1)+')main_root.finished();} }',
                                                 main_root,
                                                 "dynamicCharDrop"+current_index);
              current_index++
              if(current_index >= text.length)
                  running = false
          }
    }
}
