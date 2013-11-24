import bb.cascades 1.0

Page {
    Menu.definition: MenuDefinition {
        //Define Actions in the application menu
        actions: [
            ActionItem {
                title: "Help"
                imageSource: "asset:///images/ic_help.png"

                onTriggered: {
                    //Have Help Action do something!
                }
            },
            ActionItem {
                title: "Info"
                imageSource: "asset:///images/ic_info.png"

                onTriggered: {
                    //Have Info Action do something!
                }
            },
            ActionItem {
                title: "Settings"

                onTriggered: {
                    //Have Settings Action do something!
                }
            }
        ] // end of actions list
    } // end of MenuDefinition
    Container {

        layout: DockLayout {

        }
        background: Color.Cyan
        ImageView {
            imageSource: "asset:///images/LP-icon.png"
            contextActions: [
                ActionSet {
                    title: "Context Menu Title"
                    subtitle: "Cool things this can do"
                    ActionItem {
                        title: "Add Awesomeness"
                        imageSource: "asset:///images/ic_add.png"
                        onTriggered: {
                            //Make Add Awesomeness happen
                        }
                    }
                    ActionItem {
                        title: "Special Sauce"
                        onTriggered: {
                        }
                    }
                    ActionItem {
                        title: "Flux Capacitor"
                        imageSource: "asset:///images/ic_reset.png"
                        onTriggered: {
                        }
                    }
                } // end of ActionSet
            ] // end of contextActions list
        }
    }
    actions: [
        ActionItem {
            title: "BBM Action"
            imageSource: "asset:///images/ic_bbm.png"
            ActionBar.placement: ActionBarPlacement.OnBar
            onTriggered: {
                //BBM Actioning
            }

        },
        ActionItem {
            title: "Craziness!"
            onTriggered: {

            }
        }
    ]
}
