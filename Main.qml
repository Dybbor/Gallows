import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.2
import custom.logic 1.0

Window {
    id:application
    width: 640
    height: 480
    visible: true
    property var res: ""
    property bool pexecution: false
    property bool phead: false
    property bool pbody: false
    property bool plhand: false
    property bool prhand: false
    property bool plleg: false
    property bool prleg: false
    title: qsTr("Виселица")
    Logic{
        id: logic
        data: logic.data
    }
    StackView {
          id: stack
          initialItem: window
          anchors.fill: parent
      }
    Component{
        id:window
        Column{

                Item{
                    width: 150
                    height: 50
                }
                width: parent.width
                height: parent.width
                spacing: 30
                Label{
                    text: "Виселица"
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 40
                }
                Button{
                    id: start
                    text: "Играть"
                    width: 150
                    height: 50
                    anchors.horizontalCenter: parent.horizontalCenter
                    background: Rectangle{
                        border.color: "black"    // so the borders
                        border.width: 2
                        radius: 100
                    }
                    onClicked: {
                        logic.resetError()
                        logic.chooseWord()
                        resetProperty()
                        stack.push(other_window)
                       }
                }
                Button{
                    id: exit
                    text: "Выход"
                    width: 150
                    height: 50
                    anchors.horizontalCenter: parent.horizontalCenter
                    background: Rectangle{
                        border.color: "black"    // so the borders
                        border.width: 2
                        radius: 100
                    }
                    onClicked: application.close()
                }
    }
    }
    Component{
        id:other_window
        Rectangle{
            id:rect
            anchors.fill: parent
        Rectangle{
            width:parent.width
            height: 250
            color: "lightblue"
            Rectangle{
                id: human
                x:10
                width: 200
                height:200
                color: "light blue"
                Rectangle{
                    id: execution1
                    x:170
                    y:30
                    width: 3
                    height: 190
                    color:"black"
                    visible: pexecution
                    Rectangle{
                        id: execution2
                        x: parent.x-260
                        y: parent.y -30
                        width: 90
                        height: 3
                        color:"black"
                        Rectangle{
                            id: execution3
                            x:parent.x+90
                            y:parent.y
                            width: 3
                            height: 30
                            color:"black"
                        }
                    }
                }
                Rectangle{
                    id: head
                    x:parent.x+40
                    y:parent.y +50
                    width: 60
                    height: 60
                    radius: 100
                    visible: phead
                    border.color: "black"
                    border.width: 3
                    color:"white"
                }
                Rectangle{
                    id: body
                    x:parent.x+70
                    y:parent.y +110
                    width: 3
                    height:80
                    visible: pbody
                    color:"black"
                }
                Rectangle{
                    id: lhand
                    x:parent.x+70
                    y:parent.y +120
                    width: 3
                    height:50
                    visible: plhand
                    color:"black"
                    transform: Rotation{angle:45}
                }
                Rectangle{
                    id: rhand
                    x:parent.x+70
                    y:parent.y +120
                    width: 3
                    height:50
                    visible: prhand
                    color:"black"
                    transform: Rotation{angle:-45}
                }
                Rectangle{
                    id: rleg
                    x:parent.x+70
                    y:parent.y +187
                    width: 3
                    height:50
                    visible: prleg
                    color:"black"
                    transform: Rotation{angle:-45}
                }
                Rectangle{
                    id: lleg
                    x:parent.x+70
                    y:parent.y +187
                    width: 3
                    height:50
                    visible: plleg
                    color:"black"
                    transform: Rotation{angle:45}
                }
            }
            Label{
                id:label
                text:logic.data
                font.pixelSize: 40
                anchors.right: parent.right
                anchors.rightMargin: 100
                anchors.verticalCenter: parent.verticalCenter
            }
        }
        Button{
            id: exit
            text: "Выход"
            width: 75
            height: 30
            anchors.top:parent.top
            anchors.right: parent.right
            anchors.topMargin: 20
            anchors.rightMargin: 20
            background: Rectangle{
                border.color: "black"
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
            width: 600
            height: 100
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 100
            anchors.horizontalCenter: parent.horizontalCenter
            CButton{
                id: btn1
                text:"А"
                onClicked: {
                    checkButton('а')
                }
            }
            CButton{
                text:"Б";
                onClicked: {
                     checkButton('б')
                }
                }
            CButton{
                text:"В"
                onClicked: {
                    checkButton('в')
                }
            }
            CButton{
                text:"Г"
                onClicked: {
                    checkButton('г')
                }
            }
            CButton{
                text:"Д"
                onClicked: {
                    checkButton('д')
                }
            }
            CButton{
                text:"Е"
                onClicked: {
                    checkButton('е')
                }
            }
            CButton{
                text:"Ё"
                onClicked: {
                    checkButton('ё')
                }
            }
            CButton{
                text:"Ж"
                onClicked: {
                    checkButton('ж')
                }
            }
            CButton{
                text:"З"
                onClicked: {
                    checkButton('з')
                }
            }
            CButton{
                text:"И"
                onClicked: {
                    checkButton('и')
                }
            }
            CButton{
                text:"Й"
                onClicked: {
                    checkButton('й')
                }
            }
            CButton{
                text:"К"
                onClicked: {
                    checkButton('к')
                }
            }

            CButton{
                text:"Л"
                onClicked: {
                    checkButton('л')
                }
            }
            CButton{
                text:"М"
                onClicked: {
                    checkButton('м')
                }
            }
            CButton{
                text:"Н"
                onClicked: {
                    checkButton('н')
                }
            }
            CButton{
                text:"О"
                onClicked: {
                    checkButton('о')
                }
            }
            CButton{
                text:"П"
                onClicked: {
                    checkButton('п')
                }
            }
            CButton{
                text:"Р"
                onClicked: {
                    checkButton('р')
                }
            }
            CButton{
                text:"С"
                onClicked: {
                    checkButton('с')
                }
            }
            CButton{
                text:"Т"
                onClicked: {
                    checkButton('т')
                }
            }
            CButton{
                text:"У"
                onClicked: {
                    checkButton('у')
                }
            }
            CButton{
                text:"Ф"
                onClicked: {
                    checkButton('ф')
                }
            }
            CButton{
                text:"Х"
                onClicked: {
                    checkButton('х')
                }
            }
            CButton{
                text:"Ц"
                onClicked: {
                    checkButton('ц')
                }
            }
            CButton{
                text:"Ч"
                onClicked: {
                    checkButton('ч')
                }
            }
            CButton{
                text:"Ш"
                onClicked: {
                    checkButton('ш')
                }
            }
            CButton{
                text:"Щ"
                onClicked: {
                    checkButton('щ')
                }
            }
            CButton{
                text:"Ъ"
                onClicked: {
                   checkButton('ъ')
                }
            }
            CButton{
                text:"Ы"
                onClicked: {
                   checkButton('ы')
                }
            }
            CButton{
                text:"Ь"
                onClicked: {
                    checkButton('ь')
                }
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
                width: btn1.width
                height: btn1.height
            }
            Item{
                width: btn1.width/2
                height: btn1.height/2
            }
            CButton{
                text:"Э"
                onClicked: {
                    checkButton('Э')
                }
            }
            CButton{
                text:"Ю"
                onClicked: {
                    checkButton('ю')
                }
            }
            CButton{
                text:"Я"
                onClicked: {
                    checkButton('я')
                }
            }
        }
    }
  }
    Component{
        id:end_game
        Rectangle{
            anchors.fill:parent;
            color:"lightgreen"
            Column{
                anchors.fill: parent
                spacing: 30
                Item{
                    width: 200
                    height: 50
                }
                Label{
                    id: summary
                    text: res
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 50
                }
                Label{
                    text: "Слово было " + logic.retWord()
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.pixelSize: 35
                }
                Button{
                    width: 200
                    height: 50
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Играть снова"
                    background: Rectangle{
                        border.color: "black"
                        border.width: 3
                        radius: 100
                    }
                    onClicked: {
                        resetProperty()
                        stack.pop();
                        logic.resetError()
                        logic.chooseWord()
                        stack.push(other_window)
                    }
                }
                Button{
                    width: 200
                    height: 50
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Выход"
                    background: Rectangle{
                        border.color: "black"
                        border.width: 3
                        radius: 100
                    }
                    onClicked: application.close()
                }
            }
        }
    }
    function resetProperty(){
        pexecution = false
        pbody= false
        phead = false
        plhand = false
        prhand = false
        plleg = false
        prleg= false
    }
    function checkButton(symbol){

        var check = logic.setChar(symbol)
        if (check == -1){
            res = "Вы проиграли"
            prleg= true
            stack.pop()
             stack.push(end_game)
         }
         else if (check == 1){
            res = "Вы Выиграли"
            stack.pop()
            stack.push(end_game)
        }
        if (check == -6)
            pexecution = true
        if (check == -7)
           phead = true
        if (check == -8)
          pbody = true
        if (check == -9)
           plhand= true
        if (check == -10)
            prhand= true
        if (check == -11)
            plleg= true
    }
}
