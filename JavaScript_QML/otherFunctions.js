//otherFunctions.js
 
function phrase3() {
  var gennumber = Math.floor((Math.random() * 3) + 1);
  if (gennumber == 1) {
    label1.text = "Button 3, Phrase 1";
  } else if (gennumber == 2) {
    label1.text = "Button 3, Phrase 2";
  } else if (gennumber == 3) {
    label1.text = "Button 3, Phrase 3";
  }
}