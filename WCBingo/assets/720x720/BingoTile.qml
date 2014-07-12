import bb.cascades 1.3

Container {
    property alias tileLabel: tLabel.text
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
            minWidth: 120.0
            minHeight: 100.0
            maxWidth: 120.0
            maxHeight: 100.0
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center
        
        }
        Label {
            id: tLabel
            text: "corner kick"
            multiline: true
            maxWidth: 120.0            
            horizontalAlignment: HorizontalAlignment.Center
            textStyle.textAlign: TextAlign.Center
            verticalAlignment: VerticalAlignment.Center
            textStyle.fontSize: FontSize.XXSmall
            textStyle.color: Color.Black
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
    minWidth: 130.0
    minHeight: 110.0
    maxWidth: 130.0
    maxHeight: 110.0
    verticalAlignment: VerticalAlignment.Center
    horizontalAlignment: HorizontalAlignment.Center

}
