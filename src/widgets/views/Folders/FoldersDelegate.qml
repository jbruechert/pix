import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import "../../../view_models"
import org.kde.kirigami 2.2 as Kirigami

ItemDelegate
{
    property int folderSize : 32

    height: folderSize*2
    width: folderSize*2

    background: Rectangle
    {
        color: "transparent"
    }

    ColumnLayout
    {
        anchors.fill: parent

        Kirigami.Icon
        {
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignCenter

            source: "folder"

            height: folderSize

        }

        Label
        {
             text: folder
             width: parent.width
             Layout.fillWidth: true
             horizontalAlignment: Qt.AlignHCenter
             elide: Qt.ElideRight
        }
    }


}
