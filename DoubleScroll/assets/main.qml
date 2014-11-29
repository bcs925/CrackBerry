/*
 * Copyright (c) 2011-2014 BlackBerry Limited.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import bb.cascades 1.3
import bb.brianfunctions 1.0

Page {
   property bool singleTap: false 

attachedObjects: [
    QTimer {
        id: tapTimer
        interval: 250
        onTimeout: {
            singleTap = false;
            tapTimer.stop();
        }
    },
    QTimer{
        id: initialTimer
        interval: 150
        onTimeout: {
            list1.requestFocus();
            leftHighlight.visible = true;
            initialTimer.stop();
        } 
    }
]
    Container {
        id: main1
        layout: DockLayout {
            
        }
        onCreationCompleted: {
            initialTimer.start();
        }
        eventHandlers: [
            TouchKeyboardHandler {
                onTouch: {

                    console.log("TouchKeyboard: " + event.touchType)
                    console.log("Finger ID: " + event.fingerId)
               if(singleTap == false){
                   singleTap = true;
                   tapTimer.start();
               }
               else if(singleTap == true){
                   if(list1.focused == true){
                       list2.requestFocus();
                       rightHighlight.visible = true;
                       leftHighlight.visible = false;
                   } else{
                       list1.requestFocus();
                       rightHighlight.visible = false;
                       leftHighlight.visible = true;
                   }
               }
                }
            }
        ]

        Container {

            layout: StackLayout {
                orientation: LayoutOrientation.LeftToRight
            }
            ListView {
                id: list1
       //         scrollRole: ScrollRole.Main
                dataModel: XmlDataModel {
                    source: "phones.xml"
                }
                listItemComponents: [
                    
                    ListItemComponent {
                        type: "item"
                        Container {
                            
                            Label {
                                text: ListItemData.title
                                textStyle.fontSizeValue: 10.0
                                textStyle {
                                    base: SystemDefaults.TextStyles.BodyText
                                    //   size: 40
                                    fontWeight: FontWeight.Bold
                                    color: Color.Black
                                }
                            }
                            Label {
                                text: ListItemData.description
                                textStyle.fontSizeValue: 5.0
                                textStyle {
                                    
                                    color: Color.Black
                                }
                            }
                            Divider {
                            }
                        }
                    
                    }
                ]
                onSelectionChanged: {
                }
                onTouch: {
                    list1.requestFocus();
                    leftHighlight.visible = true;
                    rightHighlight.visible = false;
                }
            }
            ListView {
                id: list2
                dataModel: XmlDataModel {
                    source: "phones.xml"
                }
                listItemComponents: [
                    
                    ListItemComponent {
                        type: "item"
                        Container {
                            
                            Label {
                                text: ListItemData.title
                                textStyle.fontSizeValue: 10.0
                                textStyle {
                                    base: SystemDefaults.TextStyles.BodyText
                                    fontWeight: FontWeight.Bold
                                    color: Color.Black
                                }
                            }
                            Label {
                                text: ListItemData.description
                                textStyle.fontSizeValue: 5.0
                                textStyle {
                                    
                                    color: Color.Black
                                }
                            }
                            Divider {
                            }
                        }
                    
                    }
                ]
                onSelectionChanged: {
                }
                onTouch: {
                    list2.requestFocus();
                    leftHighlight.visible = false;
                    rightHighlight.visible = true;
                }
            }
        }
        Container {
            id: leftHighlight
            preferredWidth: 720
            preferredHeight: 4
            background: Color.Blue
            visible: false
        }
        Container {
            id: rightHighlight
            preferredWidth: 720
            preferredHeight: 4
            background: Color.Blue
            horizontalAlignment: HorizontalAlignment.Right
            visible: false
        }
    }
}
