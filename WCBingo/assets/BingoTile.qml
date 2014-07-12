import bb.cascades 1.3

Container {
    property alias tileLabel: tLabel.text
    property alias tileBg: backgroundTile.imageSource
    layout: DockLayout {
        
    }
    background: Color.Black

    Container {
        layout: DockLayout {
            
        }
        id: innerCont

        verticalAlignment: VerticalAlignment.Center
        horizontalAlignment: HorizontalAlignment.Center
        ImageView {
           id: backgroundTile
           imageSource: "asset:///images/whitebox.png"
           minWidth: 134.0
           minHeight: 134.0
           maxWidth: 134.0
           maxHeight: 134.0
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center

        }
        Label {
            id: tLabel
            text: "advantage kick"
            maxWidth: 132.0
            multiline: true
            horizontalAlignment: HorizontalAlignment.Center
            textStyle.textAlign: TextAlign.Center
            verticalAlignment: VerticalAlignment.Center
            textStyle.fontSize: FontSize.XSmall
        }        
    }
    gestureHandlers: TapHandler {
        onTapped: {
            console.log("tapped")
            if(backgroundTile.imageSource == "asset:///images/whitebox.png"){
                backgroundTile.imageSource = "asset:///images/greenbox.png";
            } else{
                backgroundTile.imageSource = "asset:///images/whitebox.png";
            }
        }
    }
    minWidth: 138.0
    minHeight: 138.0
    maxWidth: 138.0
    maxHeight: 138.0
    verticalAlignment: VerticalAlignment.Center
    horizontalAlignment: HorizontalAlignment.Center

}
