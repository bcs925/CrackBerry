import bb.cascades 1.0
import "otherFunctions.js" as PhraseFunctions
 
Page {
    Container {
        Button {
            text: "Button 1"
            onClicked: {
                var gennumber = Math.floor((Math.random() * 3) + 1);
                if (gennumber == 1) {
                    label1.text = "Button 1, Phrase 1";
                } else if (gennumber == 2) {
                    label1.text = "Button 1, Phrase 2";
                } else if (gennumber == 3) {
                    label1.text = "Button 1, Phrase 3";
                }
            }
        }
        Button {
            text: "Button 2"
            onClicked: {
                phrase2();
            }
        }
        Button {
            text: "Button 3"
            onClicked: {
                PhraseFunctions.phrase3();
            }
        }
        Label {
            id: label1
        }
    }
    function phrase2() {
        var gennumber = Math.floor((Math.random() * 3) + 1);
        if (gennumber == 1) {
            label1.text = "Button 2, Phrase 1";
        } else if (gennumber == 2) {
            label1.text = "Button 2, Phrase 2";
        } else if (gennumber == 3) {
            label1.text = "Button 2, Phrase 3";
        }
    }
}