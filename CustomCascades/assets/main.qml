import bb.cascades 1.0
NavigationPane {
    id: navPane
    backButtonsVisible: false
    property double initialWindowX
    property double startPosition
    property double finalPosition
    
    Page {
        
        Container {
            layout: DockLayout {
            
            }
            TheTabs {
            
            }
            Container {
                id: contentCont
                //       translationX: 570
                property bool dragHappening: false
                property double dragFactor: 1.25
                background: Color.LightGray
                verticalAlignment: VerticalAlignment.Fill
                horizontalAlignment: HorizontalAlignment.Fill
                layout: DockLayout {
                
                }
                Container {
                    //content
                    ControlDelegate {
                        id: tabDelegate
                        source: "TabOneContent.qml"
                        onError: {
                        
                        }
                    }
                
                }
                Container {
                    background: actionbarpaint.imagePaint
                    
                    horizontalAlignment: HorizontalAlignment.Fill
                    verticalAlignment: VerticalAlignment.Bottom
                    attachedObjects: [
                        ImagePaintDefinition {
                            id: actionbarpaint
                            imageSource: "asset:///images/action_bar.png"
                        }
                    ]
                    layout: DockLayout {
                    
                    }
                    Container {
                        //   background: Color.Magenta
                        minHeight: 125
                        minWidth: 150
                        gestureHandlers: TapHandler {
                            onTapped: {
                                if (contentCont.translationX == 0) {
                                    contentCont.translationX = 570;
                                    startPosition = 570;
                                    finalPosition = 570;
                                    ab_selected_img.visible = false;
                                    ab_bg_img.imageSource = "asset:///images/action_bg2.png"
                                    
                                } else {
                                    contentCont.translationX = 0;
                                    startPosition = 0;
                                    finalPosition = 0;
                                    ab_selected_img.visible = true;
                                    ab_bg_img.imageSource = "asset:///images/action_bg.png"
                                }
                                fadeContainer.opacity = (contentCont.translationX/1000)*0.5;
                            }
                        }
                        layout: DockLayout {
                        
                        }
                        ImageView {
                            id: ab_bg_img
                            imageSource: "asset:///images/action_bg.png"
                        }
                        ImageView {
                            id: ab_selected_img
                            imageSource: "asset:///images/1tab.png"
                            verticalAlignment: VerticalAlignment.Center
                            horizontalAlignment: HorizontalAlignment.Center
                        }
                    
                    }
                }
                Container {
                    id: fadeContainer
                    verticalAlignment: VerticalAlignment.Fill
                    horizontalAlignment: HorizontalAlignment.Fill
                    background: Color.Black
                    opacity: 0
                    overlapTouchPolicy: OverlapTouchPolicy.Allow
                    touchPropagationMode: TouchPropagationMode.PassThrough

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
                        ab_selected_img.visible = false;
                        ab_bg_img.imageSource = "asset:///images/action_bg2.png"
                        // Move the image and record its new position
                        contentCont.translationX += (event.windowX - initialWindowX) * dragFactor
                        fadeContainer.opacity = (contentCont.translationX/1000)*0.5;
                        if (contentCont.translationX <= 0) {
                            dragHappening = false;
                            contentCont.translationX = 0;
                            ab_selected_img.visible = true;
                            ab_bg_img.imageSource = "asset:///images/action_bg.png"
                        }
                        if (contentCont.translationX >= 570) {
                            dragHappening = false;
                            contentCont.translationX = 570;
                            ab_selected_img.visible = false;
                            ab_bg_img.imageSource = "asset:///images/action_bg2.png"
                        }
                        finalPosition = contentCont.translationX;
                        initialWindowX = event.windowX;
                    
                    } else {
                        // Event type is Up or Cancel
                        // Interrupt any ongoing drag gesture
                        dragHappening = false
                        if (finalPosition < 75) {
                            contentCont.translationX = 0;
                            startPosition = 0;
                            finalPosition = 0;
                            initialWindowX = 0;
                            ab_selected_img.visible = true;
                            ab_bg_img.imageSource = "asset:///images/action_bg.png"
                        } else if (finalPosition > 520) {
                            contentCont.translationX = 570;
                            startPosition = 570;
                            finalPosition = 570;
                            initialWindowX = 570;
                            ab_selected_img.visible = false;
                            ab_bg_img.imageSource = "asset:///images/action_bg2.png"
                        } else {
                            if (finalPosition < startPosition) {
                                contentCont.translationX = 0;
                                startPosition = 0;
                                finalPosition = 0;
                                initialWindowX = 0;
                                ab_selected_img.visible = true;
                                ab_bg_img.imageSource = "asset:///images/action_bg.png"
                            } else if (finalPosition > startPosition) {
                                contentCont.translationX = 570;
                                startPosition = 570;
                                finalPosition = 570;
                                initialWindowX = 570;
                                ab_selected_img.visible = false;
                                ab_bg_img.imageSource = "asset:///images/action_bg2.png"
                            }
                        }
                        fadeContainer.opacity = (contentCont.translationX/1000)*0.5;
                    }
                    if (event.isUp()) {
                        if (finalPosition < 50) {
                            contentCont.translationX = 0;
                            startPosition = 0;
                            finalPosition = 0;
                            initialWindowX = 0;
                            ab_selected_img.visible = true;
                            ab_bg_img.imageSource = "asset:///images/action_bg.png"
                        } else if (finalPosition > 520) {
                            contentCont.translationX = 570;
                            startPosition = 570;
                            finalPosition = 570;
                            initialWindowX = 570;
                            ab_selected_img.visible = false;
                            ab_bg_img.imageSource = "asset:///images/action_bg2.png"
                        } else {
                            if (finalPosition < startPosition) {
                                contentCont.translationX = 0;
                                startPosition = 0;
                                finalPosition = 0;
                                initialWindowX = 0;
                                ab_selected_img.visible = true;
                                ab_bg_img.imageSource = "asset:///images/action_bg.png"
                            } else if (finalPosition > startPosition) {
                                contentCont.translationX = 570;
                                startPosition = 570;
                                finalPosition = 570;
                                initialWindowX = 570;
                                ab_selected_img.visible = false;
                                ab_bg_img.imageSource = "asset:///images/action_bg2.png"
                            }
                        }
                        fadeContainer.opacity = (contentCont.translationX/1000)*0.5;
                    }
                
                }
            }
        }
    }
}

