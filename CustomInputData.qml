import QtQuick 2.9
import QtQuick.Layouts 1.3
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

GroupBox {
    id: rowBox
    Layout.fillWidth: true

    RowLayout {
        id: rowLayout
        anchors.fill: parent
        TextField {
            placeholderText: "Please insert data"
            Layout.fillWidth: true
        }
    }
}


//Item {
//    id: upperItem
//    property alias label: labelInRect.text
//    //property alias text: textlInRect.text
//    Label{
//        id: labelInRect
//        text: qsTr(label)
//        font.pointSize: 10
//        color: "gray"
//        width: upperItem.width*0.3
//        anchors.leftMargin: 50
//        height: 20
//    }
//    Rectangle{
//        id: textContainer
//        border.width: 1
//        radius: 5
//        border.color: "black"
//        anchors.top: labelInRect.bottom
//        width: upperItem.width*0.5
//        height: upperItem.height*0.5
//        color: "lightsteelblue"
//        anchors.topMargin: 20
//        anchors.leftMargin: 200


//        TextInput{
//            anchors.fill: parent
//            id: textlInRect
//            leftPadding: 10
//            topPadding: 2
//            text:  qsTr(parent.anchors.leftMargin.toString())
//        }

//    }


