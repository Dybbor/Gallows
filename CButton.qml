import QtQuick 2.5
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Button{
    id: btn
     Text {
         anchors.centerIn: parent
         id: text
         font.pixelSize: 14
         text: btn.text
         color:"black"
        }
        width: 25
        height: 20
        enabled: true
        background: Rectangle{
            border.color: "black"
            border.width: 3
            radius: 100
        }
        onClicked: {
            btn.enabled = false
            text.color = "red"
        }
    }

