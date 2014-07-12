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
import "functions.js" as MyFunctions

Page {
    Menu.definition: MenuDefinition {
        actions: [
            ActionItem {
                title: "New Card"
                onTriggered: {
                    MyFunctions.makeCard();
                    MyFunctions.clearAll();
                }
            },
            ActionItem {
                title: "Clear All"
                onTriggered: {
                    MyFunctions.clearAll();
                }
            }
        ]
    }
    Container {
        layout: DockLayout {
        
        }
        Label {
            text: "World Cup BINGO"
            horizontalAlignment: HorizontalAlignment.Center
            textStyle.fontSize: FontSize.Large
        
        }
        Container {
            layout: GridLayout {
                columnCount: 5
            }
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
            Label {
                text: "B"
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.fontSize: FontSize.Large
            
            }
            Label {
                text: "I"
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.fontSize: FontSize.Large
            }
            Label {
                text: "N"
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.fontSize: FontSize.Large
            }
            Label {
                text: "G"
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.fontSize: FontSize.Large
            }
            Label {
                text: "O"
                horizontalAlignment: HorizontalAlignment.Center
                textStyle.fontSize: FontSize.Large
            }
            BingoTile {
                id: tileB1
                tileLabel: ""
            }
            BingoTile {
                id: tileB2
                tileLabel: ""
            }
            BingoTile {
                id: tileB3
                tileLabel: ""
            }
            BingoTile {
                id: tileB4
                tileLabel: ""
            }
            BingoTile {
                id: tileB5
                tileLabel: ""
            }
            BingoTile {
                id: tileI1
                tileLabel: ""
            }
            BingoTile {
                id: tileI2
                tileLabel: ""
            }
            BingoTile {
                id: tileI3
                tileLabel: ""
            }
            BingoTile {
                id: tileI4
                tileLabel: ""
            }
            BingoTile {
                id: tileI5
                tileLabel: ""
            }
            BingoTile {
                id: tileN1
                tileLabel: ""
            }
            BingoTile {
                id: tileN2
                tileLabel: ""
            }
            BingoTile {
                id: tileN3
                tileLabel: "FREE SPACE"
            }
            BingoTile {
                id: tileN4
                tileLabel: ""
            }
            
            BingoTile {
                id: tileN5
                tileLabel: ""
            }
            BingoTile {
                id: tileG1
                tileLabel: ""
            }
            BingoTile {
                id: tileG2
                tileLabel: ""
            }
            BingoTile {
                id: tileG3
                tileLabel: ""
            }
            BingoTile {
                id: tileG4
                tileLabel: ""
            }
            BingoTile {
                id: tileG5
                tileLabel: ""
            }
            BingoTile {
                id: tileO1
                tileLabel: ""
            }
            BingoTile {
                id: tileO2
                tileLabel: ""
            }
            BingoTile {
                id: tileO3
                tileLabel: ""
            }
            BingoTile {
                id: tileO4
                tileLabel: ""
            }
            BingoTile {
                id: tileO5
                tileLabel: ""
            }
        
        }
    
    }
    onCreationCompleted: {
        MyFunctions.makeCard();
    }
}
