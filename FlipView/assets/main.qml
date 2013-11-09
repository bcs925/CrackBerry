import bb.cascades 1.0

Page {
    attachedObjects: [
        OrientationHandler {
            onOrientationAboutToChange: {
                if (orientation == UIOrientation.Landscape) {
                    scrollContainer.layout.orientation = LayoutOrientation.LeftToRight;
                    scrollMain.scrollViewProperties.scrollMode = ScrollMode.Horizontal;
                } else {
                    scrollContainer.layout.orientation = LayoutOrientation.TopToBottom;
                    scrollMain.scrollViewProperties.scrollMode = ScrollMode.Vertical;
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
        ScrollView {
            id: scrollMain
            
            horizontalAlignment: HorizontalAlignment.Center
            scrollViewProperties.scrollMode: ScrollMode.Vertical
            Container {
                id: scrollContainer
                layout: StackLayout {
                    orientation: orientation.TopToBottom;
                }
                Container {
                    background: Color.Blue
                    minWidth: 500
                    minHeight: 500   
                }
                Container {
                    background: Color.Red
                    minWidth: 500
                    minHeight: 500   
                }
                Container {
                    background: Color.Yellow
                    minWidth: 500
                    minHeight: 500   
                }
                Container {
                    background: Color.Green
                    minWidth: 500
                    minHeight: 500   
                }
                Container {
                    background: Color.Cyan
                    minWidth: 500
                    minHeight: 500   
                }
                Container {
                    background: Color.Magenta
                    minWidth: 500
                    minHeight: 500   
                }
            }
        
        }
    }
}
