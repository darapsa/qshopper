import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Flickable {
	property alias orderCompletedText: text
	property alias orderCompletedButton: button
	contentHeight: body.height

	ColumnLayout {
		id: body
		anchors {
			top: parent.top
			left: parent.left
			right: parent.right
		}

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
				id: text
				text: qsTr("Your order 673290789 has been "
					+ "completed. Your order details are "
					+ "shown for your personal account.")
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
}
