import QtQuick 2.4
import QtQuick.Controls 1.3
import QtQuick.Layouts 1.1

Item {
    width: 640
    height: 480

    GroupBox {
        id: baseCurrencyGroup
        x: 39
        y: 64
        title: qsTr("Base currency:")
        Layout.fillWidth: true
        ColumnLayout {

            ExclusiveGroup {
                id: baseCurrencyRadioGroup
            }

            RadioButton {
                id: plnRadio
                x: 70
                y: 85
                width: 37
                height: 29
                text: qsTr("PLN")
                antialiasing: true
                exclusiveGroup: baseCurrencyRadioGroup
                checked: true
            }

            RadioButton {
                id: euroRadio
                x: 70
                y: 141
                width: 37
                height: 17
                text: qsTr("EUR")
                antialiasing: true
                exclusiveGroup: baseCurrencyRadioGroup
            }

            RadioButton {
                id: usdRadio
                x: 70
                y: 194
                text: qsTr("USD")
                antialiasing: true
                exclusiveGroup: baseCurrencyRadioGroup
            }

            RadioButton {
                id: ckRadio
                x: 70
                y: 194
                text: qsTr("CK")
                antialiasing: true
                exclusiveGroup: baseCurrencyRadioGroup
            }
        }
    }

    ColumnLayout {
        id: currentRateLayout
        spacing: 20
        x: 300
        y: 80
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        RowLayout {
            id: plnRateLayout
            spacing: 20
            Image {
                id: plnFlagImage
                width: 60
                height: 40
                source: "Images/PolishFlag"
            }

            Text {
                id: plnRateText
                text: qsTr("0.00")
                font.pointSize: 15
            }
        }

        RowLayout {
            id: eurRateLayout
            spacing: 20
            Image {
                id: eurFlagImage
                width: 60
                height: 40
                source: "Images/EuroFlag"
            }

            Text {
                id: eurRateText
                text: qsTr("0.00")
                font.pointSize: 15
            }
        }

        RowLayout {
            id: usdRateLayout
            spacing: 20
            Image {
                id: usdFlagImage
                width: 60
                height: 40
                source: "Images/UsaFlag"
            }

            Text {
                id: usdRateText
                text: qsTr("0.00")
                font.pointSize: 15
            }
        }

        RowLayout {
            id: ckRateLayout
            spacing: 20
            Image {
                id: ckFlagImage
                width: 60
                height: 40
                source: "Images/CzechFlag"
            }

            Text {
                id: ckRateText
                text: qsTr("0.00")
                font.pointSize: 15
            }
        }
    }
}
