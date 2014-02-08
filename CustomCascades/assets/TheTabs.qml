import bb.cascades 1.0

Container {
    background: tabpaint.imagePaint
    verticalAlignment: VerticalAlignment.Fill
    minWidth: 570.0
    attachedObjects: [
        ImagePaintDefinition {
            id: tabpaint
            imageSource: "asset:///images/tab_bg.png"
        }
    ]
    Container {
        layout: DockLayout {
        
        }
        ImageView {
            imageSource: "asset:///images/tab_title.png"
        }
        Label {
            text: "APP NAME!"
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center
            textStyle.color: Color.White
            textStyle.fontSize: FontSize.XXLarge
        }
    }
    ScrollView {
        scrollViewProperties.scrollMode: ScrollMode.Vertical
        Container {
            
            TabbedItem {
                id: tab1
                tabTitle: "Item 1" 
                tabImage: "asset:///images/selected_tab.png"
                tabIcon: "asset:///images/1tab.png"
                gestureHandlers: TapHandler {
                    onTapped: {
                        tab1.tabImage = "asset:///images/selected_tab.png"
                        tab2.tabImage = "asset:///images/unselected_tab.png"
                        tab3.tabImage = "asset:///images/unselected_tab.png"
                        tab4.tabImage = "asset:///images/unselected_tab.png"
                        ab_selected_img.imageSource = "asset:///images/1tab.png"
                        ab_selected_img.visible = true;
                        ab_bg_img.imageSource = "asset:///images/action_bg.png"
                        tabDelegate.source = "TabOneContent.qml"
                        contentCont.translationX = 0;
                        startPosition = 0;
                        finalPosition = 0;
                        fadeContainer.opacity = (contentCont.translationX/1000)*0.5;
                    }
                }
            }
            
            TabbedItem {
                id: tab2
                tabTitle: "Item 2" 
                tabImage: "asset:///images/unselected_tab.png"
                tabIcon: "asset:///images/2tab.png"
                gestureHandlers: TapHandler {
                    onTapped: {
                        tab1.tabImage = "asset:///images/unselected_tab.png"
                        tab2.tabImage = "asset:///images/selected_tab.png"
                        tab3.tabImage = "asset:///images/unselected_tab.png"
                        tab4.tabImage = "asset:///images/unselected_tab.png"
                        ab_selected_img.imageSource = "asset:///images/2tab.png"
                        ab_selected_img.visible = true;
                        ab_bg_img.imageSource = "asset:///images/action_bg.png"
                        tabDelegate.source = "TabTwoContent.qml"
                        contentCont.translationX = 0;
                        startPosition = 0;
                        finalPosition = 0;
                        fadeContainer.opacity = (contentCont.translationX/1000)*0.5;
                    }
                }
            
            }
            TabbedItem {
                id: tab3
                tabTitle: "Item 3" 
                tabImage: "asset:///images/unselected_tab.png"
                tabIcon: "asset:///images/3tab.png"
                gestureHandlers: TapHandler {
                    onTapped: {
                        tab1.tabImage = "asset:///images/unselected_tab.png"
                        tab2.tabImage = "asset:///images/unselected_tab.png"
                        tab3.tabImage = "asset:///images/selected_tab.png"
                        tab4.tabImage = "asset:///images/unselected_tab.png"
                        ab_selected_img.imageSource = "asset:///images/3tab.png"
                        ab_selected_img.visible = true;
                        ab_bg_img.imageSource = "asset:///images/action_bg.png"
                        tabDelegate.source = "TabThreeContent.qml"
                        contentCont.translationX = 0;
                        startPosition = 0;
                        finalPosition = 0;
                        fadeContainer.opacity = (contentCont.translationX/1000)*0.5;
                    }
                }
            }
            TabbedItem {
                id: tab4
                tabTitle: "Item 4" 
                tabImage: "asset:///images/unselected_tab.png"
                tabIcon: "asset:///images/4tab.png"
                gestureHandlers: TapHandler {
                    onTapped: {
                        tab1.tabImage = "asset:///images/unselected_tab.png"
                        tab2.tabImage = "asset:///images/unselected_tab.png"
                        tab3.tabImage = "asset:///images/unselected_tab.png"
                        tab4.tabImage = "asset:///images/selected_tab.png"
                        ab_selected_img.imageSource = "asset:///images/4tab.png"
                        ab_selected_img.visible = true;
                        ab_bg_img.imageSource = "asset:///images/action_bg.png"
                        tabDelegate.source = "TabFourContent.qml"
                        contentCont.translationX = 0;
                        startPosition = 0;
                        finalPosition = 0;
                        fadeContainer.opacity = (contentCont.translationX/1000)*0.5;
                    }
                }
            }
        }
    }

}
