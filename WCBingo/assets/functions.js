function wordSwitch(a) {
	var b;
	switch (a) {
	case 1:
		b = "goal";
		break;
	case 2:
		b = "corner kick";
		break;
	case 3:
		b = "foul";
		break;
	case 4:
		b = "penalty kick";
		break;
	case 5:
		b = "penalty block";
		break;
	case 6:
		b = "penalty goal";
		break;
	case 7:
		b = "slide tackle";
		break;
	case 8:
		b = "yellow card";
		break;
	case 9:
		b = "red card";
		break;
	case 10:
		b = "hand ball";
		break;
	case 11:
		b = "goal in 0'-10'";
		break;
	case 12:
		b = "goal in 11'-20'";
		break;
	case 13:
		b = "goal in 21'-30'";
		break;
	case 14:
		b = "goal in 31'-40'";
		break;
	case 15:
		b = "goal in 41'-50'";
		break;
	case 16:
		b = "goal in 51'-60'";
		break;
	case 17:
		b = "goal in 61-70'";
		break;
	case 18:
		b = "goal in 81'-90'";
		break;
	case 19:
		b = "goal in stoppage time";
		break;
	case 20:
		b = "goal in extra time";
		break;
	case 21:
		b = "header goal";
		break;
	case 22:
		b = "wall block";
		break;
	case 23:
		b = "free kick";
		break;
	case 24:
		b = "free kick goal";
		break;
	case 25:
		b = "throw in";
		break;
	case 26:
		b = "block";
		break;
	case 27:
		b = "hit the post";
		break;
	case 28:
		b = "offsides";
		break;
	case 29:
		b = "extra time";
		break;
	case 30:
		b = "flick on";
		break;
	case 31:
		b = "own goal";
		break;
	case 32:
		b = "ghost goal";
		break;
	case 33:
		b = "advantage foul";
		break;

	}
	return (b);
}
function makeCard() {
	var arr = [];
	while (arr.length < 24) {
		var randomnumber = Math.ceil(Math.random() * 33);
		var found = false;
		for (var i = 0; i < arr.length; i++) {
			if (arr[i] == randomnumber) {
				found = true;
				break;
			}
		}
		if (!found)
			arr[arr.length] = randomnumber;
	}
	tileB1.tileLabel = wordSwitch(arr[0]);
	tileB2.tileLabel = wordSwitch(arr[1]);
	tileB3.tileLabel = wordSwitch(arr[2]);
	tileB4.tileLabel = wordSwitch(arr[3]);
	tileB5.tileLabel = wordSwitch(arr[4]);
	tileI1.tileLabel = wordSwitch(arr[5]);
	tileI2.tileLabel = wordSwitch(arr[6]);
	tileI3.tileLabel = wordSwitch(arr[7]);
	tileI4.tileLabel = wordSwitch(arr[8]);
	tileI5.tileLabel = wordSwitch(arr[9]);
	tileN1.tileLabel = wordSwitch(arr[10]);
	tileN2.tileLabel = wordSwitch(arr[11]);
	tileN4.tileLabel = wordSwitch(arr[12]);
	tileN5.tileLabel = wordSwitch(arr[13]);
	tileG1.tileLabel = wordSwitch(arr[14]);
	tileG2.tileLabel = wordSwitch(arr[15]);
	tileG3.tileLabel = wordSwitch(arr[16]);
	tileG4.tileLabel = wordSwitch(arr[17]);
	tileG5.tileLabel = wordSwitch(arr[18]);
	tileO1.tileLabel = wordSwitch(arr[19]);
	tileO2.tileLabel = wordSwitch(arr[20]);
	tileO3.tileLabel = wordSwitch(arr[21]);
	tileO4.tileLabel = wordSwitch(arr[22]);
	tileO5.tileLabel = wordSwitch(arr[23]);
	console.log(arr);

}

function clearAll(){
	
	tileB1.tileBg = "asset:///images/whitebox.png";
	tileB2.tileBg = "asset:///images/whitebox.png";
	tileB3.tileBg = "asset:///images/whitebox.png";
	tileB4.tileBg = "asset:///images/whitebox.png";
	tileB5.tileBg = "asset:///images/whitebox.png";
	tileI1.tileBg = "asset:///images/whitebox.png";
	tileI2.tileBg = "asset:///images/whitebox.png";
	tileI3.tileBg = "asset:///images/whitebox.png";
	tileI4.tileBg = "asset:///images/whitebox.png";
	tileI5.tileBg = "asset:///images/whitebox.png";
	tileN1.tileBg = "asset:///images/whitebox.png";
	tileN2.tileBg = "asset:///images/whitebox.png";
	tileN3.tileBg = "asset:///images/whitebox.png";
	tileN4.tileBg = "asset:///images/whitebox.png";
	tileN5.tileBg = "asset:///images/whitebox.png";
	tileG1.tileBg = "asset:///images/whitebox.png";
	tileG2.tileBg = "asset:///images/whitebox.png";
	tileG3.tileBg = "asset:///images/whitebox.png";
	tileG4.tileBg = "asset:///images/whitebox.png";
	tileG5.tileBg = "asset:///images/whitebox.png";
	tileO1.tileBg = "asset:///images/whitebox.png";
	tileO2.tileBg = "asset:///images/whitebox.png";
	tileO3.tileBg = "asset:///images/whitebox.png";
	tileO4.tileBg = "asset:///images/whitebox.png";
	tileO5.tileBg = "asset:///images/whitebox.png";

	
}
