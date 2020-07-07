import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.1
import Qt.labs.folderlistmodel 2.0
import QtQml.Models 2.1
import QtQuick.XmlListModel 2.0

Window {
    id: root
    visible: true
    width: 500
    height: 360
    minimumWidth: minToolBar.implicitWidth
    title: "Hello"
    ToolBar{
        id: minToolBar

        RowLayout{
          //  width:parent.height
        ToolButton{
            text: "Click on"
            onClicked: root.color = "blue"
             }
        ToolButton{
            text: "Click on"
            onClicked: root.color = "pink"
             }
        ToolButton{
 //           anchors.centerIn: parent
            text: "Click on"
            onClicked: root.color = "yellow"
             }
        Slider{
            Layout.fillWidth: true
            value: 25
            }
        TextField{

        }
       }
    }
   GroupBox{
        title: "Groupbox"
        anchors.centerIn: parent
        ColumnLayout{
            RadioButton{
                text: "Button1"
            }
            RadioButton{
                text: "Button2"
            }
            RadioButton{
                text: "Button3"

            }
        }
    }

 XmlListModel{
     id:flickerModel
     source:"https://www.pexels.com/search/birds"
     query: "/rss/channel/item"
     XmlRole{name:"title";query:"title/string()" }
     XmlRole{name:"link";query:"link/string()" }
     XmlRole{name:"description";query:"description/string()" }
 }
}


