import bb.cascades 1.0

Container {
    layout: StackLayout {
        orientation: LayoutOrientation.LeftToRight

    }
    ScrollView {
        id: scrollMain1
        
        horizontalAlignment: HorizontalAlignment.Center
        scrollViewProperties.scrollMode: ScrollMode.Vertical
        Container {
            id: scrollContainer1
            layout: StackLayout {
                orientation: orientation.TopToBottom;
            }
            Container {
                background: Color.Blue
                minWidth: 400
                minHeight: 400   
            }
            Container {
                background: Color.Red
                minWidth: 400
                minHeight: 400   
            }
            Container {
                background: Color.Yellow
                minWidth: 400
                minHeight: 400   
            }
            
        }
    
    }
    ScrollView {
        id: scrollMain2
        
        horizontalAlignment: HorizontalAlignment.Center
        scrollViewProperties.scrollMode: ScrollMode.Vertical
        Container {
            id: scrollContainer2
            layout: StackLayout {
                orientation: orientation.TopToBottom;
            }
            
            Container {
                background: Color.Green
                minWidth: 400
                minHeight: 400   
            }
            Container {
                background: Color.Cyan
                minWidth: 400
                minHeight: 400   
            }
            Container {
                background: Color.Magenta
                minWidth: 400
                minHeight: 400   
            }
        }
    
    }
    ScrollView {
        id: scrollMain3
        
        horizontalAlignment: HorizontalAlignment.Center
        scrollViewProperties.scrollMode: ScrollMode.Vertical
        Container {
            id: scrollContainer3
            layout: StackLayout {
                orientation: orientation.TopToBottom;
            }
            
            Container {
                background: Color.DarkRed
                minWidth: 400
                minHeight: 400   
            }
            Container {
                background: Color.DarkCyan
                minWidth: 400
                minHeight: 400   
            }
            Container {
                background: Color.DarkGreen
                minWidth: 400
                minHeight: 400   
            }
        }
    
    }
}
