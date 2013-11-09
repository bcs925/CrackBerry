import bb.cascades 1.0

Page {
    attachedObjects: [
        OrientationHandler {
            onOrientationAboutToChange: {
                if (orientation == UIOrientation.Landscape) {
                    myDelegate.source = "LandView.qml"
                } else {
                    myDelegate.source = "PortView.qml"
                }
            }
        }
    ]
    Container {
        //Todo: fill me with QML
        Label{
            text: "AWESOME TITLE!"
            textStyle.fontSize: FontSize.XLarge
            textStyle.fontWeight: FontWeight.W100
        }
        ControlDelegate {
            id: myDelegate
            source: "PortView.qml"
            horizontalAlignment: HorizontalAlignment.Center
        
        }
    }
}
