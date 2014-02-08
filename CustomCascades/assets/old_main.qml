import bb.cascades 1.0

Page {
    property double initialWindowX
    property double startPosition
    property double finalPosition
    Container {
        layout: DockLayout {
        
        }
        Container {
            background: Color.Blue
            verticalAlignment: VerticalAlignment.Fill
            minWidth: 570.0
            Label {
                text: "Word"
            }
        }
        Container {
            id: contentCont
            translationX: 570
            property bool dragHappening: false
            property double dragFactor: 1.25
            background: Color.Yellow
            verticalAlignment: VerticalAlignment.Fill
            horizontalAlignment: HorizontalAlignment.Fill
            layout: DockLayout {
            
            }
            Container {
                //content
                Button {
                    onClicked: {
                        console.log(startPosition + " + " + finalPosition)
                    }
                }
                Button {
                    onClicked: {
                        console.log(initialWindowX)
                    }
                }
            
            }
            Container {
                background: Color.Green
                minHeight: 150.0
                horizontalAlignment: HorizontalAlignment.Fill
                verticalAlignment: VerticalAlignment.Bottom
                layout: DockLayout {
                
                }
                Container {
                    background: Color.Magenta
                    minHeight: 150
                    minWidth: 150
                    gestureHandlers: TapHandler {
                        onTapped: {
                            if (contentCont.translationX == 0) {
                                contentCont.translationX = 570;
                                startPosition = 570;
                                finalPosition = 570;
                            } else {
                                contentCont.translationX = 0;
                                startPosition = 0;
                                finalPosition = 0;
                            }
                        
                        }
                    }
                
                }
            }
            onTouch: {
                // Determine the location inside the image that was touched,
                // relative to the container, and move it accordingly
                
                if (event.isDown()) {
                    // Start a dragging gesture
                    dragHappening = true
                    startPosition = contentCont.translationX;
                    initialWindowX = event.windowX
                } else if (dragHappening && event.isMove()) {
                    // Move the image and record its new position
                    contentCont.translationX += (event.windowX - initialWindowX) * dragFactor
                    if (contentCont.translationX <= 0) {
                        dragHappening = false;
                        contentCont.translationX = 0
                    }
                    if (contentCont.translationX >= 570) {
                        dragHappening = false;
                        contentCont.translationX = 570
                    }
                    finalPosition = contentCont.translationX;
                    initialWindowX = event.windowX
                
                } else {
                    // Event type is Up or Cancel
                    // Interrupt any ongoing drag gesture
                    dragHappening = false
                    if (finalPosition < 75) {
                        contentCont.translationX = 0;
                        startPosition = 0;
                        finalPosition = 0;
                        initialWindowX = 0;
                    } else if (finalPosition > 520) {
                        contentCont.translationX = 570;
                        startPosition = 570;
                        finalPosition = 570;
                        initialWindowX = 570;
                    } else {
                        if (finalPosition < startPosition) {
                            contentCont.translationX = 0;
                            startPosition = 0;
                            finalPosition = 0;
                            initialWindowX = 0;
                        } else if (finalPosition > startPosition) {
                            contentCont.translationX = 570;
                            startPosition = 570;
                            finalPosition = 570;
                            initialWindowX = 570;
                        }
                    }
                
                }
                if (event.isUp()) {
                    if (finalPosition < 50) {
                        contentCont.translationX = 0;
                        startPosition = 0;
                        finalPosition = 0;
                        initialWindowX = 0;
                    } else if (finalPosition > 520) {
                        contentCont.translationX = 570;
                        startPosition = 570;
                        finalPosition = 570;
                        initialWindowX = 570;
                    } else {
                        if (finalPosition < startPosition) {
                            contentCont.translationX = 0;
                            startPosition = 0;
                            finalPosition = 0;
                            initialWindowX = 0;
                        } else if (finalPosition > startPosition) {
                            contentCont.translationX = 570;
                            startPosition = 570;
                            finalPosition = 570;
                            initialWindowX = 570;
                        }
                    }
                
                }
            
            }
        }
    }
}
