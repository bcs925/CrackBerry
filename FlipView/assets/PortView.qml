import bb.cascades 1.0

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
            minWidth: 600
            minHeight: 400   
        }
        Container {
            background: Color.Red
            minWidth: 600
            minHeight: 400   
        }
        Container {
            background: Color.Yellow
            minWidth: 600
            minHeight: 400   
        }
        Container {
            background: Color.Green
            minWidth: 600
            minHeight: 400   
        }
        Container {
            background: Color.Cyan
            minWidth: 600
            minHeight: 400   
        }
        Container {
            background: Color.Magenta
            minWidth: 600
            minHeight: 400   
        }
        Container {
            background: Color.DarkRed
            minWidth: 600
            minHeight: 400   
        }
        Container {
            background: Color.DarkCyan
            minWidth: 600
            minHeight: 400   
        }
        Container {
            background: Color.DarkGreen
            minWidth: 600
            minHeight: 400   
        }
    }

}
