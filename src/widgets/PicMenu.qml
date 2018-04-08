import QtQuick 2.9
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "../view_models"

PixMenu
{
    property string picUrl : ""
    property bool isFav : false
    signal favClicked(string url)
    signal removeClicked(string url)
    signal shareClicked(string url)
    signal addClicked(string url)
    signal tagsClicked(string url)

    Column
    {
        MenuItem
        {
            text: qsTr(isFav ? "UnFav it": "Fav it")
            onTriggered:
            {
                favClicked(picUrl)
                close()
            }
        }
        MenuItem
        {
            text: qsTr("Add to...")
            onTriggered:
            {
                addClicked(picUrl)
                close()
            }
        }

        MenuItem
        {
            text: qsTr("Tags...")
            onTriggered:
            {
                tagsClicked(picUrl)
                close()
            }
        }

        MenuItem
        {
            text: qsTr("Share...")
            onTriggered:
            {
                shareClicked(picUrl)
                close()
            }
        }
        MenuItem
        {
            text: qsTr("Remove...")
            onTriggered:
            {
                removeClicked(picUrl)
                close()
            }
        }
    }


    function show(url)
    {
        picUrl = url
        isFav = pix.isFav(picUrl)
        popup()
    }
}
