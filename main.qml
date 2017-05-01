import QtQuick 2.0
import QtQuick 2.2
import QtQuick 2.6

import QtQuick.Controls 1.1
import QtQuick.Controls.Styles 1.2
import QtQuick.Window 2.2
import QtWebView 1.1
import QtQuick.Layouts 1.1

ApplicationWindow {
    id:rootWindow
    visible: true
    width:Screen.width/2
    height:Screen.height/2

    title: qsTr("QWapp")

    toolBar:ToolBar{
        id:topToolbar
        RowLayout{
            ToolButton {
                id: quiBtton
                tooltip: qsTr("Quit")
                text: qsTr("Quit")
                Layout.preferredWidth: navigationBar.height
                onClicked: {
                    Qt.quit()
                }
            }
        }
    }

    WebView{
        id:whatsAppView
        anchors.fill: parent
        url:'https://web.whatsapp.com'
        onLoadingChanged: {
        }

    }
}
