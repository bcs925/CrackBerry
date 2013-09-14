import bb.cascades 1.0

TabbedPane {
    id: myTabbedPane
    property string saveCheck: "DefaultTab"
    property int myDefaultTab: _app.getValueFor(saveCheck, 1)
    showTabsOnActionBar: true
    
    activeTab: if (myDefaultTab == 1) {
        activeTab = tab1
    } else if (myDefaultTab == 2) {
        activeTab = tab2
    } else if (myDefaultTab == 3) {
        activeTab = tab3
    }
// Add this code back in if you want the tab to change when you pick a new default
//    onMyDefaultTabChanged: {
//        if (myDefaultTab == 1) {
//            activeTab = tab1
//        } else if (myDefaultTab == 2) {
//            activeTab = tab2
//        } else if (myDefaultTab == 3) {
//            activeTab = tab3
//        }
//    }


    //This defines the swipe from the top bezel menu
    Menu.definition: MenuDefinition {
        
        // Specify the actions that should be included in the menu
        actions: [
            ActionItem {
                title: "Settings"
                
                onTriggered: {
                    //open the mySettings sheet defined in the attachedObjects
                    mySettings.open();
                }
            }
        
        ] // end of actions list
    } // end of MenuDefinition
    
    Tab { //First tab
        id: tab1
        // Localized text with the dynamic translation and locale updates support
        title: qsTr("Tab 1") + Retranslate.onLocaleOrLanguageChanged
        Page {
            Container {
                Label {
                    text: qsTr("First tab") + Retranslate.onLocaleOrLanguageChanged
                }
            }
        }
    } //End of first tab
    Tab { //Second tab
        id: tab2
        title: qsTr("Tab 2") + Retranslate.onLocaleOrLanguageChanged
        Page {
            Container {
                Label {
                    text: qsTr("Second tab") + Retranslate.onLocaleOrLanguageChanged
                }
            }
        }
    } //End of second tab
    
    Tab { //Third tab
        id: tab3
        title: qsTr("Tab 3") + Retranslate.onLocaleOrLanguageChanged
        Page {
            Container {
                Label {
                    text: qsTr("Third tab") + Retranslate.onLocaleOrLanguageChanged
                }
            }
        }
    } //End of third tab
    attachedObjects: [
        //Defines the Sheet for the Settings action from the top menu
        Sheet {
            id: mySettings
            Page {
                titleBar: TitleBar {
                    title: "Settings"
                    acceptAction: ActionItem {
                        title: "Exit"
                        onTriggered: {
                            mySettings.close();
                        }
                    
                    }
                
                }
                Container {
                    TextArea {
                        text: "Default tab:"
                        editable: false
                    }
                    DropDown {
                        id: dd1
                        objectName: "dd1"
                        onSelectedIndexChanged: {
                            var dropvalue = dd1.at(dd1.selectedIndex).value;
                            if (dropvalue == 1) {
                                myDefaultTab = 1;
                                dd1.selectedIndex = 0;
                            } else if (dropvalue == 2) {
                                myDefaultTab = 2;
                                dd1.selectedIndex = 1;
                            } else if (dropvalue == 3) {
                                myDefaultTab = 3;
                                dd1.selectedIndex = 2;
                            }
                            _app.saveValueFor(saveCheck, myDefaultTab);
                            _app.saveValueFor(dd1.objectName, dd1.selectedIndex);
                        }
                        selectedIndex: _app.getValueFor(objectName,0)
                        Option {
                            text: "Tab 1"
                            value: 1
                        
                        }
                        Option {
                            text: "Tab 2"
                            value: 2
                        }
                        Option {
                            text: "Tab 3"
                            value: 3
                        }
                    }
                }
            }
        }
    ]
}
