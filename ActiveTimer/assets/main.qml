import bb.cascades 1.0

Page {
    property int myTime: Number(timeLabel.text);
    property int resetTime: 0
    titleBar: TitleBar {
        title: "Active Frame Timer"
    
    }
    Container {
        background: myBackground1.imagePaint
        layout: DockLayout {
        
        }
        
        
        Container {
            verticalAlignment: VerticalAlignment.Center
            horizontalAlignment: HorizontalAlignment.Center
            bottomPadding: 10.0
            Label {
                id: timeLabel
                text: "0"
                textStyle.fontWeight: FontWeight.Bold
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Bottom
                textStyle.fontSize: FontSize.PointValue
                textStyle.fontSizeValue: 40
            
            } 
            Container {
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }
                horizontalAlignment: HorizontalAlignment.Center
                Button {
                    text: "<<"
                    onClicked: {
                        myTime = myTime - 10;
                        timeLabel.text = myTime;
                        
                    }
                }
                Button {
                    text: "<"
                    onClicked: {
                        myTime = myTime - 1;
                        timeLabel.text = myTime;
                    }
                }
                Button {
                    text: ">"
                    onClicked: {
                        myTime = myTime + 1;
                        timeLabel.text = myTime;
                    }
                }
                Button {
                    text: ">>"
                    onClicked: {
                        myTime = myTime + 10;
                        timeLabel.text = myTime;
                    }
                }
            }
            Container {
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }
                horizontalAlignment: HorizontalAlignment.Center
                Button {
                    id: startButton
                    text: "Start"
                    onClicked: {
                        if (startButton.text == "Start") {
                            if(myTime != 0){
                                resetTime = timeLabel.text;
                                countDown.start();
                                startButton.text = "Stop";
                                resetButton.enabled = false;    
                            }
                            
                        } else {
                            countDown.stop();
                            startButton.text = "Start";
                            resetButton.enabled = true;
                        }
                    
                    }
                    layoutProperties: StackLayoutProperties {
                        spaceQuota: 1.0
                    
                    }
                }
                Button {
                    id: resetButton
                    text: "Reset"
                    onClicked: {
                        timeLabel.text = resetTime;
                        myTime = resetTime;
                    }
                    layoutProperties: StackLayoutProperties {
                        spaceQuota: 1.0
                    
                    }
                }
            }
        
        }
    
    }
    attachedObjects: [
        ImagePaintDefinition {
            id: myBackground1
            imageSource: "asset:///images/simple-checker.amd"
            repeatPattern: RepeatPattern.XY
        },
        QTimer {
            id: countDown
            interval: 1000
            onTimeout: {
                myTime -= 1;
                timeLabel.text = myTime;
                if (myTime == 0) {
                    countDown.stop();
                    resetButton.enabled = true;
                    startButton.text = "Start";
                }
                activeFrame.update(timeLabel.text);
            }
        }
    ]
    onCreationCompleted: {
        Application.thumbnail.connect(onThumbnail)
    }
    
    function onThumbnail() {
        activeFrame.update(timeLabel.text);
    }
}