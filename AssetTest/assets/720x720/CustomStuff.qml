import bb.cascades 1.0

Container {
    layout: DockLayout {

    }
    ImageView {
        imageSource: "asset:///images/Qbg.png"

    }
    Label {
        text: "Game Title!"
        textStyle.fontSize: FontSize.XXLarge
        textStyle.fontWeight: FontWeight.Bold
        horizontalAlignment: HorizontalAlignment.Center
        textStyle.color: Color.White

    }
    ImageView {
        imageSource: "asset:///images/Qcrowd.png"
        verticalAlignment: VerticalAlignment.Bottom

    }
    Label {
        text: "Q10 Optimized!"
        horizontalAlignment: HorizontalAlignment.Center
        verticalAlignment: VerticalAlignment.Bottom
        textStyle.color: Color.White
    }
}