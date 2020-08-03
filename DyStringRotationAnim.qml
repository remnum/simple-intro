import QtQuick 2.0

Item {
    property string text:""
    property int start_pos:0
    property int end_pos:0
    property int y_pos:0
    property int size:0

    Component.onCompleted: {
        for(var i=0;i<text.length;i++){
            var newObject = Qt.createQmlObject('import QtQuick 2.0;
          CharRotation{index:'+i+';text_str :"'+text[i]+'";start_pos: '+start_pos+';
           end_pos:'+end_pos+';y_pos:'+y_pos+';size: '+size+'}',
                                               main_root,
                                               "dynamicCharRotation"+i);
        }
    }
}
