/*
 * Copyright (c) 2011-2013 BlackBerry Limited.
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

import bb.cascades 1.0

Page {
    property double startPosition
    property double finalPosition
    property bool redOnTop: true
    Container {

        id: mainCont
        //Todo: fill me with QML
        layout: DockLayout {

        }

        Container {
            id: blueCont
            background: Color.Blue
            verticalAlignment: VerticalAlignment.Fill
            horizontalAlignment: HorizontalAlignment.Fill

            Container {
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }
                verticalAlignment: VerticalAlignment.Center
                // Uncomment to get buttons to control pages rather than swipes
                //                Button {
                //                    text: "<"
                //                    onClicked: {
                //                        swapTime.start();
                //                        blueGoBackLeft.play();
                //                        redGoForwardLeft.play()
                //                    }
                //                }
                //                Button {
                //                    text: ">"
                //                    onClicked: {
                //                        swapTime.start();
                //                        blueGoBackRight.play();
                //                        redGoForwardRight.play()
                //                    }
                //                }
            }

            animations: [
                CustomBackRight {
                    id: blueGoBackRight
                },
                CustomForwardRight {
                    id: blueGoForwardRight

                },
                CustomBackLeft {
                    id: blueGoBackLeft
                },
                CustomForwardLeft {
                    id: blueGoForwardLeft
                }
            ]
            scaleX: 0.85
            scaleY: 0.85
            layout: DockLayout {

            }
        }
        Container {
            id: redCont
            background: Color.Red
            verticalAlignment: VerticalAlignment.Fill
            horizontalAlignment: HorizontalAlignment.Fill

            Container {
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }
                verticalAlignment: VerticalAlignment.Center
                // Uncomment to get buttons to control pages rather than swipes
                //                Button {
                //                    text: "<"
                //                    onClicked: {
                //                        swapTime.start();
                //                        redGoBackLeft.play();
                //                        blueGoForwardLeft.play()
                //                    }
                //                }
                //                Button {
                //                    text: ">"
                //                    onClicked: {
                //                        swapTime.start();
                //                        redGoBackRight.play();
                //                        blueGoForwardRight.play()
                //                    }
                //                }
            }
            animations: [
                CustomBackRight {
                    id: redGoBackRight

                },
                CustomForwardRight {
                    id: redGoForwardRight

                },
                CustomBackLeft {
                    id: redGoBackLeft
                },
                CustomForwardLeft {
                    id: redGoForwardLeft
                }
            ]
            layout: DockLayout {

            }
        }
        onTouch: {
            if (redGoBackLeft.isPlaying() || redGoBackRight.isPlaying() || blueGoBackLeft.isPlaying() || blueGoBackRight.isPlaying()) {

            } else {

                if (event.isDown()) {
                    startPosition = event.windowX;

                }
                if (event.isUp()) {
                    finalPosition = event.windowX;
                    var directionSwipe = finalPosition - startPosition;
                    var enoughSwipe = Math.abs(directionSwipe)
                    console.log(finalPosition + ", " + startPosition)

                    //red on top
                    if (redOnTop == true && enoughSwipe > 150) {
                        if (directionSwipe > 0) {
                            console.log("back swipe occured")

                            swapTime.start();
                            redGoBackLeft.play();
                            blueGoForwardLeft.play()

                        } else if (directionSwipe < 0) {
                            console.log("forward swipe occured")

                            swapTime.start();
                            redGoBackRight.play();
                            blueGoForwardRight.play()
                        }

                        redOnTop = false;
                    }
                    //blue on top
 else if (enoughSwipe > 150) {
                        if (directionSwipe > 0) {
                            console.log("back swipe occured")

                            swapTime.start();
                            blueGoBackLeft.play();
                            redGoForwardLeft.play()

                        } else if (directionSwipe < 0) {
                            console.log("forward swipe occured")

                            swapTime.start();
                            blueGoBackRight.play();
                            redGoForwardRight.play()

                        }

                        redOnTop = true;
                    }

                }
            }

        }
    }
    attachedObjects: [
        QTimer {
            id: swapTime
            interval: 400
            onTimeout: {
                mainCont.swap(0, 1)
                swapTime.stop();
            }
        }
    ]
    function swapContainers() {
        mainCont.swap(0, 1)
    }
}
