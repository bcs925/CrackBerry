import bb.cascades 1.0

Container {
    verticalAlignment: VerticalAlignment.Fill
    horizontalAlignment: HorizontalAlignment.Fill
    Label {
        text: "Tab 1 STUFF"
        textStyle.fontStyle: FontStyle.Italic
        textStyle.color: Color.Blue
    }
    Button {
        text: "Go to Page 2"
        onClicked: {
            var page = pageDefinition.createObject();
            navPane.push(page);
        }

        attachedObjects: ComponentDefinition {
            id: pageDefinition
            source: "TabOneSecondPage.qml"
        }
        verticalAlignment: VerticalAlignment.Center
        horizontalAlignment: HorizontalAlignment.Center
    }

}
