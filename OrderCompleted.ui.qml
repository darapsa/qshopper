import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Flickable {
	property alias orderCompletedLabel: label
	property alias orderCompletedButton: button
	contentHeight: body.height

	FontLoader {
		id: jost
		source: "Jost/Jost-Regular.ttf"
	}

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
				font.family: jost.font.family
				wrapMode: Text.Wrap
				horizontalAlignment: Text.AlignHCenter
				Layout.fillWidth: true
				Layout.bottomMargin: 20
			}

			Label {
				id: label
				text: qsTr("Your order 673290789 has been "
					+ "completed. Your order details are "
					+ "shown for your personal account.")
				font.pixelSize: 16
				font.family: jost.font.family
				wrapMode: Text.Wrap
				horizontalAlignment: Text.AlignHCenter
				Layout.fillWidth: true
				Layout.bottomMargin: 32
			}

			Button {
				id: button
				text: qsTr("View My Orders")
				font.pixelSize: 16
				font.family: jost.font.family
				Layout.alignment: Qt.AlignHCenter
			}
		}
	}
}
