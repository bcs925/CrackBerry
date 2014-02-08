import bb.cascades 1.0

Page {
    Container {
        layout: DockLayout {

        }
        Container {
            background: Color.LightGray
            verticalAlignment: VerticalAlignment.Fill
            horizontalAlignment: HorizontalAlignment.Fill
            layout: DockLayout {

            }
            Container {
                verticalAlignment: VerticalAlignment.Center
                horizontalAlignment: HorizontalAlignment.Center
                //content
                Label {
                    text: "Hello From Tab 1 Page 2"
                    textStyle.fontSize: FontSize.Large
                    textStyle.fontWeight: FontWeight.Bold
                    textStyle.color: Color.Black
                }
            }
            Container {
                background: actionbarpaint.imagePaint

                horizontalAlignment: HorizontalAlignment.Fill
                verticalAlignment: VerticalAlignment.Bottom
                attachedObjects: [
                    ImagePaintDefinition {
                        id: actionbarpaint
                        imageSource: "asset:///images/nav_action_bar.png"
                    }
                ]
                layout: DockLayout {

                }
                Container {
                    minHeight: 125
                    minWidth: 150
                    gestureHandlers: TapHandler {
                        onTapped: {
                            navPane.pop();

                        }
                    }

                }
                Container {
                    minHeight: 125
                    minWidth: 150
                    ImageView {
                        imageSource: "asset:///images/share.png"
                        horizontalAlignment: HorizontalAlignment.Center
                        verticalAlignment: VerticalAlignment.Center
                    }
                    gestureHandlers: TapHandler {
                        onTapped: {
                        
                        }
                    }
                    horizontalAlignment: HorizontalAlignment.Center
                    layout: DockLayout {

                    }

                }
            }

        }
    }

}
