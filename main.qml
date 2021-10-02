//import QtQuick 2.9
//import QtQuick.Window 2.12
//import QtQuick.Controls 2.5
//import QtQuick.Layouts 1.3
//import QtQuick.Controls.Material 2.3
//Window {
//    id: window
//    width: 640
//    height: 480
//    visible: true
//    title: qsTr("Hello World")
//    Label{
//            id: labelInRect
//            //text: qsTr(label)
//            font.pointSize: 10
//            color: "gray"
//            //width: parent.width*0.3
//            anchors.leftMargin: 50
//            text: "hi"
//            //height: 20
//        }
//    //CustomInputData { width: 200 ; height: 50 ;label: "Test" }



////    Column{
////        anchors.fill: parent
////        CustomInputData { width: 200 ; height: 50 ;label: "Test" }

////    }
//}



import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3
import com.example 1.0

ApplicationWindow {
    visible: true
    title: "Basic layouts"
    property int margin: 200
    width: mainLayout.implicitWidth + 2 * margin
    height: mainLayout.implicitHeight + 2 * margin
    minimumWidth: mainLayout.Layout.minimumWidth + 2 * margin
    minimumHeight: mainLayout.Layout.minimumHeight + 2 * margin
    function openDialog(){
        print('open dialog')
        dialog.visible = true
    }
    ColumnLayout {
        id: mainLayout
        anchors.fill: parent
        anchors.margins: margin

        CustomInputData{title: " Configuration Name:"}

        GroupBox {
            id: configBox
            title: "ABI"
            Layout.fillWidth: true

            RowLayout{
                id: layout
                anchors.fill: parent
                spacing: 6

                ComboBox{
                    model: ['32Bit','64Bit']
                }

                ComboBox{
                    model: ['LittileEndian','BigEndian']
                }
            }
        }

        GroupBox {

            id: stackBox
            title: "Structures"
            implicitWidth: 200
            implicitHeight: 60
            Layout.fillWidth: true
            Layout.fillHeight: true

            Button{
                id: addButton
                width: 30
                background: Image {
                    id: namex
                    source: "images/addButton.png"
                }
                onClicked: openDialog()
            }
            StackLayout {
                id: stackLayout
                anchors.fill: parent



            }
        }


    }
    Dialog {
        id: dialog
        title: "Title"
        standardButtons: Dialog.Save | Dialog.Cancel
        visible: false
        width: 1200
        height: 1200
        onAccepted: console.log("Ok clicked")
        onRejected: console.log("Cancel clicked")

        ColumnLayout{
            spacing: 20
            CustomInputData{ title: " Struct Name:"}

            GroupBox {
                title: "Parmeters"

                RowLayout {
                    id: rowLayout
                    anchors.fill: parent
                    GroupBox {
                        Layout.fillWidth: true
                        title: "Name"
                        TextField {
                            placeholderText: "filed name"
                            Layout.fillWidth: true
                        }
                    }
                    GroupBox {
                        Layout.fillWidth: true
                        title: "type"
                        ComboBox{
                            model: ['BYTE_8','BYTE_16','BYTE_32','BYTE_64']
                        }
                    }

                    CustomInputData{ title: "Bias"}

                    CustomInputData{ title:"Scale"}
                    GroupBox {
                        Layout.fillWidth: true
                        title: "Is Array"
                        CheckBox {
                            checked: true
                            text: qsTr("IS Array")
                            onCheckedChanged: arrayvis.visible = !arrayvis.visible

                        }
                    }
                    CustomInputData{id:arrayvis; title:"Size of array";}


                }

            }

        }


    }
}
