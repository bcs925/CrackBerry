import bb.cascades 1.0

Container {
    background: myBackground2.imagePaint
    Container {
        
        layout: DockLayout {
        }
        
        preferredWidth: 250.0
        preferredHeight: 250.0
        verticalAlignment: VerticalAlignment.Center
        horizontalAlignment: HorizontalAlignment.Center
        ImageView {
            imageSource: "asset:///images/ClockBg.png"
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
        }
        Label {
            objectName: "TheLabel"
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            text: ""
            textStyle.fontSize: FontSize.XXLarge
            textStyle.fontWeight: FontWeight.Bold
        }
    
    }
    attachedObjects: [
        ImagePaintDefinition {
            id: myBackground2
            imageSource: "asset:///images/simple-checker.amd"
            repeatPattern: RepeatPattern.XY
        }
    ]
}