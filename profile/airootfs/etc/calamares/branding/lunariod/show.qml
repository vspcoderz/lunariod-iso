import QtQuick 2.15
import QtQuick.Layouts 1.15

Rectangle {
    id: slideshow
    width: 800
    height: 440
    color: "#0f172a"

    ColumnLayout {
        anchors.centerIn: parent
        spacing: 24

        Image {
            Layout.alignment: Qt.AlignHCenter
            source: "/usr/share/lunariod/logo.png"
            sourceSize.width: 128
            sourceSize.height: 128
            fillMode: Image.PreserveAspectFit
        }

        Text {
            Layout.alignment: Qt.AlignHCenter
            text: "Installing Lunariod Linux…"
            color: "#BAE6FD"
            font.pixelSize: 28
            font.bold: true
        }

        Text {
            Layout.alignment: Qt.AlignHCenter
            text: "Hyprland • Gaming • Coding • Creativity"
            color: "#94a3b8"
            font.pixelSize: 16
        }

        Text {
            Layout.alignment: Qt.AlignHCenter
            text: "This may take 10-30 minutes depending on your hardware."
            color: "#64748b"
            font.pixelSize: 13
        }
    }
}
