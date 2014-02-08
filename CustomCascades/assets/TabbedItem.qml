import bb.cascades 1.0

Container {
    property alias tabTitle: theTitle.text
    property alias tabImage: theBG.imageSource
    property alias tabIcon: theIcon.imageSource
    layout: DockLayout {
    
    }
    ImageView {
        id: theBG
    }
    ImageView {
        id: theIcon
        verticalAlignment: VerticalAlignment.Center
        translationX: 30.0
    }
    Label {
        id: theTitle
        text: ""
        verticalAlignment: VerticalAlignment.Center
        translationX: 200.0
        textStyle.fontSize: FontSize.Large
        textStyle.color: Color.White
    }
}
