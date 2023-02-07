import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

ColumnLayout {
	property string orderCompletedText: "673290789"
	property alias orderCompletedButton: button

	ColumnLayout {
		Layout.topMargin: 96
		Layout.leftMargin: 16
		Layout.rightMargin: 16
		Layout.bottomMargin: 96

		Label {
			text: qsTr("Your Order is Completed!")
			font.pixelSize: 30
			Layout.alignment: Qt.AlignHCenter
			Layout.bottomMargin: 20
		}

		Label {
			text: qsTr("Your order ") + orderCompletedText
				+ qsTr(" has been completed. Your order details"
				+ " are shown for your personal account.")
			font.pixelSize: 16
			wrapMode: Text.Wrap
			horizontalAlignment: Text.AlignHCenter
			Layout.fillWidth: true
			Layout.alignment: Qt.AlignHCenter
			Layout.bottomMargin: 32
		}

		Button {
			id: button
			text: qsTr("View My Orders")
			font.pixelSize: 16
			Layout.alignment: Qt.AlignHCenter
		}
	}
}
