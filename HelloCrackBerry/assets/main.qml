// Default empty project template
import bb.cascades 1.0

// creates one page with a label
Page {
    Container {
        background: myBackground.imagePaint
        attachedObjects: [
            ImagePaintDefinition {
                id: myBackground
                imageSource: "asset:///images/bg720.png"
            }

        ]
        layout: DockLayout {}
        Container{
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center
            ImageView {
                imageSource: "asset:///images/logo-icon.png"
                verticalAlignment: VerticalAlignment.Center
                horizontalAlignment: HorizontalAlignment.Center

            }
            Label {
                text: qsTr("Hello CrackBerry")
                textStyle.base: SystemDefaults.TextStyles.BigText
                verticalAlignment: VerticalAlignment.Center
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.fontWeight: FontWeight.Bold
            }
        }
        
    }
}

