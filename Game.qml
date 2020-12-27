import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.2
import custom.logic 1.0

Window {
    id:game
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    signal signalExit
    Rectangle{
        width:580
        height: 200
        color: "lightblue"
    }
    Button{
        id: choose_word_btn
        text: "Выбор слова"
        width: 120
        height: 20
        anchors.top:exit.bottom
        anchors.right: parent.right
        background: Rectangle{
            border.color: "black"    // so the borders
            border.width: 2
            radius: 100
        }
        onClicked: {
            logic.chooseWord()
            label.text = logic.data
        }
    }
    Logic{
        id: logic
        data: logic.data
    }
    Label{
        id:label
        text:logic.data
    }
    Button{
        id: exit
        text: "Выход"
        width: 75
        height: 20
        anchors.top:parent.top
        anchors.right: parent.right
        background: Rectangle{
            border.color: "black"    // so the borders
            border.width: 2
            radius: 100
        }
        onClicked: {
          stack.pop()
        }
    }
    GridLayout{
        columns:10
        rows:3
        width: 500
        height: 100
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 100
        anchors.horizontalCenter: parent.horizontalCenter
        CButton{
            text:"А"
            onClicked: {
                label.text = "asfd"
            }
        }
        CButton{
            text:"Б";
            onClicked: {
                label.text="clic23k"
                logic.setChar('а')
            }
            }
        CButton{
            text:"В"
            onClicked: label.text="click4562"
        }
        CButton{text:"Г"; onClicked: label.text="click2"}
        CButton{text:"Д"}
        CButton{text:"Е"}
        CButton{text:"Ё"}
        CButton{text:"Ж"}
        CButton{text:"З"}
        CButton{text:"И"}
        CButton{text:"Й"}
        CButton{text:"К"}
        CButton{text:"Л"}
        CButton{text:"М"}
        CButton{text:"Н"}
        CButton{text:"О"}
        CButton{text:"П"}
        CButton{text:"Р"}
        CButton{text:"С"}
        CButton{text:"Т"}
        CButton{text:"У"}
        CButton{text:"Ф"}
        CButton{text:"Х"}
        CButton{text:"Ц"}
        CButton{text:"Ч"}
        CButton{text:"Ш"}
        CButton{text:"Щ"}
        CButton{text:"Ъ"}
        CButton{text:"Ы"}
        CButton{text:"Ь"}
        Item{
            width: btn1.width
            height: btn1.height
        }
        Item{
            width: btn1.width
            height: btn1.height
        }
        Item{
            width: btn1.width
            height: btn1.height
        }
        Item{
            width: btn1.width/2
            height: btn1.height/2
        }
        CButton{text:"Э"}
        CButton{text:"Ю"}
        CButton{text:"Я"}
    }

}
